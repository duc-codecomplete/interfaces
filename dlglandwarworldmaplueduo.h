
#pragma once

#include "DlgBase.h"
#include "AUI\\AUILabel.h"
#include "AUI\\AUIImagePicture.h"
class AUILabel;

class CDlgLandWarWorldMapLueDuo : public CDlgBase  
{
	AUI_DECLARE_COMMAND_MAP()
	AUI_DECLARE_EVENT_MAP()

public:
	CDlgLandWarWorldMapLueDuo();
	virtual ~CDlgLandWarWorldMapLueDuo();

	enum SpriteIcon
	{
		SI_MAP				= 0,
		SI_FIGHT			= 1,
		SI_NUM				= 2,
	};

	struct AreaInfoMap
	{
		int		nIndex;
		A3DRECT rc;
		int		nColorIndex;
		bool	bCanLuoDuo;
	};

	enum
	{
		CtlNum = 3,
	};

	void OnCommand_Cancel(const char * szCommand);
	void OnCommand_Detail(const char * szCommand);
	void OnCommand_Produce(const char * szCommand);

	void OnEventLButtonUp(WPARAM wParam, LPARAM lParam, AUIObject * pObj);
	void OnEventMouseMove(WPARAM wParam, LPARAM lParam, AUIObject * pObj);

	void UpdateMapInfo(void * p);
	void ChangeSize();
	bool RenderDetail() { return m_nScale==1; }
	int	GetStatus() { return m_iStatus; }

	A2DSprite * GetIcon()
	{
		return m_pImageMapIcon;
	}

	bool IsLueDuo(int terriID);
protected:
	virtual bool OnInitDialog();
	virtual bool OnReleaseDialog();
	virtual void OnShowDialog();
	virtual void OnTick();
	virtual bool Render();

	void RenderArea(int nIndex, A3DCOLOR cl);
	A3DPOINT2 ScreenToPixel(A3DPOINT2 pt);
	A3DPOINT2 PixelToScreen(A3DPOINT2 pt);
	virtual void Resize(A3DRECT rcOld, A3DRECT rcNew);

	abase::vector<AreaInfoMap>	m_vecAreaInfo;
	PAUIIMAGEPICTURE		m_pImg_WorldMap;
	int						m_iStatus;
	int						m_nHoverAreaIndex;

	A2DSprite*				m_pA2DSpriteIcon[SI_NUM];
	A2DSprite*				m_pImageMapIcon;
	int						m_nImageMapIconIndex;
	int						m_nHintImageIndex;
	bool					m_bHintImageAdd;
	ACString				m_strItemDesc;

	int					m_nX;
	int					m_nY;
	int					m_nScale;
	bool				m_bDrag;
	int					m_nStartX;
	int					m_nStartY;
	DWORD				m_dwFlashTime;
};
