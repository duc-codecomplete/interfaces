#include "AFI.h"
#include "AUI\\AUIDef.h"
#include "AUI\\AUISubDialog.h"
#include "AUI\\AUIStillImageButton.h"
#include "AUI\\AUIListBox.h"
#include "AUI\\AUICTranslate.h"
#include "AUI\\A3DFTFont.h"
#include "DlgLandWarWorldMapLueDuo.h"
#include "AUI\\AUILabel.h"
#include "EC_BattleDungeon.h"
#include "EC_GameUIMisc.h"
#include "EC_Configs.h"
#include "EC_World.h"
#include "EC_Game.h"
#include "EC_GameRun.h"
#include "EC_Instance.h"
#include "EC_GameUIMan.h"
#include "EC_HostPlayer.h"
#include "EC_TeamMan.h"
#include "EC_Team.h"
#include "EC_Model.h"
#include "EC_AutoMove.h"
#include "EC_Faction.h"
#include "EC_Global.h"
#include "EC_IvtrItem.h"
#include "EC_GameSession.h"
#include "EC_ManNpc.h"
#include "EC_NPCServer.h"
#include "EC_Inventory.h"
#include "A2DSprite.h"
#include "A3DDevice.h"
#include "globaldataman.h"
#include "ClosedArea.h"
#include "A3DFlatCollector.h"
#include "ids.hxx"
#include "DlgLandWarHint.h"
#include "DlgLandWarDeclare.h"
#include "DlgLandWarDetail.h"
#include "DlgLandWarMercenary.h"
#include "DlgLandWarProduce.h"
#include "territorymapget_re.hpp"
#include "DlgLandWarLueDuo.h"

#define new A_DEBUG_NEW

AUI_BEGIN_COMMAND_MAP(CDlgLandWarWorldMapLueDuo, CDlgBase)

AUI_ON_COMMAND("IDCANCEL",				OnCommand_Cancel)
AUI_ON_COMMAND("Btn_Close",				OnCommand_Cancel)


AUI_END_COMMAND_MAP()

AUI_BEGIN_EVENT_MAP(CDlgLandWarWorldMapLueDuo, CDlgBase)

AUI_ON_EVENT("Img_WorldMap",	WM_LBUTTONDOWN,	OnEventLButtonUp)

AUI_END_EVENT_MAP()

void CDlgLandWarWorldMapLueDuo::OnCommand_Cancel(const char * szCommand)
{
	Show(false);
}

CDlgLandWarWorldMapLueDuo::CDlgLandWarWorldMapLueDuo()
{
	for (int i=0; i<SI_NUM; i++)
	{
		m_pA2DSpriteIcon[i] = NULL;
	}
}

CDlgLandWarWorldMapLueDuo::~CDlgLandWarWorldMapLueDuo()
{
	for (int i=0; i<SI_NUM; i++)
	{
		A3DRELEASE(m_pA2DSpriteIcon[i]);
	}
}

bool CDlgLandWarWorldMapLueDuo::OnInitDialog()
{
	m_pImg_WorldMap = (PAUIIMAGEPICTURE)GetDlgItem("Img_WorldMap");
	m_vecAreaInfo.clear();
	m_nHoverAreaIndex = -1;
	int i,j;

	char* path[] = {"worldmaps\\Worldmap_Terri.dds",
					"icon\\Terri_Declare.tga",
					};
	for (i=0; i<SI_NUM; i++)
	{
		if( !m_pA2DSpriteIcon[i] )
		{
			m_pA2DSpriteIcon[i] = new A2DSprite;
			if( !m_pA2DSpriteIcon[i] ) return AUI_ReportError(__LINE__, __FILE__);

			bool bval = m_pA2DSpriteIcon[i]->Init(m_pA3DDevice, path[i], 0);
			if( !bval ) return AUI_ReportError(__LINE__, __FILE__);
		}
	}

	m_bHintImageAdd = false;

	m_iStatus = 0;
	m_nScale = 1;
	m_dwFlashTime = 0;
	ChangeSize();

	return true;
}

