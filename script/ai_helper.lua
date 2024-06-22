

---refine: common utilities,  move to other files if needed
-------------------create instance--------------------------
local pairs, setmetatable, type = pairs, setmetatable, type
local function CopyTable(src)
  local inst = {}
  for  k,  v in pairs(src) do
     if type(v) == "table"
     then
        inst[k] = CopyTable(v)
     else
        inst[k] = v
     end
  end
  local mt = getmetatable(src)
  setmetatable(inst, src)

  return inst
end

local function CreateObj(template,  obj)
  local inst = obj or {}
  for  k,  v in pairs(template) do
     if (not inst[k]) and type(v) ~= "function"  then
        if type(v) == "table"  and v ~= template
        then
            inst[k] = CopyTable(v)
        else
            inst[k] = v
        end
      end
  end

  setmetatable(inst, template)
  ---template.__index = template
  return inst
end

--判断技能是否属于瞬间释放的技能
function Check(id)
--所有瞬间释放的技能ID
local Instantcoolskill =
{
	393,	-- 鬼王御空术
	394,	-- 合欢御空术
	395,	-- 青云御空术
	396,	-- 天音御空术
	1104,	-- 鬼道御空术
	1853,	-- 九黎空行
	1895,	-- 烈山空行
	2426,	-- 怀光空行
	2477,	-- 天华空行
	527,	-- 苍劫阵
	534,	-- 忘情
	544,	-- 天机印
	553,	-- 慈航法愿
	1130,	-- 巫毒斗瘴
	1871,	-- 战歌
	1913,	-- 天衍阵
	2444,	-- 杀域
	1533,	-- 苍劫阵II
	1542,	-- 慈航法愿II
	2218,	-- 战歌II
	2063,	-- 巫毒斗瘴II 
	2065,	-- 天机印II
	2070,	-- 慈航普渡II
	1569,	-- 蛊王姿态II
	1595,	-- 魔魂姿态II 
	1097,	-- 魔魂姿态 
	1106,	-- 蛊王姿态
	2188,	-- 狐影术
	2446,	-- 影遁
}
local intable
	for i=1,#Instantcoolskill do
		if id==Instantcoolskill[i] then
			intable=true;
			break;
		else
			intable=false;
		end
	end
	return intable
end

---counter
Counter = 
{
	    m_Period = 0;
	    m_Counter = 0;
}


function Counter:new()
	self.__index = self;
  local inst = CreateObj(self);
  return inst;
end

function Counter:SetPeriod(period)
			self.m_Period = period;
end

function Counter:GetPeriod()
			return self.m_Period;
end

function Counter:Reset()
		  self.m_Counter = 0;
end

function Counter:IncCounter(counter)
		self.m_Counter = self.m_Counter + counter;
		return (self.m_Counter >= self.m_Period);
end

function Counter:IsFull()
		 return (self.m_Counter >= self.m_Period);
end

function Counter:Full()
		self.m_Counter = self.m_Period
end

---AI helper
AI_Helper = 
{
	m_mCounters,

	m_reportCounter,
	
	m_hpRate,
	m_mpRate,

	m_skillUsing,
	m_targetSelecting,
	m_targetHp,
	m_BadID,
	
	SKILL_IDs,
	
	x,
	y,
	z,
	range,
	
	isArchorChoosen,	
	isSkillDisabled,
	rangeChoosen,
	
	currentStatus,
	
	STATUS_FREE,
	STATUS_NORMAL_ATTACK,
	STATUS_PREPARING_SKILL,
	STATUS_WAITING_SKILL,
	STATUS_USING_SKILL,
	STATUS_PREPARING_PICKUP,
	STATUS_WAITING_PICKUP,
	STATUS_PICKING_UP,
	STATUS_AUTO_MOVING,
	
	pickuptimes,
	
	Status,
};



local GameAI = GameAI;

