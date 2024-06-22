#include "DlgLandWarLueDuoScore.h"
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
#include "EC_GPDataType.h"

#define new A_DEBUG_NEW

AUI_BEGIN_COMMAND_MAP(CDlgLandWarLueDuoScore, CDlgBase)

//AUI_ON_COMMAND("IDCANCEL",				OnCommand_Cancel)
AUI_ON_COMMAND("Btn_Close",				OnCommand_Cancel)


AUI_END_COMMAND_MAP()


void CDlgLandWarLueDuoScore::OnCommand_Cancel(const char * szCommand)
{
	Show(false);
}


CDlgLandWarLueDuoScore::CDlgLandWarLueDuoScore()
{

}

CDlgLandWarLueDuoScore::~CDlgLandWarLueDuoScore()
{

}

bool CDlgLandWarLueDuoScore::OnInitDialog()
{
	m_pLab[0] = (PAUILABEL)GetDlgItem("Txt_GuildAkill");
	m_pLab[1] = (PAUILABEL)GetDlgItem("Txt_GuildBkill");
	m_pLab[2] = (PAUILABEL)GetDlgItem("Txt_GuildC");
	m_pLab[3] = (PAUILABEL)GetDlgItem("Txt_score");
	m_pPrg = (PAUIPROGRESS)GetDlgItem("Progress_bar");

	m_pGfx[0] = (PAUIIMAGEPICTURE)GetDlgItem("Img_Gfx01");
	m_pGfx[1] = (PAUIIMAGEPICTURE)GetDlgItem("Img_Gfx02");
	m_pGfx[2] = (PAUIIMAGEPICTURE)GetDlgItem("Img_Gfx03");

	m_pItem[0] = (PAUIIMAGEPICTURE)GetDlgItem("Img_Box01");
	m_pItem[1] = (PAUIIMAGEPICTURE)GetDlgItem("Img_Box02");
	m_pItem[2] = (PAUIIMAGEPICTURE)GetDlgItem("Img_Box03");

	UpdateUI(NULL);
	return true;
}

int CDlgLandWarLueDuoScore::GetScoreType(int score)
{
	if(score < 200)
		return 0;
	else if(score >= 200 && score < 600)
		return 1;
	else if(score >= 600 && score < 800)
		return 2;
	else
		return 3;
}

void CDlgLandWarLueDuoScore::OnShowDialog()
{
	
}

void CDlgLandWarLueDuoScore::OnTick()
{
	
}

void CDlgLandWarLueDuoScore::UpdateUI(void * p)
{
	using namespace S2C;
	rob_raid_info * pInfo = (rob_raid_info*)p;
	ACString str;
	if(pInfo)
	{
		str.Format(_AL("%d/%d"),pInfo->boss_num,1);
		m_pLab[0]->SetText(str);

		str.Format(_AL("%d/%d"),pInfo->monster_num,100);
		m_pLab[1]->SetText(str);

		str.Format(_AL("%d/%d"),pInfo->mine_num,100);
		m_pLab[2]->SetText(str);

		str.Format(_AL("%d/%d"),pInfo->score,1000);
		m_pLab[3]->SetText(str);

		m_pPrg->SetProgress(AUIPROGRESS_MAX * pInfo->score/1000);

		int type = GetScoreType(pInfo->score);
		for(int i = 0;i< 3;i++)
		{
			if(type - 1 == i)
			{
				m_pGfx[i]->Show(true);
				m_pItem[i]->Show(true);
			}
			else
			{
				m_pGfx[i]->Show(false);
				m_pItem[i]->Show(false);
			}
		}
	}
	else
	{
		str.Format(_AL("%d/%d"),1,1);
		m_pLab[0]->SetText(str);

		str.Format(_AL("%d/%d"),100,100);
		m_pLab[1]->SetText(str);

		str.Format(_AL("%d/%d"),100,100);
		m_pLab[2]->SetText(str);

		str.Format(_AL("%d/%d"),0,1000);
		m_pLab[3]->SetText(str);

		m_pPrg->SetProgress(0);
		for(int i = 0;i< 3;i++)
		{
			m_pGfx[i]->Show(false);
			m_pItem[i]->Show(false);
		}
	}
}