bool CDlgLandWarWorldMapLueDuo::OnReleaseDialog()
{
	int i;
	for (i=0; i<SI_NUM; i++)
	{
		A3DRELEASE(m_pA2DSpriteIcon[i]);
	}

	return true;
}

void CDlgLandWarWorldMapLueDuo::OnShowDialog()
{
	if (!m_bHintImageAdd)
	{
		int nItem;
		GetGameUIMan()->AddImageListItem(GetGameUIMan()->GetSpriteIcon(CECGameUIMan::ICONS_INVENTORY, NULL, &nItem), m_nHintImageIndex);
		m_bHintImageAdd = true;
	}

	GetGameSession()->territory_get_map(1);

	SetScale(1.0f/GetGameUIMan()->GetCustomUIScale());
	m_nScale = 1;
	ChangeSize();
}

A3DPOINT2 CDlgLandWarWorldMapLueDuo::ScreenToPixel(A3DPOINT2 pt)
{
	A3DPOINT2 ptCenter = m_pImg_WorldMap->GetRect().CenterPoint();
	A3DRECT rc = m_pImg_WorldMap->GetRect();
	pt.x = 1024 / 2 + (pt.x - ptCenter.x) * 1024 / rc.Width();
	pt.y = 768 / 2 + (pt.y - ptCenter.y) * 768 / rc.Height();
	return pt;
}

A3DPOINT2 CDlgLandWarWorldMapLueDuo::PixelToScreen(A3DPOINT2 pt)
{
	A3DPOINT2 ptCenter = m_pImg_WorldMap->GetRect().CenterPoint();
	A3DRECT rc = m_pImg_WorldMap->GetRect();
	pt.x = (pt.x/m_nScale - 1024 / 2) * rc.Width() / 1024 + ptCenter.x;
	pt.y = (pt.y/m_nScale - 768 / 2) * rc.Height() / 768 + ptCenter.y;
	return pt;
}

void CDlgLandWarWorldMapLueDuo::Resize(A3DRECT rcOld, A3DRECT rcNew)
{
	CDlgBase::Resize(rcOld, rcNew);
	float fWindowScale = GetGameUIMan()->GetWindowScale();
	fWindowScale = fWindowScale/GetGameUIMan()->GetCustomUIScale();

	if(m_pA2DSpriteIcon[0])
	{
		for (int i=0; i<SI_NUM; i++)
		{
			m_pA2DSpriteIcon[i]->SetScaleX(fWindowScale);
			m_pA2DSpriteIcon[i]->SetScaleY(fWindowScale);
		}

		m_pA2DSpriteIcon[SI_MAP]->SetScaleX(fWindowScale/m_nScale);
		m_pA2DSpriteIcon[SI_MAP]->SetScaleY(fWindowScale/m_nScale);
	}

	m_nX = int(m_nX*rcNew.Width()/rcOld.Width());
	m_nY = int(m_nY*rcNew.Width()/rcOld.Width());
}

void CDlgLandWarWorldMapLueDuo::OnEventMouseMove(WPARAM wParam, LPARAM lParam, AUIObject * pObj)
{
	A3DVIEWPORTPARAM *p = m_pA3DEngine->GetActiveViewport()->GetParam();
	A3DPOINT2 pt;
	pt.x = GET_X_LPARAM(lParam) - p->X;
	pt.y = GET_Y_LPARAM(lParam) - p->Y;
	
	pt.x -= m_nX;
	pt.y -= m_nY;
	pt = ScreenToPixel(pt);
	abase::vector<DOMAIN_INFO_LANDWAR> * info = globaldata_getdomaininfos_landwar();
	DWORD i, j;
	POINT_FLOAT pf;
	pf.x = (float)pt.x;
	pf.y = (float)pt.y;
	m_nHoverAreaIndex = -1;
	CClosedArea cArea;
	GetGameUIMan()->SetObjHint(NULL);

	m_pImg_WorldMap->SetHint(_AL(""));
	for(i = 0; i < m_vecAreaInfo.size(); i++)
	{
		if( m_vecAreaInfo[i].rc.PtInRect(pt.x, pt.y) )
		{
			cArea.Clear();
			for(j = 0; j < (*info)[i].verts.size(); j++)
			{
				POINT_FLOAT temp;
				temp.x = (float)(*info)[i].verts[j].x/m_nScale;
				temp.y = (float)(*info)[i].verts[j].y/m_nScale;
				cArea.AddPoint(temp);
			}
			cArea.AreaFinish();
			if( cArea.IsInArea(pf) )
			{
				m_nHoverAreaIndex = i;
				break;
			}
		}
	}
}

