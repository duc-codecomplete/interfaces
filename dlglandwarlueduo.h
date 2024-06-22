
#pragma once

#include "DlgBase.h"
#include "AUI\\AUILabel.h"
#include "AUI\\AUIImagePicture.h"
class AUILabel;

class CDlgLandWarLueDuo : public CDlgBase  
{
	AUI_DECLARE_COMMAND_MAP()

public:
	CDlgLandWarLueDuo();
	virtual ~CDlgLandWarLueDuo();

	void OnCommand_Cancel(const char * szCommand);
	void OnCommand_LuoDuo(const char * szCommand);
	void UpdateUI();
	void SetLueDuo(bool bLueDuo)
	{
		m_bLueDuo = bLueDuo;
	}

protected:
	virtual bool OnInitDialog();
	virtual void OnTick();
	virtual void OnShowDialog();	

	PAUILABEL m_pLabName,m_pLabLvl,m_pLabGuild;
	PAUISTILLIMAGEBUTTON m_pBtn;
	bool m_bLueDuo;
};
