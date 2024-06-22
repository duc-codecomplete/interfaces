local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local SecretarySystemRemind = SecretarySystemRemind

local datamember = 
{
	this = "Win_SecretaryDetail",
	m_curEvent = 0,
	m_curMsgIndex = 0,
	
}


Win_SecretaryDetail= DlgTemplate:new(datamember)


function Win_SecretaryDetail:Init()
    
--    self:RegisterEvent("CmdHelp",self.OnCmdHelp);
--    self:RegisterEvent("CmdSearch",self.OnCmdSearch);
--    self:RegisterEvent("CmdMemo", self.OnCmdMemo);
    self:RegisterEvent("CmdToMain", self.OnCmdToMain);
	
	
--	self:RegisterEvent(LEVT_FIRST_ENTER_GAME, self.OnFirstEnterGame); 
--	self:RegisterEvent(LEVT_PLAYER_IS_MOVING, self.OnIsMoving);
--	self:RegisterEvent(LEVT_PLAYER_IS_JUMPING, self.OnIsJumping);
--	self:RegisterEvent(LEVT_PLAYER_ADJUST_ORIENT, self.OnIsAdjustOrient);
--	self:RegisterEvent(LEVT_PLAYER_ADJUST_DISTANCE, self.OnIsAdjustDistance);
--	self.RegisterEvent(LEVT_PLAYER_LEVEL_UP, self.OnLevelUp);

    self.RegisterEvent(	LEVT_FIRST_ENTER_GAME	,  self.OnFirstentergame	);
    self.RegisterEvent(	LEVT_PLAYER_IS_MOVING	,  self.OnPlayerismoving	);
    self.RegisterEvent(	LEVT_PLAYER_ADJUST_ORIENT	,  self.OnPlayeradjustorient	);
    self.RegisterEvent(	LEVT_PLAYER_LOCK_VISION	,  self.OnPlayerlockvision	);
    self.RegisterEvent(	LEVT_FIRST_EMOTION_ACTION	,  self.OnFirstemotionaction	);
    self.RegisterEvent(	LEVT_FIRST_EMOTION_WORD	,  self.OnFirstemotionword	);
    self.RegisterEvent(	LEVT_FIRST_CAMERA_MODE	,  self.OnFirstcameramode	);
    self.RegisterEvent(	LEVT_FIRST_SAFELOCK	,  self.OnFirstsafelock	);
    self.RegisterEvent(	LEVT_FIRST_BOSSKEY	,  self.OnFirstbosskey	);
    self.RegisterEvent(	LEVT_FIRST_TALK_NPC	,  self.OnFirsttalknpc	);
    self.RegisterEvent(	LEVT_FIRST_TASK_MAIN	,  self.OnFirsttaskmain	);
    self.RegisterEvent(	LEVT_FIRST_TASK_TRAVEL	,  self.OnFirsttasktravel	);
    self.RegisterEvent(	LEVT_FIRST_TASK_RISK	,  self.OnFirsttaskrisk	);
    self.RegisterEvent(	LEVT_FIRST_TASK_CLASSICAL	,  self.OnFirsttaskclassical	);
    self.RegisterEvent(	LEVT_FIRST_TASK_CHANLLENGE	,  self.OnFirsttaskchanllenge	);
    self.RegisterEvent(	LEVT_FIRST_TASK_KILL_MONSTER	,  self.OnFirsttaskkillmonster	);
    self.RegisterEvent(	LEVT_FIRST_TASK_FORGE	,  self.OnFirsttaskforge	);
    self.RegisterEvent(	LEVT_FIRST_TASK_HERIT	,  self.OnFirsttaskherit	);
    self.RegisterEvent(	LEVT_FIRST_TASK_ASCETIC	,  self.OnFirsttaskascetic	);
    self.RegisterEvent(	LEVT_FIRST_TASK_LUPIN	,  self.OnFirsttasklupin	);
    self.RegisterEvent(	LEVT_FIRST_TASK_TEACHER	,  self.OnFirsttaskteacher	);
    self.RegisterEvent(	LEVT_FIRST_TASK_GUILD	,  self.OnFirsttaskguild	);
    self.RegisterEvent(	LEVT_FIRST_TASK_TREASURE	,  self.OnFirsttasktreasure	);
    self.RegisterEvent(	LEVT_FIRST_TASK_ADVENTURE	,  self.OnFirsttaskadventure	);
    self.RegisterEvent(	LEVT_FIRST_TASK_LOVE	,  self.OnFirsttasklove	);
    self.RegisterEvent(	LEVT_FIRST_TASK_READ	,  self.OnFirsttaskread	);
    self.RegisterEvent(	LEVT_FIRST_OBJECT_PICK	,  self.OnFirstobjectpick	);
    self.RegisterEvent(	LEVT_FIRST_TASK_FAIL	,  self.OnFirsttaskfail	);
    self.RegisterEvent(	LEVT_FIRST_TASK_LIMIT	,  self.OnFirsttasklimit	);
    self.RegisterEvent(	LEVT_FIRST_TASK_TRACK	,  self.OnFirsttasktrack	);
    self.RegisterEvent(	LEVT_FIRST_MAP_AUTOTRACK	,  self.OnFirstmapautotrack	);
    self.RegisterEvent(	LEVT_FIRST_MAP_OPEN	,  self.OnFirstmapopen	);
    self.RegisterEvent(	LEVT_FIRST_TASK_FINISH	,  self.OnFirsttaskfinish	);
    self.RegisterEvent(	LEVT_FIRST_TASK_AWARD	,  self.OnFirsttaskaward	);
    self.RegisterEvent(	LEVT_FIRST_TASK_SEARCH_LATEST	,  self.OnFirsttasksearchlatest	);
    self.RegisterEvent(	LEVT_FIRST_BAG_OPEN	,  self.OnFirstbagopen	);
    self.RegisterEvent(	LEVT_FIRST_ITEM_EQUIP	,  self.OnFirstitemequip	);
    self.RegisterEvent(	LEVT_FIRST_MEDICINE_USE	,  self.OnFirstmedicineuse	);
    self.RegisterEvent(	LEVT_FIRST_ITEM_SPECIAL	,  self.OnFirstitemspecial	);
    self.RegisterEvent(	LEVT_FIRST_BAG_NEATEN	,  self.OnFirstbagneaten	);
    self.RegisterEvent(	LEVT_FIRST_BAG_EXPAND	,  self.OnFirstbagexpand	);
    self.RegisterEvent(	LEVT_FIRST_ITEM_SPILT	,  self.OnFirstitemspilt	);
    self.RegisterEvent(	LEVT_FIRST_BAG_SELL	,  self.OnFirstbagsell	);
    self.RegisterEvent(	LEVT_FIRST_EXCHANGE	,  self.OnFirstexchange	);
    self.RegisterEvent(	LEVT_FIRST_CASH_EXCHANGE	,  self.OnFirstcashexchange	);
    self.RegisterEvent(	LEVT_FIRST_DEPOT_OPEN	,  self.OnFirstdepotopen	);
    self.RegisterEvent(	LEVT_FIRST_DEPOT_EXPAND	,  self.OnFirstdepotexpand	);
    self.RegisterEvent(	LEVT_FIRST_HORSE_EQUIP	,  self.OnFirsthorseequip	);
    self.RegisterEvent(	LEVT_FIRST_ITEM_LOCK	,  self.OnFirstitemlock	);
    self.RegisterEvent(	LEVT_FIRST_BAG_PET	,  self.OnFirstbagpet	);
    self.RegisterEvent(	LEVT_FIRST_BAG_FASHDRESS	,  self.OnFirstbagfashdress	);
    self.RegisterEvent(	LEVT_FIRST_SKILL_SPECIAL	,  self.OnFirstskillspecial	);
    self.RegisterEvent(	LEVT_FIRST_SKILL_POINT_ADD	,  self.OnFirstskillpointadd	);
    self.RegisterEvent(	LEVT_FIRST_SKILL_EDIT	,  self.OnFirstskilledit	);
    self.RegisterEvent(	LEVT_FIRST_SKILL_CLEAR	,  self.OnFirstskillclear	);
    self.RegisterEvent(	LEVT_FIRST_ATTACK	,  self.OnFirstattack	);
    self.RegisterEvent(	LEVT_FIRST_PK	,  self.OnFirstpk	);
    self.RegisterEvent(	LEVT_FIRST_PK_SETTING	,  self.OnFirstpksetting	);
    self.RegisterEvent(	LEVT_FIRST_PK_UP	,  self.OnFirstpkup	);
    self.RegisterEvent(	LEVT_FIRST_PK_DOWN	,  self.OnFirstpkdown	);
    self.RegisterEvent(	LEVT_FIRST_BUFF	,  self.OnFirstbuff	);
    self.RegisterEvent(	LEVT_FIRST_HP	,  self.OnFirsthp	);
    self.RegisterEvent(	LEVT_FIRST_DIE	,  self.OnFirstdie	);
    self.RegisterEvent(	LEVT_FIRST_DIE_PUNISH	,  self.OnFirstdiepunish	);
    self.RegisterEvent(	LEVT_FIRST_REST	,  self.OnFirstrest	);
    self.RegisterEvent(	LEVT_FIRST_KILL_MONSTER	,  self.OnFirstkillmonster	);
    self.RegisterEvent(	LEVT_FIRST_PICKUP	,  self.OnFirstpickup	);
    self.RegisterEvent(	LEVT_FIRST_ABANDON	,  self.OnFirstabandon	);
    self.RegisterEvent(	LEVT_FIRST_CHAT_OPEN	,  self.OnFirstchatopen	);
    self.RegisterEvent(	LEVT_FIRST_MONSTER_SPECIAL	,  self.OnFirstmonsterspecial	);
    self.RegisterEvent(	LEVT_FIRST_ENTER_MAP_NEW	,  self.OnFirstentermapnew	);
    self.RegisterEvent(	LEVT_FIRST_MAP_TRANSFER	,  self.OnFirstmaptransfer	);
    self.RegisterEvent(	LEVT_FIRST_TEAM_SETUP	,  self.OnFirstteamsetup	);
    self.RegisterEvent(	LEVT_FIRST_TEAM_SETTING	,  self.OnFirstteamsetting	);
    self.RegisterEvent(	LEVT_FIRST_BATTLE_GUILD	,  self.OnFirstbattleguild	);
    self.RegisterEvent(	LEVT_FIRST_BATTLE_CITY	,  self.OnFirstbattlecity	);
    self.RegisterEvent(	LEVT_FIRST_TALISMAN_MAIN	,  self.OnFirsttalismanmain	);
    self.RegisterEvent(	LEVT_FIRST_TALISMAN_VICE	,  self.OnFirsttalismanvice	);
    self.RegisterEvent(	LEVT_FIRST_TALISMAN_START	,  self.OnFirsttalismanstart	);
    self.RegisterEvent(	LEVT_FIRST_TALISMAN_UPDATE	,  self.OnFirsttalismanupdate	);
    self.RegisterEvent(	LEVT_FIRST_TALISMAN_MEDIUM	,  self.OnFirsttalismanmedium	);
    self.RegisterEvent(	LEVT_FIRST_TALISMAN_REFINE	,  self.OnFirsttalismanrefine	);
    self.RegisterEvent(	LEVT_FIRST_TALISMAN_ENCHANT	,  self.OnFirsttalismanenchant	);
    self.RegisterEvent(	LEVT_FIRST_TALISMAN_CLEAN	,  self.OnFirsttalismanclean	);
    self.RegisterEvent(	LEVT_FIRST_TALISMAN_COMBINE	,  self.OnFirsttalismancombine	);
    self.RegisterEvent(	LEVT_FIRST_FRIEND_ADD	,  self.OnFirstfriendadd	);
    self.RegisterEvent(	LEVT_FIRST_HUG	,  self.OnFirsthug	);
    self.RegisterEvent(	LEVT_FIRST_MARRY	,  self.OnFirstmarry	);
    self.RegisterEvent(	LEVT_FIRST_FAMILY_CREATE	,  self.OnFirstfamilycreate	);
    self.RegisterEvent(	LEVT_FIRST_FAMILY_JOIN	,  self.OnFirstfamilyjoin	);
    self.RegisterEvent(	LEVT_FIRST_GUILD_CREATE	,  self.OnFirstguildcreate	);
    self.RegisterEvent(	LEVT_FIRST_GUILD_JOIN	,  self.OnFirstguildjoin	);
    self.RegisterEvent(	LEVT_FIRST_FRIEND_DELETE	,  self.OnFirstfrienddelete	);
    self.RegisterEvent(	LEVT_FIRST_BLACKLIST	,  self.OnFirstblacklist	);
    self.RegisterEvent(	LEVT_FIRST_ENEMY	,  self.OnFirstenemy	);
    self.RegisterEvent(	LEVT_FIRST_STUDENT	,  self.OnFirststudent	);
    self.RegisterEvent(	LEVT_FIRST_STUDENT_OUT	,  self.OnFirststudentout	);
    self.RegisterEvent(	LEVT_FIRST_TEACHER	,  self.OnFirstteacher	);
    self.RegisterEvent(	LEVT_FIRST_STUDENT_ADD	,  self.OnFirststudentadd	);
    self.RegisterEvent(	LEVT_FIRST_FRIEND_SEEK	,  self.OnFirstfriendseek	);
    self.RegisterEvent(	LEVT_FIRST_LUPIN_POINT	,  self.OnFirstlupinpoint	);
    self.RegisterEvent(	LEVT_FIRST_PET_GET	,  self.OnFirstpetget	);
    self.RegisterEvent(	LEVT_FIRST_PET_SPECIAL	,  self.OnFirstpetspecial	);
    self.RegisterEvent(	LEVT_FIRST_PET_USE	,  self.OnFirstpetuse	);
    self.RegisterEvent(	LEVT_FIRST_PET_EQUIPMENT	,  self.OnFirstpetequipment	);
    self.RegisterEvent(	LEVT_FIRST_PET_EQUIPMENT_STRENGHTEN	,  self.OnFirstpetequipmentstrenghten	);
    self.RegisterEvent(	LEVT_FIRST_PET_TAME	,  self.OnFirstpettame	);
    self.RegisterEvent(	LEVT_FIRST_PET_COMBINE	,  self.OnFirstpetcombine	);
    self.RegisterEvent(	LEVT_FIRST_PET_STAR_UP	,  self.OnFirstpetstarup	);
    self.RegisterEvent(	LEVT_FIRST_PET_CHANGE_IMAGE	,  self.OnFirstpetchangeimage	);
    self.RegisterEvent(	LEVT_FIRST_PET_CHANGE_NAME	,  self.OnFirstpetchangename	);
    self.RegisterEvent(	LEVT_FIRST_PET_CHANGE_MODE	,  self.OnFirstpetchangemode	);
    self.RegisterEvent(	LEVT_FIRST_PET_FEED	,  self.OnFirstpetfeed	);
    self.RegisterEvent(	LEVT_FIRST_PET_WEAK	,  self.OnFirstpetweak	);
    self.RegisterEvent(	LEVT_FIRST_PET_HUNGRY	,  self.OnFirstpethungry	);
    self.RegisterEvent(	LEVT_FIRST_PET_DIE	,  self.OnFirstpetdie	);
    self.RegisterEvent(	LEVT_FIRST_PET_LV_UP	,  self.OnFirstpetlvup	);
    self.RegisterEvent(	LEVT_FIRST_PET_COLLECT	,  self.OnFirstpetcollect	);
    self.RegisterEvent(	LEVT_FIRST_PET_PRODUCE	,  self.OnFirstpetproduce	);
    self.RegisterEvent(	LEVT_FIRST_PET_CATCH	,  self.OnFirstpetcatch	);
    self.RegisterEvent(	LEVT_FIRST_FLY_GET	,  self.OnFirstflyget	);
    self.RegisterEvent(	LEVT_FIRST_FLY_MODE	,  self.OnFirstflymode	);
    self.RegisterEvent(	LEVT_FIRST_FLY_FIGHT_MODE	,  self.OnFirstflyfightmode	);
    self.RegisterEvent(	LEVT_FIRST_FLY_LV_UP	,  self.OnFirstflylvup	);
    self.RegisterEvent(	LEVT_FIRST_FLY_SPEED_UP	,  self.OnFirstflyspeedup	);
    self.RegisterEvent(	LEVT_FIRST_ENCHASE_LV	,  self.OnFirstenchaselv	);
    self.RegisterEvent(	LEVT_FIRST_ENCHASE_POINT	,  self.OnFirstenchasepoint	);
    self.RegisterEvent(	LEVT_FIRST_BLOOD_ENCHANSE	,  self.OnFirstbloodenchanse	);
    self.RegisterEvent(	LEVT_FIRST_EQUIP_EXCHANGE	,  self.OnFirstequipexchange	);
    self.RegisterEvent(	LEVT_FIRST_EQUIP_BREAK	,  self.OnFirstequipbreak	);
    self.RegisterEvent(	LEVT_FIRST_EQUIP_HIDE	,  self.OnFirstequiphide	);
    self.RegisterEvent(	LEVT_FIRST_EQUIP_BIND	,  self.OnFirstequipbind	);
    self.RegisterEvent(	LEVT_FIRST_EQUIP_DEPART	,  self.OnFirstequipdepart	);
    self.RegisterEvent(	LEVT_FIRST_EQUIP_DESTROY	,  self.OnFirstequipdestroy	);
    self.RegisterEvent(	LEVT_FIRST_EQUIP_SUIT	,  self.OnFirstequipsuit	);
    self.RegisterEvent(	LEVT_FIRST_MAIL	,  self.OnFirstmail	);
    self.RegisterEvent(	LEVT_FIRST_DESC_JOIN	,  self.OnFirstdescjoin	);
    self.RegisterEvent(	LEVT_LV_UP	,  self.OnLvup	);
    self.RegisterEvent(	LEVT_FIRST_QSHOP_OPEN	,  self.OnFirstqshopopen	);
    self.RegisterEvent(	LEVT_QSHOP_ITEM_GET	,  self.OnQshopitemget	);
    self.RegisterEvent(	LEVT_FIRST_RAFFLE	,  self.OnFirstraffle	);
    self.RegisterEvent(	LEVT_FIRST_POPSHOP	,  self.OnFirstpopshop	);
    self.RegisterEvent(	LEVT_FIRST_CREDIT_ADD	,  self.OnFirstcreditadd	);
    self.RegisterEvent(	LEVT_RANK_PERSON_DROPOUT	,  self.OnRankpersondropout	);
    self.RegisterEvent(	LEVT_RANK_PERSONALL_DROPOUT	,  self.OnRankpersonalldropout	);

	