void CDlgLandWarWorldMapLueDuo::OnEventLButtonUp(WPARAM wParam, LPARAM lParam, AUIObject * pObj)
{
	if(m_nHoverAreaIndex != -1)
	{
		A3DVIEWPORTPARAM *p = m_pA3DEngine->GetActiveViewport()->GetParam();
		int x = GET_X_LPARAM(lParam) - p->X;
		int y = GET_Y_LPARAM(lParam) - p->Y;
		vector<DOMAIN_INFO_LANDWAR> * domainInfo = globaldata_getdomaininfos_landwar();
		DOMAIN_INFO_LANDWAR & di = (*domainInfo)[m_nHoverAreaIndex];
		AreaInfoMap & info = m_vecAreaInfo[m_nHoverAreaIndex];
		if (info.bCanLuoDuo)
		{
			CDlgLandWarLueDuo * pDlg = (CDlgLandWarLueDuo*)GetGameUIMan()->GetDialog("Win_Landwar_Lueduo");
			if(pDlg)
			{
				pDlg->SetPosEx(x, y);
				pDlg->SetData(m_nHoverAreaIndex);
				pDlg->SetLueDuo(info.bCanLuoDuo);
				pDlg->Show(true);
			}			
		}
	}
}

#define DRAWSPRITE(pSprite) \
{ pSprite->DrawToBack(ptCenter.x+m_nX*(RenderDetail()? 1 : 0)-(int)(13*fWindowScale), ptCenter.y+m_nY*(RenderDetail()? 1 : 0)-(int)(8*fWindowScale)); \
	bDraw = true; }
bool CDlgLandWarWorldMapLueDuo::Render()
{
	//地图
	float fWindowScale = GetGameUIMan()->GetWindowScale();
	A3DPOINT2 pt = PixelToScreen(A3DPOINT2(0, 0));
	m_pA2DSpriteIcon[SI_MAP]->DrawToBack(pt.x+m_nX, pt.y+m_nY);
	//地图标示 帮派图标-已宣战区域-自己帮派战斗地图-神器  能宣战-所有战斗-箭头
	vector<DOMAIN_INFO_LANDWAR> * info = globaldata_getdomaininfos_landwar();
	UINT i, j, k;
	bool bFlash = false;
	bool bDraw = false;
	int idFaction = GetHostPlayer()->GetFactionID();
	for(i = 0; i < m_vecAreaInfo.size(); i++)
	{
		bFlash = false;

		DOMAIN_INFO_LANDWAR & di = (*info)[i];
		A3DPOINT2 ptCenter = PixelToScreen(di.center);
		if (m_vecAreaInfo[i].bCanLuoDuo)
		{
			bFlash = true;
			DRAWSPRITE(m_pA2DSpriteIcon[SI_FIGHT]);
		}

		if(bFlash)
		{
			if(m_dwFlashTime > 1000)
				RenderArea(i, A3DCOLORRGBA(255, 255, 255, 100));				// Flash
		}
	}

	return CDlgBase::Render();
}

