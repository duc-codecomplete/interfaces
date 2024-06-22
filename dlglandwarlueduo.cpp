#include "DlgLandWarLueDuo.h"
#include "AUI\\AUILabel.h"
#include "EC_GameUIMan.h"
#include "EC_BattleDungeon.h"
#include "EC_Game.h"
#include "EC_GameUIMisc.h"
#include "vector.h"
#include "globaldataman.h"
#include "EC_Faction.h"
#include "EC_IvtrItem.h"
#include "DlgLandWarMoney.h"
#include "DlgLandWarHint.h"
#include "DlgLandWarProduce.h"
#include "AFI.h"
#include "EC_SendC2SCmds.h"
#include "EC_HostPlayer.h"
#include "EC_GameSession.h"
#include "EC_GameRun.h"

#define new A_DEBUG_NEW

AUI_BEGIN_COMMAND_MAP(CDlgLandWarLueDuo, CDlgBase)

AUI_ON_COMMAND("IDCANCEL",				OnCommand_Cancel)
AUI_ON_COMMAND("Btn_Close",				OnCommand_Cancel)
AUI_ON_COMMAND("Btn_Declare",			OnCommand_LuoDuo)

AUI_END_COMMAND_MAP()


void CDlgLandWarLueDuo::OnCommand_Cancel(const char * szCommand)
{
	Show(false);
}


void CDlgLandWarLueDuo::OnCommand_LuoDuo(const char * szCommand)
{
	int nBagNum = GetHostPlayer()->GetPack()->GetItemTotalNum(66646);
	if(nBagNum <= 0)
	{
		GetGameUIMan()->MessageBox(28035);
		return;
	}

	vector<DOMAIN_INFO_LANDWAR> * domainInfo = globaldata_getdomaininfos_landwar();
	UINT index = GetData();
	DOMAIN_INFO_LANDWAR & di = (*domainInfo)[index];

	int type = 1;
	if(di.owner_zoneid == GetGameSession()->GetZoneID())
		type = 2;

	ACString strText;
	if(type == 1)
		strText.Format(GetGameUIMan()->GetStringFromTable(28036),di.name);
	else
		strText.Format(GetGameUIMan()->GetStringFromTable(28037),di.name);

	PAUIDIALOG pDlg;
	GetGameUIMan()->MessageBox("Game_LandWarLueDuoEnter", strText, MB_YESNO, A3DCOLORRGBA(255,255,255,166), &pDlg);
	pDlg->SetData(di.id);
	pDlg->SetDataPtr((void*)type);

	Show(false);
}

CDlgLandWarLueDuo::CDlgLandWarLueDuo()
{

}

CDlgLandWarLueDuo::~CDlgLandWarLueDuo()
{

}

bool CDlgLandWarLueDuo::OnInitDialog()
{
	m_pLabName = (PAUILABEL)GetDlgItem("Txt_Name");
	m_pLabLvl = (PAUILABEL)GetDlgItem("Txt_Lv");
	m_pLabGuild = (PAUILABEL)GetDlgItem("Txt_Guild");
	m_pBtn = (PAUISTILLIMAGEBUTTON)GetDlgItem("Btn_Declare");

	return true;
}

void CDlgLandWarLueDuo::OnShowDialog()
{
	UpdateUI();
}

void CDlgLandWarLueDuo::OnTick()
{
	
}

void CDlgLandWarLueDuo::UpdateUI()
{
	vector<DOMAIN_INFO_LANDWAR> * domainInfo = globaldata_getdomaininfos_landwar();
	UINT nSize = (*domainInfo).size();
	UINT index = GetData();
	DOMAIN_INFO_LANDWAR & di = (*domainInfo)[index];

	ACString str;

	m_pLabName->SetText(di.name);
	m_pLabLvl->SetText(GetGameUIMan()->GetStringFromTable(28007+di.type));


	if (di.id_owner > 0)
	{
		CECGame::SERVERINFO* pServerInfo = GetGame()->GetSrcServerInfo(di.owner_zoneid);
		if(pServerInfo)
			str = AS2AC(pServerInfo->szServerName);
		else
			str = GetStringFromTable(780);	
	}
	else
		str = GetStringFromTable(780);		

	m_pLabGuild->SetText(str);	

	m_pBtn->Show(m_bLueDuo);
}