function AI_Helper:Init()
	---LuaDebug("hello world from ai helper");    
	self.m_Counters = {}
	self.m_Counters["HealHp"] = Counter:new()
	self.m_Counters["HealMp"] = Counter:new()
	self.m_Counters["HealStamina"] = Counter:new()
	self.m_Counters["SelectMonster"] = Counter:new()
	for i = 1,9 do
		self.m_Counters["UseSkill_"..i] = Counter:new()
	end
	self.m_Counters["UseItem_1"] = Counter:new()
	self.m_Counters["UseItem_2"] = Counter:new()
	self.m_Counters["UseItem_3"] = Counter:new()
	self.m_Counters["PickUp"] = Counter:new()
	self.m_Counters["WaitingSkill"] = Counter:new()
	self.m_Counters["Obstacle"] = Counter:new()
	self.m_Counters["AutoMove"] = Counter:new()
	self.m_Counters["pickuptime"] = Counter:new()
	self.m_Counters["pickuprefuse"] = Counter:new()
	self.m_Counters["happenagain"] = Counter:new()
	self.m_Counters["NormalAttack"] = Counter:new()
	
	self.m_reportCounter = Counter:new();

	self.SKILL_IDs = {};

	self.STATUS_NOMOB_FREE				= 0;
	self.STATUS_MOB_FREE					= 1;
	self.STATUS_NORMAL_ATTACK			= 2;
	self.STATUS_PREPARING_SKILL		= 3;
	self.STATUS_WAITING_SKILL			= 4;
	self.STATUS_USING_SKILL				= 5;
	self.STATUS_PREPARING_PICKUP	= 6;
	self.STATUS_PICKING_UP				= 7;
	self.STATUS_AUTO_MOVING				= 8;
	
	self.pickuptimes=0;
	
	
	self.Status = {};
	
	self.Status[self.STATUS_NOMOB_FREE] = {};
	self.Status[self.STATUS_MOB_FREE] = {};
	self.Status[self.STATUS_NORMAL_ATTACK] = {};
	self.Status[self.STATUS_PREPARING_SKILL] = {};
	self.Status[self.STATUS_WAITING_SKILL] = {};
	self.Status[self.STATUS_USING_SKILL] = {};
	self.Status[self.STATUS_PREPARING_PICKUP] = {};
	self.Status[self.STATUS_PICKING_UP] = {};
	self.Status[self.STATUS_AUTO_MOVING] = {};
	
	
	---0无怪空闲
	table.insert(self.Status[self.STATUS_NOMOB_FREE], {id=self.STATUS_PREPARING_PICKUP, con={havesomethingtopick=true}, action={{func=GameAI.PickUp}}, cd="PickUp"});
	table.insert(self.Status[self.STATUS_NOMOB_FREE], {id=self.STATUS_AUTO_MOVING, con={autoMoveCD=true, outRange=true,havesomethingtopick=false, CanAutoMoving=true}, action={{func=self.StartAutoMove}}, cd="AutoMove"});
	table.insert(self.Status[self.STATUS_NOMOB_FREE], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_1=true, isSkillCan_1=true, isSkillCool_1=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=1}}});
	table.insert(self.Status[self.STATUS_NOMOB_FREE], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_2=true, isSkillCan_2=true, isSkillCool_2=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=2}}});
	table.insert(self.Status[self.STATUS_NOMOB_FREE], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_3=true, isSkillCan_3=true, isSkillCool_3=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=3}}});
	table.insert(self.Status[self.STATUS_NOMOB_FREE], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_4=true, isSkillCan_4=true, isSkillCool_4=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=4}}});
	table.insert(self.Status[self.STATUS_NOMOB_FREE], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_5=true, isSkillCan_5=true, isSkillCool_5=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=5}}});
	table.insert(self.Status[self.STATUS_NOMOB_FREE], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_6=true, isSkillCan_6=true, isSkillCool_6=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=6}}});
	table.insert(self.Status[self.STATUS_NOMOB_FREE], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_7=true, isSkillCan_7=true, isSkillCool_7=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=7}}});
	table.insert(self.Status[self.STATUS_NOMOB_FREE], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_8=true, isSkillCan_8=true, isSkillCool_8=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=8}}});
	table.insert(self.Status[self.STATUS_NOMOB_FREE], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_9=true, isSkillCan_9=true, isSkillCool_9=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=9}}});
	table.insert(self.Status[self.STATUS_NOMOB_FREE],	{id=self.STATUS_MOB_FREE, con={canAttack=true,havesomethingtopick=false,NormalAttackCD=true}, action={{func=GameAI.NormalAttack}},cd="NormalAttack"});
	table.insert(self.Status[self.STATUS_NOMOB_FREE], {id=self.STATUS_MOB_FREE, con={canAttack=false, tabCD=true, target_id=0,havesomethingtopick=false}, action={{func=GameAI.SelectMonster}}, cd="SelectMonster"});
	
	---1有怪空闲
	table.insert(self.Status[self.STATUS_MOB_FREE], {id=self.STATUS_PREPARING_PICKUP, con={canAttack=false,havesomethingtopick=true}, action={{func=GameAI.PickUp}}, cd="PickUp"});
	table.insert(self.Status[self.STATUS_MOB_FREE], {id=self.STATUS_NOMOB_FREE, con={canAttack=false}});
	table.insert(self.Status[self.STATUS_MOB_FREE], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_1=true, isSkillCan_1=true, isSkillCool_1=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=1}}});
	table.insert(self.Status[self.STATUS_MOB_FREE], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_2=true, isSkillCan_2=true, isSkillCool_2=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=2}}});
	table.insert(self.Status[self.STATUS_MOB_FREE], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_3=true, isSkillCan_3=true, isSkillCool_3=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=3}}});
	table.insert(self.Status[self.STATUS_MOB_FREE], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_4=true, isSkillCan_4=true, isSkillCool_4=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=4}}});
	table.insert(self.Status[self.STATUS_MOB_FREE], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_5=true, isSkillCan_5=true, isSkillCool_5=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=5}}});
	table.insert(self.Status[self.STATUS_MOB_FREE], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_6=true, isSkillCan_6=true, isSkillCool_6=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=6}}});
	table.insert(self.Status[self.STATUS_MOB_FREE], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_7=true, isSkillCan_7=true, isSkillCool_7=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=7}}});
	table.insert(self.Status[self.STATUS_MOB_FREE], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_8=true, isSkillCan_8=true, isSkillCool_8=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=8}}});
	table.insert(self.Status[self.STATUS_MOB_FREE], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_9=true, isSkillCan_9=true, isSkillCool_9=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=9}}});
	---table.insert(self.Status[self.STATUS_MOB_FREE], {id=self.STATUS_PREPARING_PICKUP, con={canAttack=true, pickupCD=true}, action={{func=GameAI.PickUp}}, cd="PickUp"});
	table.insert(self.Status[self.STATUS_MOB_FREE], {id=self.STATUS_NORMAL_ATTACK, con={canAttack=true,NormalAttackCD=true}, action={{func=GameAI.NormalAttack}},cd="NormalAttack"});
	
	---2普通攻击
	table.insert(self.Status[self.STATUS_NORMAL_ATTACK], {id=self.STATUS_PREPARING_PICKUP, con={canAttack=false,havesomethingtopick=true}, action={{func=GameAI.PickUp}}, cd="PickUp"});
	table.insert(self.Status[self.STATUS_NORMAL_ATTACK], {id=self.STATUS_NOMOB_FREE, con={canAttack=false}});
	table.insert(self.Status[self.STATUS_NORMAL_ATTACK], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_1=true, isSkillCan_1=true, isSkillCool_1=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=1}}});
	table.insert(self.Status[self.STATUS_NORMAL_ATTACK], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_2=true, isSkillCan_2=true, isSkillCool_2=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=2}}});
	table.insert(self.Status[self.STATUS_NORMAL_ATTACK], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_3=true, isSkillCan_3=true, isSkillCool_3=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=3}}});
	table.insert(self.Status[self.STATUS_NORMAL_ATTACK], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_4=true, isSkillCan_4=true, isSkillCool_4=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=4}}});
	table.insert(self.Status[self.STATUS_NORMAL_ATTACK], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_5=true, isSkillCan_5=true, isSkillCool_5=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=5}}});
	table.insert(self.Status[self.STATUS_NORMAL_ATTACK], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_6=true, isSkillCan_6=true, isSkillCool_6=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=6}}});
	table.insert(self.Status[self.STATUS_NORMAL_ATTACK], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_7=true, isSkillCan_7=true, isSkillCool_7=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=7}}});
	table.insert(self.Status[self.STATUS_NORMAL_ATTACK], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_8=true, isSkillCan_8=true, isSkillCool_8=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=8}}});
	table.insert(self.Status[self.STATUS_NORMAL_ATTACK], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_9=true, isSkillCan_9=true, isSkillCool_9=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=9}}});
	---table.insert(self.Status[self.STATUS_NORMAL_ATTACK], {id=self.STATUS_PREPARING_PICKUP, con={canAttack=true, pickupCD=true}, action={{func=GameAI.PickUp}}, cd="PickUp"});
	table.insert(self.Status[self.STATUS_NORMAL_ATTACK], {id=self.STATUS_NORMAL_ATTACK, con={canAttack=true,NormalAttackCD=true}, action={{func=GameAI.NormalAttack}},cd="NormalAttack"});
	---table.insert(self.Status[self.STATUS_NORMAL_ATTACK], {id=self.STATUS_NORMAL_ATTACK, con={canAttack=true}});
	---3准备释放技能
	table.insert(self.Status[self.STATUS_PREPARING_SKILL], {id=self.STATUS_WAITING_SKILL, con={isPreparingSkill=false}});
	
	---4等待技能
	table.insert(self.Status[self.STATUS_WAITING_SKILL], {id=self.STATUS_NOMOB_FREE, con={canAttack=false}, action={{func=self.FinishSkill}}, cd="WaitingSkill"});
	table.insert(self.Status[self.STATUS_WAITING_SKILL], {id=self.STATUS_MOB_FREE, con={canAttack=true, isPreparingSkill=false, isUsingSkill=false}, action={{func=self.FinishSkill}}, cd="WaitingSkill"});
	table.insert(self.Status[self.STATUS_WAITING_SKILL], {id=self.STATUS_USING_SKILL, con={isUsingSkill=true}, action={{func=self.FinishSkill}}, cd="WaitingSkill"});
	table.insert(self.Status[self.STATUS_WAITING_SKILL], {id=self.STATUS_NORMAL_ATTACK, con={canAttack=true, noResponse=true,NormalAttackCD=true}, action={{func=GameAI.NormalAttack}}, cd="WaitingSkill"});
	
	---5正在释放技能
	table.insert(self.Status[self.STATUS_USING_SKILL], {id=self.STATUS_PREPARING_PICKUP, con={canAttack=false, isUsingSkill=false, havesomethingtopick=true}, action={{func=GameAI.PickUp}}, cd="PickUp"});
	table.insert(self.Status[self.STATUS_USING_SKILL], {id=self.STATUS_NOMOB_FREE, con={canAttack=false, isUsingSkill=false}});
	---table.insert(self.Status[self.STATUS_USING_SKILL], {id=self.STATUS_MOB_FREE, con={canAttack=true, isUsingSkill=false}});	
	table.insert(self.Status[self.STATUS_USING_SKILL], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_1=true, isSkillCan_1=true, isSkillCool_1=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=1}}});
	table.insert(self.Status[self.STATUS_USING_SKILL], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_2=true, isSkillCan_2=true, isSkillCool_2=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=2}}});
	table.insert(self.Status[self.STATUS_USING_SKILL], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_3=true, isSkillCan_3=true, isSkillCool_3=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=3}}});
	table.insert(self.Status[self.STATUS_USING_SKILL], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_4=true, isSkillCan_4=true, isSkillCool_4=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=4}}});
	table.insert(self.Status[self.STATUS_USING_SKILL], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_5=true, isSkillCan_5=true, isSkillCool_5=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=5}}});
	table.insert(self.Status[self.STATUS_USING_SKILL], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_6=true, isSkillCan_6=true, isSkillCool_6=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=6}}});
	table.insert(self.Status[self.STATUS_USING_SKILL], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_7=true, isSkillCan_7=true, isSkillCool_7=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=7}}});
	table.insert(self.Status[self.STATUS_USING_SKILL], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_8=true, isSkillCan_8=true, isSkillCool_8=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=8}}});
	table.insert(self.Status[self.STATUS_USING_SKILL], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_9=true, isSkillCan_9=true, isSkillCool_9=false, isSkillDisabled=false}, action={{func=self.UseSkill,arg1=9}}});
	table.insert(self.Status[self.STATUS_USING_SKILL], {id=self.STATUS_NORMAL_ATTACK, con={canAttack=true, isUsingSkill=false}, action={{func=self.FinishSkill}},cd="WaitingSkill"});
	
	---6准备捡东西
	table.insert(self.Status[self.STATUS_PREPARING_PICKUP],	{id=self.STATUS_NOMOB_FREE, con={canAttack=false,isPreparingPickingUp=false, isPickingUp=false,havesomethingtopick=false}});
	table.insert(self.Status[self.STATUS_PREPARING_PICKUP], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_1=true, isSkillCan_1=true, isSkillCool_1=false, isSkillDisabled=false, isPreparingPickingUp=false, isPickingUp=false,havesomethingtopick=false}, action={{func=self.UseSkill,arg1=1}}});
	table.insert(self.Status[self.STATUS_PREPARING_PICKUP], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_2=true, isSkillCan_2=true, isSkillCool_2=false, isSkillDisabled=false, isPreparingPickingUp=false, isPickingUp=false,havesomethingtopick=false}, action={{func=self.UseSkill,arg1=2}}});
	table.insert(self.Status[self.STATUS_PREPARING_PICKUP], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_3=true, isSkillCan_3=true, isSkillCool_3=false, isSkillDisabled=false, isPreparingPickingUp=false, isPickingUp=false,havesomethingtopick=false}, action={{func=self.UseSkill,arg1=3}}});
	table.insert(self.Status[self.STATUS_PREPARING_PICKUP], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_4=true, isSkillCan_4=true, isSkillCool_4=false, isSkillDisabled=false, isPreparingPickingUp=false, isPickingUp=false,havesomethingtopick=false}, action={{func=self.UseSkill,arg1=4}}});
	table.insert(self.Status[self.STATUS_PREPARING_PICKUP], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_5=true, isSkillCan_5=true, isSkillCool_5=false, isSkillDisabled=false, isPreparingPickingUp=false, isPickingUp=false,havesomethingtopick=false}, action={{func=self.UseSkill,arg1=5}}});
	table.insert(self.Status[self.STATUS_PREPARING_PICKUP], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_6=true, isSkillCan_6=true, isSkillCool_6=false, isSkillDisabled=false, isPreparingPickingUp=false, isPickingUp=false,havesomethingtopick=false}, action={{func=self.UseSkill,arg1=6}}});
	table.insert(self.Status[self.STATUS_PREPARING_PICKUP], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_7=true, isSkillCan_7=true, isSkillCool_7=false, isSkillDisabled=false, isPreparingPickingUp=false, isPickingUp=false,havesomethingtopick=false}, action={{func=self.UseSkill,arg1=7}}});
	table.insert(self.Status[self.STATUS_PREPARING_PICKUP], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_8=true, isSkillCan_8=true, isSkillCool_8=false, isSkillDisabled=false, isPreparingPickingUp=false, isPickingUp=false,havesomethingtopick=false}, action={{func=self.UseSkill,arg1=8}}});
	table.insert(self.Status[self.STATUS_PREPARING_PICKUP], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_9=true, isSkillCan_9=true, isSkillCool_9=false, isSkillDisabled=false, isPreparingPickingUp=false, isPickingUp=false,havesomethingtopick=false}, action={{func=self.UseSkill,arg1=9}}});
	table.insert(self.Status[self.STATUS_PREPARING_PICKUP], {id=self.STATUS_NORMAL_ATTACK, con={canAttack=true, isPreparingPickingUp=false, isPickingUp=false,havesomethingtopick=false,NormalAttackCD=true}, action={{func=GameAI.NormalAttack}},cd="NormalAttack"});
	---table.insert(self.Status[self.STATUS_PREPARING_PICKUP],	{id=self.STATUS_MOB_FREE, con={canAttack=true, isPreparingPickingUp=false, isPickingUp=false,havesomethingtopick=false}});
	table.insert(self.Status[self.STATUS_PREPARING_PICKUP],	{id=self.STATUS_PICKING_UP, con={isPickingUp=true}});
	table.insert(self.Status[self.STATUS_PREPARING_PICKUP], {id=self.STATUS_PREPARING_PICKUP, con={isPreparingPickingUp=false, isPickingUp=false,havesomethingtopick=true}, action={{func=GameAI.PickUp}}, cd="PickUp"});
	
	---7正在捡东西
	table.insert(self.Status[self.STATUS_PICKING_UP], {id=self.STATUS_NOMOB_FREE, con={canAttack=false,isPickingUp=false,havesomethingtopick=false}});
  table.insert(self.Status[self.STATUS_PICKING_UP], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_1=true, isSkillCan_1=true, isSkillCool_1=false, isSkillDisabled=false, isPickingUp=false,havesomethingtopick=false}, action={{func=self.UseSkill,arg1=1}}});
	table.insert(self.Status[self.STATUS_PICKING_UP], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_2=true, isSkillCan_2=true, isSkillCool_2=false, isSkillDisabled=false, isPickingUp=false,havesomethingtopick=false}, action={{func=self.UseSkill,arg1=2}}});
	table.insert(self.Status[self.STATUS_PICKING_UP], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_3=true, isSkillCan_3=true, isSkillCool_3=false, isSkillDisabled=false, isPickingUp=false,havesomethingtopick=false}, action={{func=self.UseSkill,arg1=3}}});
	table.insert(self.Status[self.STATUS_PICKING_UP], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_4=true, isSkillCan_4=true, isSkillCool_4=false, isSkillDisabled=false, isPickingUp=false,havesomethingtopick=false}, action={{func=self.UseSkill,arg1=4}}});
	table.insert(self.Status[self.STATUS_PICKING_UP], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_5=true, isSkillCan_5=true, isSkillCool_5=false, isSkillDisabled=false, isPickingUp=false,havesomethingtopick=false}, action={{func=self.UseSkill,arg1=5}}});
	table.insert(self.Status[self.STATUS_PICKING_UP], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_6=true, isSkillCan_6=true, isSkillCool_6=false, isSkillDisabled=false, isPickingUp=false,havesomethingtopick=false}, action={{func=self.UseSkill,arg1=6}}});
	table.insert(self.Status[self.STATUS_PICKING_UP], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_7=true, isSkillCan_7=true, isSkillCool_7=false, isSkillDisabled=false, isPickingUp=false,havesomethingtopick=false}, action={{func=self.UseSkill,arg1=7}}});
	table.insert(self.Status[self.STATUS_PICKING_UP], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_8=true, isSkillCan_8=true, isSkillCool_8=false, isSkillDisabled=false, isPickingUp=false,havesomethingtopick=false}, action={{func=self.UseSkill,arg1=8}}});
	table.insert(self.Status[self.STATUS_PICKING_UP], {id=self.STATUS_PREPARING_SKILL, con={canAttack=true, skillCD_9=true, isSkillCan_9=true, isSkillCool_9=false, isSkillDisabled=false, isPickingUp=false,havesomethingtopick=false}, action={{func=self.UseSkill,arg1=9}}});
	table.insert(self.Status[self.STATUS_PICKING_UP], {id=self.STATUS_NORMAL_ATTACK, con={canAttack=true, isPickingUp=false,havesomethingtopick=false,NormalAttackCD=true}, action={{func=GameAI.NormalAttack}},cd="NormalAttack"});
	---table.insert(self.Status[self.STATUS_PICKING_UP], {id=self.STATUS_MOB_FREE, con={canAttack=true, isPickingUp=false,havesomethingtopick=false}});
	---table.insert(self.Status[self.STATUS_PICKING_UP], {id=self.STATUS_PREPARING_PICKUP, con={isPickingUp=true}, action={{func=GameAI.PickUp}}, cd="PickUp"});
	table.insert(self.Status[self.STATUS_PICKING_UP], {id=self.STATUS_PREPARING_PICKUP, con={havesomethingtopick=true}, action={{func=GameAI.PickUp}}, cd="PickUp"});
	
	---8正在跑路
	table.insert(self.Status[self.STATUS_AUTO_MOVING], {id=self.STATUS_NOMOB_FREE, con={canAttack=false, isAutoMoving=false}});
	table.insert(self.Status[self.STATUS_AUTO_MOVING], {id=self.STATUS_NOMOB_FREE, con={canAttack=false, inRange=true}});
	table.insert(self.Status[self.STATUS_AUTO_MOVING], {id=self.STATUS_NORMAL_ATTACK, con={canAttack=true, CanAutoMoving=false,NormalAttackCD=true}, action={{func=GameAI.NormalAttack}},cd="NormalAttack"});
	table.insert(self.Status[self.STATUS_AUTO_MOVING], {id=self.STATUS_NORMAL_ATTACK, con={canAttack=true, isAutoMoving=false,NormalAttackCD=true}, action={{func=GameAI.NormalAttack}},cd="NormalAttack"});
	---table.insert(self.Status[self.STATUS_AUTO_MOVING], {id=self.STATUS_MOB_FREE, con={canAttack=true, isAutoMoving=false}});
  
	self:Reset();