end


function Win_SecretaryDetail:OnCmdHelp()
    DlgApi.ShowDialog(self.this, false);
    DlgApi.ShowDialog("Win_SecretaryHelp", true);
end

function Win_SecretaryDetail:OnCmdSerach()
   DlgApi.ShowDialog(self.this, false);
   DlgApi.ShowDialog("Win_SecretarySearch", true);
end

function Win_SecretaryDetail:OnCmdMemo()
   DlgApi.ShowDialog(self.this, false);
   DlgApi.ShowDialog("Win_SecretarySearch", true);
end

function Win_SecretaryDetail:OnCmdToMain()
   DlgApi.ShowDialog(self.this, false);
   DlgApi.ShowDialog("Win_SecretaryMain", true); 
end

function Win_SecretaryDetail:OnFirstEnterGame()
	m_curEvent = LEVT_FIRST_ENTER_GAME;
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_ENTER_GAME"]);
   	DlgApi.ShowDialog(self.this, true); 
end

function Win_SecretaryDetail:OnIsMoving()
    if(m_curEvent == LEVT_FIRST_ENTER_GAME) then
   		DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_PLAYER_IS_MOVING"]);
   		DlgApi.ShowDialog(self.this, true); 
   		m_curEvent = LEVT_PLAYER_IS_MOVING;
	end