void CDlgLandWarWorldMapLueDuo::RenderArea(int nIndex, A3DCOLOR cl)
{
	if (cl == 0)
	{
		return;
	}
	vector<DOMAIN_INFO_LANDWAR> * info = globaldata_getdomaininfos_landwar();
	DWORD i;
	A3DFlatCollector *pFC = GetGame()->GetA3DEngine()->GetA3DFlatCollector();
	A3DVECTOR3 *verts = new A3DVECTOR3[(*info)[nIndex].verts.size()];
	WORD *indices = new WORD[(*info)[nIndex].faces.size()];
	A3DVIEWPORTPARAM *p = m_pA3DEngine->GetActiveViewport()->GetParam();
	for(i = 0; i < (*info)[nIndex].verts.size(); i++ )
	{
		A3DPOINT2 pt = PixelToScreen((*info)[nIndex].verts[i]);
		verts[i].x = (float)pt.x + p->X + m_nX;
		verts[i].y = (float)pt.y + p->Y + m_nY;
		verts[i].z = 0.0f;
	}
	for(i = 0; i < (*info)[nIndex].faces.size(); i++ )
		indices[i] = (*info)[nIndex].faces[i];

	A3DCULLTYPE oldtype = m_pA3DDevice->GetFaceCull();
	m_pA3DDevice->SetFaceCull(A3DCULL_NONE);
	pFC->AddRenderData_2D(verts, (*info)[nIndex].verts.size(), 
		indices, (*info)[nIndex].faces.size(), cl);
	pFC->Flush_2D();
	m_pA3DDevice->SetFaceCull(oldtype);
	delete indices;
	delete verts;
}

void CDlgLandWarWorldMapLueDuo::OnTick()
{
	m_dwFlashTime += GetGame()->GetTickTime();
	if (m_dwFlashTime > 2000)
	{
		m_dwFlashTime = 0;
	}
}

extern DWORD dwLandWarGetAward;
extern DWORD dwLandWarGetAward2;

void CDlgLandWarWorldMapLueDuo::UpdateMapInfo(void * p)
{
	if(!p)
		return;

	using namespace GNET;
	std::vector<GTRobInfo> * pRobInfo = (std::vector<GTRobInfo> *)p;
	DWORD i, j;
	int colorIndex = 0;
	
	m_vecAreaInfo.clear();
	vector<DOMAIN_INFO_LANDWAR> *info = globaldata_getdomaininfos_landwar();
	for(i = 0; i < info->size(); i++ )
	{		
		DOMAIN_INFO_LANDWAR di = (*info)[i];
		A3DRECT rect;
		rect.SetRect(9999, 9999, 0, 0);
		for(j = 0; j < (*info)[i].verts.size(); j++)
		{
			
			if( di.verts[j].x < rect.left )
				rect.left = di.verts[j].x;
			else if( di.verts[j].x > rect.right )
				rect.right = di.verts[j].x;
			if( di.verts[j].y < rect.top )
				rect.top = di.verts[j].y;
			else if( di.verts[j].y > rect.bottom )
				rect.bottom = di.verts[j].y;
		}
		rect.left/=m_nScale;
		rect.right/=m_nScale;
		rect.top/=m_nScale;
		rect.bottom/=m_nScale;
		AreaInfoMap aInfo;
		aInfo.rc = rect;
		aInfo.nColorIndex = di.color;
		aInfo.bCanLuoDuo = false;
		for (j = 0;j< pRobInfo->size();j++)
		{
			/*int territory_id;
			int fight_time;
			int reserved1;
			int reserved2;*/
			GTRobInfo & robInfo = (*pRobInfo)[i];
			if(di.id == robInfo.territory_id)
			{
				aInfo.bCanLuoDuo = true;
				break;
			}
		}
		aInfo.nIndex = di.id - 1;
		m_vecAreaInfo.push_back(aInfo);
	}
}


bool CDlgLandWarWorldMapLueDuo::IsLueDuo(int terriID)
{
	int s = m_vecAreaInfo.size();
	for (int i = 0;i< s;i++)
	{
		AreaInfoMap & node = m_vecAreaInfo[i];
		if(node.nIndex + 1 == terriID)
			return node.bCanLuoDuo;
	}

	return false;
}

void CDlgLandWarWorldMapLueDuo::ChangeSize() 
{
	float fWindowScale = GetGameUIMan()->GetWindowScale();
	if (m_nScale==1)
		m_nScale = 2;
	else
		m_nScale = 1;

	fWindowScale = fWindowScale/GetGameUIMan()->GetCustomUIScale();

	m_pA2DSpriteIcon[SI_MAP]->SetScaleX(fWindowScale/m_nScale);
	m_pA2DSpriteIcon[SI_MAP]->SetScaleY(fWindowScale/m_nScale);
	m_nX = 0;
	m_nY = 0;
	m_bDrag = false;
	m_nStartX = -1;
	m_nStartY = -1;
	UpdateMapInfo(NULL);
}