end

function AI_Helper:Reset()
	self.m_Counters["HealHp"]:SetPeriod(2000);
	self.m_hpRate = 0.70;
	self.m_Counters["HealMp"]:SetPeriod(2000);
	self.m_mpRate = 0.70;
	self.m_Counters["HealStamina"]:SetPeriod(2000);
	self.m_staRate = 0.50;

	self.m_Counters["SelectMonster"]:SetPeriod(1500);	
	self.m_Counters["PickUp"]:SetPeriod(100);
	self.m_Counters["UseSkill_1"]:SetPeriod(10000);
	self.m_Counters["UseSkill_2"]:SetPeriod(10000);
	self.m_Counters["UseSkill_3"]:SetPeriod(10000);
	self.m_Counters["UseSkill_4"]:SetPeriod(10000);
	self.m_Counters["UseSkill_5"]:SetPeriod(10000);
	self.m_Counters["UseSkill_6"]:SetPeriod(10000);
	self.m_Counters["UseSkill_7"]:SetPeriod(10000);
	self.m_Counters["UseSkill_8"]:SetPeriod(10000);
	self.m_Counters["UseSkill_9"]:SetPeriod(10000);
	self.m_Counters["WaitingSkill"]:SetPeriod(2000);
	self.m_Counters["Obstacle"]:SetPeriod(12000);
	self.m_Counters["AutoMove"]:SetPeriod(500);
	self.m_Counters["pickuptime"]:SetPeriod(2000);
	self.m_Counters["pickuprefuse"]:SetPeriod(15000);
	self.m_Counters["happenagain"]:SetPeriod(1500);
	self.m_Counters["NormalAttack"]:SetPeriod(600);
	self.m_Counters["UseItem_1"]:SetPeriod(10000);
	self.m_Counters["UseItem_2"]:SetPeriod(10000);
	self.m_Counters["UseItem_3"]:SetPeriod(10000);

	self.m_reportCounter:SetPeriod(10000);		

	self.m_skillUsing = 0;
	self.m_targetSelecting = 0;
	self.m_targetHp = 0;
	self.m_BadID = 0;
	
	self.x = 0;
	self.y = 0;
	self.z = 0;
	self.range = 800;
	self.rangeChoosen = 0;

  self.isSkillDisabled = false;