end

function Win_SecretaryDetail:OnIsJumping()
    if ( m_curEvent == LEVT_PLAYER_IS_MOVING) then
		DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_PLAYER_IS_JUMPING"]);
   		DlgApi.ShowDialog(self.this, true);
   		m_curEvent =  LEVT_PLAYER_IS_JUMPING
	end
end

function Win_SecretaryDetail:OnIsAdjustOrient()
	if( m_curEvent == LEVT_PLAYER_IS_JUMPING) then
   		DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_PLAYER_ADJUST_ORIENT"]);
   		DlgApi.ShowDialog(self.this, true);
   		m_curEvent =  LEVT_PLAYER_ADJUST_ORIENT
	end
end

function Win_SecretaryDetail:OnIsAdjustDistance()
    if(m_curEvent == LEVT_PLAYER_ADJUST_ORIENT) then
   		DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_PLAYER_ADJUST_DISTANCE"]);
   		DlgApi.ShowDialog(self.this, true);
   		m_curEvent =  0
    end
end

function Win_SecretaryDetail:OnLevelUp(level)

   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_PLAYER_LEVEL_UP"][level]);
   	DlgApi.ShowDialog(self.this, true);

end

----------------------------------------------------------------------------------
----------------------------------------------------------------------------------

function Win_SecretaryDetail:OnFirstentergame	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_ENTER_GAME"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnPlayerismoving	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_PLAYER_IS_MOVING"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnPlayeradjustorient	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_PLAYER_ADJUST_ORIENT"]);
  	DlgApi.ShowDialog(self.this, true);
 end   	

