
#pragma once

#include "DlgBase.h"
#include "AUI\\AUILabel.h"
#include "AUI\\AUIImagePicture.h"
class AUILabel;

class CDlgLandWarLueDuoScore : public CDlgBase  
{
	AUI_DECLARE_COMMAND_MAP()

public:
	CDlgLandWarLueDuoScore();
	virtual ~CDlgLandWarLueDuoScore();

	void OnCommand_Cancel(const char * szCommand);
	void OnCommand_LuoDuo(const char * szCommand);
	void UpdateUI(void * p);

	int GetScoreType(int score);
protected:
	virtual bool OnInitDialog();
	virtual void OnTick();
	virtual void OnShowDialog();	

	PAUILABEL m_pLab[4];
	PAUIPROGRESS m_pPrg;
	PAUIIMAGEPICTURE m_pGfx[3];
	PAUIIMAGEPICTURE m_pItem[3];
};