end

function AI_Helper:Start()

	---设置初始状态
	local canAttack = GameAI.CanAttack();
	if canAttack then
		self.currentStatus = self.STATUS_MOB_FREE;
	else
		self.currentStatus = self.STATUS_NOMOB_FREE;
	end
	
	self.m_Counters["SelectMonster"]:Full();
	
	if self.isArchorChoosen then
		self.x, self.y, self.z = GameAI.GetHostPos()
	end	
	
	self.pickuptimes = 0;
end


function AI_Helper:GetAnchorRange()
	return self.rangeChoosen
end


function AI_Helper:SetAnchorRange(rangeDegree)
	if type(rangeDegree) == nil then return end
	if rangeDegree == 0 then
		self.isArchorChoosen = false
		self.range = 800
		self.rangeChoosen = 0
	else
		self.isArchorChoosen = true
		if rangeDegree == 1 then
			self.range = 100
			self.rangeChoosen = 1
		elseif rangeDegree == 2 then
			self.range = 50
			self.rangeChoosen = 2
		elseif rangeDegree == 3 then
			self.range = 10
			self.rangeChoosen = 3
		else
			self.range = 50
		end
	end
	
	self.x, self.y, self.z = GameAI.GetHostPos()
end

function AI_Helper:CheckXYZ()
	if type(self.x) == "number" and type(self.y) == "number" and type(self.z) == "number" and type(self.range) == "number" then
		return true
	else
		return false
	end