function Win_SecretaryDetail:OnPlayerlockvision	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_PLAYER_LOCK_VISION"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstemotionaction	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_EMOTION_ACTION"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstemotionword	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_EMOTION_WORD"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstcameramode	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_CAMERA_MODE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstsafelock	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_SAFELOCK"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstbosskey	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_BOSSKEY"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttalknpc	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TALK_NPC"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttaskmain	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_MAIN"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttasktravel	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_TRAVEL"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttaskrisk	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_RISK"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttaskclassical	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_CLASSICAL"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttaskchanllenge	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_CHANLLENGE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttaskkillmonster	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_KILL_MONSTER"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttaskforge	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_FORGE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttaskherit	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_HERIT"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttaskascetic	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_ASCETIC"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttasklupin	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_LUPIN"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttaskteacher	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_TEACHER"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttaskguild	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_GUILD"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttasktreasure	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_TREASURE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttaskadventure	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_ADVENTURE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttasklove	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_LOVE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttaskread	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_READ"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstobjectpick	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_OBJECT_PICK"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttaskfail	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_FAIL"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttasklimit	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_LIMIT"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttasktrack	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_TRACK"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstmapautotrack	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_MAP_AUTOTRACK"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstmapopen	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_MAP_OPEN"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttaskfinish	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_FINISH"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttaskaward	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_AWARD"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttasksearchlatest	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TASK_SEARCH_LATEST"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstbagopen	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_BAG_OPEN"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstitemequip	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_ITEM_EQUIP"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstmedicineuse	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_MEDICINE_USE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstitemspecial	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_ITEM_SPECIAL"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstbagneaten	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_BAG_NEATEN"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstbagexpand	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_BAG_EXPAND"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstitemspilt	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_ITEM_SPILT"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstbagsell	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_BAG_SELL"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstexchange	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_EXCHANGE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstcashexchange	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_CASH_EXCHANGE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstdepotopen	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_DEPOT_OPEN"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstdepotexpand	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_DEPOT_EXPAND"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsthorseequip	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_HORSE_EQUIP"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstitemlock	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_ITEM_LOCK"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstbagpet	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_BAG_PET"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstbagfashdress	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_BAG_FASHDRESS"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstskillspecial	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_SKILL_SPECIAL"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstskillpointadd	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_SKILL_POINT_ADD"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstskilledit	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_SKILL_EDIT"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstskillclear	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_SKILL_CLEAR"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstattack	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_ATTACK"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpk	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PK"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpksetting	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PK_SETTING"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpkup	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PK_UP"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpkdown	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PK_DOWN"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstbuff	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_BUFF"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsthp	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_HP"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstdie	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_DIE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstdiepunish	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_DIE_PUNISH"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstrest	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_REST"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstkillmonster	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_KILL_MONSTER"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpickup	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PICKUP"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstabandon	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_ABANDON"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstchatopen	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_CHAT_OPEN"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstmonsterspecial	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_MONSTER_SPECIAL"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstentermapnew	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_ENTER_MAP_NEW"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstmaptransfer	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_MAP_TRANSFER"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstteamsetup	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TEAM_SETUP"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstteamsetting	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TEAM_SETTING"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstbattleguild	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_BATTLE_GUILD"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstbattlecity	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_BATTLE_CITY"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttalismanmain	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TALISMAN_MAIN"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttalismanvice	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TALISMAN_VICE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttalismanstart	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TALISMAN_START"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttalismanupdate	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TALISMAN_UPDATE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttalismanmedium	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TALISMAN_MEDIUM"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttalismanrefine	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TALISMAN_REFINE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttalismanenchant	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TALISMAN_ENCHANT"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttalismanclean	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TALISMAN_CLEAN"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsttalismancombine	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TALISMAN_COMBINE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstfriendadd	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_FRIEND_ADD"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirsthug	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_HUG"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstmarry	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_MARRY"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstfamilycreate	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_FAMILY_CREATE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstfamilyjoin	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_FAMILY_JOIN"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstguildcreate	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_GUILD_CREATE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstguildjoin	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_GUILD_JOIN"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstfrienddelete	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_FRIEND_DELETE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstblacklist	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_BLACKLIST"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstenemy	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_ENEMY"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirststudent	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_STUDENT"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirststudentout	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_STUDENT_OUT"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstteacher	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_TEACHER"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirststudentadd	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_STUDENT_ADD"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstfriendseek	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_FRIEND_SEEK"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstlupinpoint	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_LUPIN_POINT"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpetget	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PET_GET"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpetspecial	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PET_SPECIAL"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpetuse	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PET_USE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpetequipment	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PET_EQUIPMENT"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpetequipmentstrenghten	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PET_EQUIPMENT_STRENGHTEN"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpettame	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PET_TAME"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpetcombine	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PET_COMBINE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpetstarup	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PET_STAR_UP"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpetchangeimage	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PET_CHANGE_IMAGE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpetchangename	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PET_CHANGE_NAME"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpetchangemode	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PET_CHANGE_MODE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpetfeed	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PET_FEED"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpetweak	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PET_WEAK"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpethungry	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PET_HUNGRY"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpetdie	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PET_DIE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpetlvup	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PET_LV_UP"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpetcollect	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PET_COLLECT"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpetproduce	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PET_PRODUCE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpetcatch	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_PET_CATCH"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstflyget	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_FLY_GET"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstflymode	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_FLY_MODE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstflyfightmode	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_FLY_FIGHT_MODE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstflylvup	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_FLY_LV_UP"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstflyspeedup	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_FLY_SPEED_UP"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstenchaselv	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_ENCHASE_LV"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstenchasepoint	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_ENCHASE_POINT"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstbloodenchanse	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_BLOOD_ENCHANSE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstequipexchange	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_EQUIP_EXCHANGE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstequipbreak	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_EQUIP_BREAK"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstequiphide	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_EQUIP_HIDE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstequipbind	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_EQUIP_BIND"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstequipdepart	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_EQUIP_DEPART"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstequipdestroy	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_EQUIP_DESTROY"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstequipsuit	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_EQUIP_SUIT"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstmail	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_MAIL"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstdescjoin	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_DESC_JOIN"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnLvup	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_LV_UP"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstqshopopen	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_QSHOP_OPEN"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnQshopitemget	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_QSHOP_ITEM_GET"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstraffle	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_RAFFLE"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstpopshop	()

   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_POPSHOP"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnFirstcreditadd	()

   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_FIRST_CREDIT_ADD"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnRankpersondropout	()

   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_RANK_PERSON_DROPOUT"]);
  	DlgApi.ShowDialog(self.this, true);
 end
function Win_SecretaryDetail:OnRankpersonalldropout	()
   	DlgApi.SetItemText(self.this, "Txt_Content", SecretarySystemRemind["LEVT_RANK_PERSONALL_DROPOUT"]);

  	DlgApi.ShowDialog(self.this, true);

 end