end

function AI_Helper.UseSkill( index )
		local self = AI_Helper
		local ret = GameAI.UseSkill( index )
		if type(ret) == "number" then self.m_skillUsing = ret end
end

function AI_Helper.FinishSkill()
		local self = AI_Helper
		self.m_skillUsing = 0
end

function AI_Helper.StartAutoMove()
	local self = AI_Helper
	GameAI.StartAutoMove(self.x, self.y, self.z)
end

function AI_Helper:Tick(dwPeriod)
	---不可更改 开始
	if self.m_reportCounter:IncCounter(dwPeriod) then
			GameAI.Report2Svr();
			self.m_reportCounter:Reset();
	end
	---不可更改 结束

		
	---检测可拾取物品数量
	local dropNum=GameAI.CheckDrops(10);
	local havesomethingtopick;
	local pickuptimes=self.pickuptimes;
	local ispickuptoolong
	if self.m_Counters["pickuptime"]:IsFull() then
			ispickuptoolong=true
			self.m_Counters["pickuprefuse"]:IncCounter(dwPeriod)
	else
			ispickuptoolong=false
		if dropNum~=0 and pickuptimes==dropNum then
				self.m_Counters["pickuptime"]:IncCounter(dwPeriod)
		else
				self.m_Counters["pickuptime"]:Reset();
				self.pickuptimes=0;
		end	
	end
	
	if self.m_Counters["pickuprefuse"]:IsFull() then
			self.m_Counters["pickuprefuse"]:Reset();
			self.m_Counters["pickuptime"]:Reset();
			self.pickuptimes=0;
	end
	
	
	if dropNum~=0 and ispickuptoolong==false then 
		havesomethingtopick = true
	else
		havesomethingtopick = false
	end
	
	for i = 1,9 do
		local available, id = GameAI.IsSkillAvailable( i )
		if available then
			self.SKILL_IDs[i] = id
		else
			self.SKILL_IDs[i] = -1
		end
	end


	local target_id, target_hp = GameAI.GetTargetProp();
	local canAttack = GameAI.CanAttack();
	local isPreparingPickingUp = GameAI.IsPreparingPickingUp();
	local isPickingUp = GameAI.IsPickingUp();
	local isSkillDisabled = self.isSkillDisabled;
	local CanAutoMoving = GameAI.CanAutoMoving();

	local isPreparingSkill = false;
	for i = 1,9 do
		if GameAI.IsPreparingSkill( self.SKILL_IDs[i] ) then
			isPreparingSkill = true;
			break;
		end
	end

	local isUsingSkill = false;
	for i = 1,9 do
		if GameAI.IsUsingSkill( self.SKILL_IDs[i] ) then
			isUsingSkill = true;
			if self.m_Counters["UseSkill_"..i]:IsFull() then
				self.m_Counters["UseSkill_"..i]:Reset();
			end
			break;
		end
	end
	
	for i = 1,9 do
		if Check(self.SKILL_IDs[i]) == true then
			if GameAI.IsSkillCooling( self.SKILL_IDs[i] )==true and self.m_Counters["UseSkill_"..i]:IsFull() then
					self.m_Counters["UseSkill_"..i]:Reset();
			end
		end
	end
	
	local isSkillCan_1 = GameAI.CheckSkillCastCondition( self.SKILL_IDs[1] );
	local isSkillCan_2 = GameAI.CheckSkillCastCondition( self.SKILL_IDs[2] );
	local isSkillCan_3 = GameAI.CheckSkillCastCondition( self.SKILL_IDs[3] );
	local isSkillCan_4 = GameAI.CheckSkillCastCondition( self.SKILL_IDs[4] );
	local isSkillCan_5 = GameAI.CheckSkillCastCondition( self.SKILL_IDs[5] );
	local isSkillCan_6 = GameAI.CheckSkillCastCondition( self.SKILL_IDs[6] );
	local isSkillCan_7 = GameAI.CheckSkillCastCondition( self.SKILL_IDs[7] );
	local isSkillCan_8 = GameAI.CheckSkillCastCondition( self.SKILL_IDs[8] );
	local isSkillCan_9 = GameAI.CheckSkillCastCondition( self.SKILL_IDs[9] );
	
	local isSkillCool_1 = GameAI.IsSkillCooling( self.SKILL_IDs[1] );
	local isSkillCool_2 = GameAI.IsSkillCooling( self.SKILL_IDs[2] );
	local isSkillCool_3 = GameAI.IsSkillCooling( self.SKILL_IDs[3] );
	local isSkillCool_4 = GameAI.IsSkillCooling( self.SKILL_IDs[4] );
	local isSkillCool_5 = GameAI.IsSkillCooling( self.SKILL_IDs[5] );
	local isSkillCool_6 = GameAI.IsSkillCooling( self.SKILL_IDs[6] );
	local isSkillCool_7 = GameAI.IsSkillCooling( self.SKILL_IDs[7] );
	local isSkillCool_8 = GameAI.IsSkillCooling( self.SKILL_IDs[8] );
	local isSkillCool_9 = GameAI.IsSkillCooling( self.SKILL_IDs[9] );
	
	local skillCD_1 = self.m_Counters["UseSkill_1"]:IncCounter(dwPeriod);
	local skillCD_2 = self.m_Counters["UseSkill_2"]:IncCounter(dwPeriod);
	local skillCD_3 = self.m_Counters["UseSkill_3"]:IncCounter(dwPeriod);
	local skillCD_4 = self.m_Counters["UseSkill_4"]:IncCounter(dwPeriod);
	local skillCD_5 = self.m_Counters["UseSkill_5"]:IncCounter(dwPeriod);
	local skillCD_6 = self.m_Counters["UseSkill_6"]:IncCounter(dwPeriod);
	local skillCD_7 = self.m_Counters["UseSkill_7"]:IncCounter(dwPeriod);
	local skillCD_8 = self.m_Counters["UseSkill_8"]:IncCounter(dwPeriod);
	local skillCD_9 = self.m_Counters["UseSkill_9"]:IncCounter(dwPeriod);
  local NormalAttackCD = self.m_Counters["NormalAttack"]:IncCounter(dwPeriod);
  
	

	local tabCD = self.m_Counters["SelectMonster"]:IncCounter(dwPeriod);
	local pickupCD = self.m_Counters["PickUp"]:IncCounter(dwPeriod);
	local noResponse = false
	if self.currentStatus == self.STATUS_WAITING_SKILL then
		noResponse = self.m_Counters["WaitingSkill"]:IncCounter(dwPeriod);
	end
	local autoMoveCD = self.m_Counters["AutoMove"]:IncCounter(dwPeriod);
	local isAutoMoving = GameAI.IsAutoMoving();
	local outRange = false
	local inRange = false
	local cx, cy, cz = GameAI.GetHostPos()
	if self.isArchorChoosen and self:CheckXYZ() then
		local currentDistance = (cx-self.x)^2+(cy-self.y)^2+(cz-self.z)^2
		local rangeDistance = self.range^2
		if currentDistance > rangeDistance then
			outRange = true
		end
		if currentDistance < 1 then
			inRange = true
		end
	end
	
	---开始	
	local currentStatusProbabily = self.Status[self.currentStatus]


--[[
	---debug
	local print = LuaDebug
	local debug = true
	if debug then
	
		if canAttack 							then strcanAttack = 1 						else strcanAttack = 0 end
		if isPreparingSkill 			then strisPreparingSkill = 1 			else strisPreparingSkill = 0 end
		if isUsingSkill 					then strisUsingSkill = 1 					else strisUsingSkill = 0 end
		if isPreparingPickingUp 	then strisPreparingPickingUp = 1 	else strisPreparingPickingUp = 0 end
		if isPickingUp 						then strisPickingUp = 1 					else strisPickingUp = 0 end
		if isSkillCan 						then strisSkillCan = 1 						else strisSkillCan = 0 end
		if isSkillCool 						then strisSkillCool = 1 					else strisSkillCool = 0 end
		if tabCD									then strtabCD = 1									else strtabCD = 0 end
		if skill1CD								then strskill1CD = 1							else strskill1CD = 0 end
		if pickupCD								then strpickupCD = 1 							else strpickupCD = 0 end
		if noResponse							then strnoResponse = 1						else strnoResponse = 0 end
		
		gn = gn or 0
		local s = gn.." ".."s="..self.currentStatus.." "
		s = s.."can:".."canA="..strcanAttack.." iPS="..strisPreparingSkill.." iUS="..strisUsingSkill.." iPP="..strisPreparingPickingUp.." iP="..strisPickingUp
		s = s.." sCa="..strisSkillCan.." sCo="..strisSkillCool
		s = s.." nrs="..strnoResponse.." CD:".."t="..strtabCD.." skl="..strskill1CD.." pck="..strpickupCD.." "
		print( s )
	end
	---debug
--]]

	local i,nextStatus
	for i, nextStatus in pairs( currentStatusProbabily ) do
		local id = nextStatus.id
		local con = nextStatus.con
		local action = nextStatus.action
		local cd = nextStatus.cd
		local isThisStatus = true

		if con.canAttack ~= nil 						and con.canAttack ~= canAttack 												then isThisStatus = false end
		if con.isPreparingSkill ~= nil 			and con.isPreparingSkill ~= isPreparingSkill 					then isThisStatus = false end
		if con.isUsingSkill ~= nil 					and con.isUsingSkill ~= isUsingSkill 									then isThisStatus = false end
		if con.isPreparingPickingUp ~= nil 	and con.isPreparingPickingUp ~= isPreparingPickingUp 	then isThisStatus = false end
		if con.isPickingUp ~= nil 					and con.isPickingUp ~= isPickingUp 										then isThisStatus = false end
		if con.tabCD ~= nil 								and con.tabCD ~= tabCD 																then isThisStatus = false end
		if con.pickupCD ~= nil 							and con.pickupCD ~= pickupCD 													then isThisStatus = false end
		if con.noResponse ~= nil 						and con.noResponse ~= noResponse 											then isThisStatus = false end
		if con.autoMoveCD ~= nil						and con.autoMoveCD ~= autoMoveCD											then isThisStatus = false end
		if con.isAutoMoving ~= nil					and con.isAutoMoving ~= isAutoMoving									then isThisStatus = false end
		if con.outRange ~= nil							and con.outRange ~= outRange													then isThisStatus = false end
		if con.inRange ~= nil								and con.inRange ~= inRange														then isThisStatus = false end
		if con.isSkillDisabled ~= nil				and con.isSkillDisabled ~= isSkillDisabled						then isThisStatus = false end

		if con.isSkillCan_1 ~= nil 					and con.isSkillCan_1 ~= isSkillCan_1 									then isThisStatus = false end
		if con.isSkillCan_2 ~= nil 					and con.isSkillCan_2 ~= isSkillCan_2 									then isThisStatus = false end
		if con.isSkillCan_3 ~= nil 					and con.isSkillCan_3 ~= isSkillCan_3 									then isThisStatus = false end
		if con.isSkillCan_4 ~= nil 					and con.isSkillCan_4 ~= isSkillCan_4 									then isThisStatus = false end
		if con.isSkillCan_5 ~= nil 					and con.isSkillCan_5 ~= isSkillCan_5 									then isThisStatus = false end
		if con.isSkillCan_6 ~= nil 					and con.isSkillCan_6 ~= isSkillCan_6 									then isThisStatus = false end
		if con.isSkillCan_7 ~= nil 					and con.isSkillCan_7 ~= isSkillCan_7 									then isThisStatus = false end
		if con.isSkillCan_8 ~= nil 					and con.isSkillCan_8 ~= isSkillCan_8 									then isThisStatus = false end
		if con.isSkillCan_9 ~= nil 					and con.isSkillCan_9 ~= isSkillCan_9 									then isThisStatus = false end
		

		if con.isSkillCool_1 ~= nil 				and con.isSkillCool_1 ~= isSkillCool_1								then isThisStatus = false end
		if con.isSkillCool_2 ~= nil 				and con.isSkillCool_2 ~= isSkillCool_2								then isThisStatus = false end
		if con.isSkillCool_3 ~= nil 				and con.isSkillCool_3 ~= isSkillCool_3								then isThisStatus = false end
		if con.isSkillCool_4 ~= nil 				and con.isSkillCool_4 ~= isSkillCool_4								then isThisStatus = false end
		if con.isSkillCool_5 ~= nil 				and con.isSkillCool_5 ~= isSkillCool_5								then isThisStatus = false end
		if con.isSkillCool_6 ~= nil 				and con.isSkillCool_6 ~= isSkillCool_6								then isThisStatus = false end
		if con.isSkillCool_7 ~= nil 				and con.isSkillCool_7 ~= isSkillCool_7								then isThisStatus = false end
		if con.isSkillCool_8 ~= nil 				and con.isSkillCool_8 ~= isSkillCool_8								then isThisStatus = false end
		if con.isSkillCool_9 ~= nil 				and con.isSkillCool_9 ~= isSkillCool_9								then isThisStatus = false end

		if con.skillCD_1 ~= nil 						and con.skillCD_1 ~= skillCD_1 												then isThisStatus = false end
		if con.skillCD_2 ~= nil 						and con.skillCD_2 ~= skillCD_2 												then isThisStatus = false end
		if con.skillCD_3 ~= nil 						and con.skillCD_3 ~= skillCD_3 												then isThisStatus = false end
		if con.skillCD_4 ~= nil 						and con.skillCD_4 ~= skillCD_4 												then isThisStatus = false end
		if con.skillCD_5 ~= nil 						and con.skillCD_5 ~= skillCD_5 												then isThisStatus = false end
		if con.skillCD_6 ~= nil 						and con.skillCD_6 ~= skillCD_6 												then isThisStatus = false end
		if con.skillCD_7 ~= nil 						and con.skillCD_7 ~= skillCD_7 												then isThisStatus = false end
		if con.skillCD_8 ~= nil 						and con.skillCD_8 ~= skillCD_8 												then isThisStatus = false end
		if con.skillCD_9 ~= nil 						and con.skillCD_9 ~= skillCD_9 												then isThisStatus = false end
		if con.target_id ~= nil 						and con.target_id ~= target_id 												then isThisStatus = false end
		if con.havesomethingtopick ~= nil 	and con.havesomethingtopick ~= havesomethingtopick		then isThisStatus = false end
    if con.CanAutoMoving ~= nil 	      and con.CanAutoMoving ~= CanAutoMoving		            then isThisStatus = false end
    if con.NormalAttackCD ~= nil 	      and con.NormalAttackCD ~= NormalAttackCD		          then isThisStatus = false end
    
		if isThisStatus then
		
			---debug
			---if self.currentStatus == 8 and con.canAttack==false and con.isAutoMoving==false then
			---	GameAI.HealMp()
			---end
			---debug
		
		
		
			self.currentStatus = id;
				---debug
				---	print("--probability:",id,con,action,cd)
				
				---debug

			if action ~= nil then
				local act
				for _,act in pairs(action) do
					local arg1,arg2,arg3 = nil,nil,nil
					if act.arg1 ~= nil then arg1 = act.arg1 end
					if act.arg2 ~= nil then arg2 = act.arg2 end
					if act.arg3 ~= nil then arg3 = act.arg3 end
					act.func( arg1, arg2, arg3 )
				end
			end		
			
			if cd ~= nil then
				self.m_Counters[cd]:Reset()
			end
			
			if cd=="PickUp" then 
				self.pickuptimes=dropNum
			else
				self.pickuptimes=0
			end
			
			break;
		end
	end
	

	
	---取得当前角色状态
	local hp,mp,stamina = GameAI.GetHostProp();
	---LuaDebug("tick".. dwPeriod.." "..hp_Prop.hp.." "..hp_Prop.mp.. "\n");    
	
	
	---吃血瓶
	if  hp < self.m_hpRate and  self.m_Counters.HealHp:IncCounter(dwPeriod) then
			---LuaDebug("heal hp\n");   
			GameAI.HealHp(); 
			self.m_Counters.HealHp:Reset();
	end

	---吃魔瓶
	if  mp < self.m_mpRate and  self.m_Counters.HealMp:IncCounter(dwPeriod) then
			---LuaDebug("heal mp\n");  
			GameAI.HealMp();
			self.m_Counters.HealMp:Reset();  
	end
	
	---吃精力药
	if  stamina < self.m_staRate and  self.m_Counters.HealStamina:IncCounter(dwPeriod) then
			GameAI.HealStamina();
			self.m_Counters.HealStamina:Reset();  
	end
	
	---使用物品20091020新增
	for i = 1,3 do
			if  self.m_Counters["UseItem_"..i]:IncCounter(dwPeriod) then  
					GameAI.UseItem(i); 
					self.m_Counters["UseItem_"..i]:Reset();
			end
	end
	

	---判断是否卡住了

	if type(target_hp) == "number" then
		if target_id == self.m_targetSelecting then
			if target_hp==self.m_targetHp then
				self.m_Counters["Obstacle"]:IncCounter(dwPeriod);
			else
				self.m_Counters["Obstacle"]:Reset();
				self.m_targetSelecting = target_id;
			end	
		else
			self.m_Counters["Obstacle"]:Reset();
			self.m_targetSelecting = target_id;
		end
	end
	

	

	if self.m_Counters["Obstacle"]:IsFull() then
			GameAI.SelectMonster();
			self.m_Counters["Obstacle"]:Reset();
			self.m_BadID=target_id
	end
	
	if target_id==self.m_BadID then
		if target_hp==self.m_targetHp then
			self.m_Counters["happenagain"]:IncCounter(dwPeriod);
		else
			self.m_Counters["happenagain"]:Reset();
			self.m_BadID = 0;
		end
	end

	if self.m_Counters["happenagain"]:IsFull() then	 
			GameAI.SelectMonster();
			self.m_Counters["Obstacle"]:Reset();
			self.m_Counters["happenagain"]:Reset();
	end
		
	
	
	self.m_targetHp = target_hp;
end

function AI_Helper:TickFly(dwPeriod)

---取得当前角色状态
	local hp,mp,stamina = GameAI.GetHostProp();
	---LuaDebug("tick".. dwPeriod.." "..hp_Prop.hp.." "..hp_Prop.mp.. "\n");    
	
	
	---吃血瓶
	if  hp < self.m_hpRate and  self.m_Counters.HealHp:IncCounter(dwPeriod) then
			---LuaDebug("heal hp\n");   
			GameAI.HealHp(); 
			self.m_Counters.HealHp:Reset();
	end

	---吃魔瓶
	if  mp < self.m_mpRate and  self.m_Counters.HealMp:IncCounter(dwPeriod) then
			---LuaDebug("heal mp\n");  
			GameAI.HealMp();
			self.m_Counters.HealMp:Reset();  
	end
	
	---吃精力药
	if  stamina < self.m_staRate and  self.m_Counters.HealStamina:IncCounter(dwPeriod) then
			GameAI.HealStamina();
			self.m_Counters.HealStamina:Reset();  
	end
	

	
end

function AI_Helper:SetSkillDisabled( value )
		self.isSkillDisabled = value
end

function AI_Helper:IsSkillDisabled()
		return self.isSkillDisabled
end

function AI_Helper:SetHpDelay(delay)
		self.m_Counters["HealHp"]:SetPeriod(delay);
end

function AI_Helper:GetHpDelay()
	  return self.m_Counters["HealHp"]:GetPeriod();
end

function AI_Helper:SetHpRate(rate)
		self.m_hpRate = rate*0.01;
end

function AI_Helper:GetHpRate()
		return self.m_hpRate*100;
end

function AI_Helper:SetMpDelay(delay)
		self.m_Counters["HealMp"]:SetPeriod(delay);
end

function AI_Helper:GetMpDelay(delay)
		return self.m_Counters["HealMp"]:GetPeriod();
end

function AI_Helper:SetMpRate(rate)
		self.m_mpRate = rate*0.01;
end

function AI_Helper:GetMpRate()
		return self.m_mpRate*100;
end

function AI_Helper:GetSkillDelay(index)
	if type(index) == "number" then
		if (index == 1 or index == 2 or index == 3 or index == 4) or (index == 5 or index == 6 or index == 7 or index == 8 or index == 9 ) then
			return self.m_Counters["UseSkill_"..index]:GetPeriod();
		end
	end
	return 0
end

function AI_Helper:SetSkillDelay(index, delay)
	if type(index) == "number" then
		if (index == 1 or index == 2 or index == 3 or index == 4) or (index == 5 or index == 6 or index == 7 or index == 8 or index == 9 ) then
			if type(delay) == "number" and delay >= 0 then
				self.m_Counters["UseSkill_"..index]:SetPeriod(delay);
			end
		end
	end
end

function AI_Helper:GetUseItemDelay(index)
	if type(index) == "number" then
		if (index == 1 or index == 2 or index == 3) then
			return self.m_Counters["UseItem_"..index]:GetPeriod();
		end
	end
	return 0
end

function AI_Helper:SetUseItemDelay(index, delay)
	if type(index) == "number" then
		if (index == 1 or index == 2 or index == 3) then
			if type(delay) == "number" and delay >= 0 then
				self.m_Counters["UseItem_"..index]:SetPeriod(delay);
			end
		end
	end
end


