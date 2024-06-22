---------------------------------------------------------------
--  created:   2010.2.23
--  author:    zt
--
--  成就系统配置文件。
---------------------------------------------------------------
local STRING_ERROR  = "error"
local Format        = string.format
local GameAI       = GameAI
-- GameAI.GetMonsterName(tid)        --获取怪物名字。
-- GameAI.GetItemName(tid)           --获取物品名字（通过背包）。
-- GameAI.GetTaskName(id)            --获取任务名字。
-- GameAI.GetBattleName(tid)         --获取战场名字。
-- GameAI.GetReputationName(id)      --获取声望名字。
-- GameAI.GetSkillName(id)           --获取技能名字。
-- GameAI.GetProduceName(tid,index)  --获取生产物品名字，传入参数：配方id，第几个物品,index:zerobased。
-- GameAI.GetMoneyBagTypeName(id)    --获取跑商交易币名字。
-- GameAI.GetProfName(id)            --获取职业名字。
-- GameAI.GetAchievementName(id)     --获取成就名字。
-- GameAI.GetAchCondDataInt(p)       --获取成就中某个条件的整数数据，参数p: 条件数据(userdata)。

AchievementCfg              = {}

function AchievementCfg:GetSelf()
    return self
end

--获取成就某个条件的描述文本
--idAchivement  :成就id;
--iCondition    :成就条件的索引（第几个条件，1 based）
--bFinish       :是否已经完成，
--p             :条件数据(userdata)
function AchievementCfg:GetCondDesc(idAchievement,iCondition,bFinish,p)
    local condition =   idAchievement and
                        iCondition and
                        self.achievement and
                        self.achievement[idAchievement] and
                        self.achievement[idAchievement].conds and
                        self.achievement[idAchievement].conds[iCondition]
    if not condition then
        return STRING_ERROR
    end
    local condsCommon = condition.id and self.conds and self.conds[condition.id]
    if not condsCommon then
        return STRING_ERROR
    end
    local descFormat =  condition.descFormat or condsCommon.descFormat
    if not descFormat then
        return STRING_ERROR
    end
    local funcDesc = condition.funcDesc or condsCommon.funcDesc
    if not funcDesc then
        return STRING_ERROR
    end
    return funcDesc(descFormat, condition.params or {}, bFinish, p) or STRING_ERROR
end

--获取成就某个条件的详细信息
--idAchivement  :成就id;
--iCondition    :成就条件的索引（第几个条件，1 based）
--bFinish       :是否已经完成，
--p             :条件数据(userdata)
function AchievementCfg:GetCondInfo(idAchievement,iCondition,bFinish,p)
    local condition =   idAchievement and
                        iCondition and
                        self.achievement and
                        self.achievement[idAchievement] and
                        self.achievement[idAchievement].conds and
                        self.achievement[idAchievement].conds[iCondition]
    if not condition then
        return STRING_ERROR
    end
    local condsCommon = condition.id and self.conds and self.conds[condition.id]
    if not condsCommon then
        return STRING_ERROR
    end
    local infoFormat =  condition.infoFormat or condsCommon.infoFormat
    if not infoFormat then
        return STRING_ERROR
    end
    local funcInfo = condition.funcInfo or condsCommon.funcInfo
    if not funcInfo then
        return STRING_ERROR
    end
    return funcInfo(infoFormat, condition.params or {}, bFinish, p) or STRING_ERROR
end

--获取成就进度
--idAchivement  :成就id;
--iCondition    :成就条件的索引（第几个条件，1 based）
--bFinish       :是否已经完成，
--p             :条件数据(userdata)
function AchievementCfg:GetCondProg(idAchievement,iCondition,bFinish,p)
    local condition =   idAchievement and
                        iCondition and
                        self.achievement and
                        self.achievement[idAchievement] and
                        self.achievement[idAchievement].conds and
                        self.achievement[idAchievement].conds[iCondition]
    if not condition then
        return nil
    end
    local condsCommon = condition.id and self.conds and self.conds[condition.id]
    if not condsCommon then
        return nil
    end

    local funcProg = condition.funcProg or condsCommon.funcProg
    if not funcProg then
        return nil
    end
    return funcProg(condition.params or {}, bFinish, p)
end


--获取飞升状态（0-不显示、1-显示为飞升）
function AchievementCfg:GetRebornDesc(id)
	if id == 0 then
	return ""
	elseif id ==1 then
	return "Thăng thiên"
	end
end

--获取炼器结果（thành công、thành công）
function AchievementCfg:GetRefineDesc(id)
	if id == 1 then
	return "Thành Công"
	else
	return "Thất Bại"
	end
end

--成就分类
AchievementCfg.class =
{
    [1] = 
    {
        name = "Tăng trưởng",
        
         [1] = 
         {
         	name = "Cấp",
         },
         [2] = 
         {
         	name = "Tài phú",
         },
         [3] = 
         {
         	name = "Danh vọng",
         },
         [4] = 
         {
         	name = "Môn phái",
         },
      },

    [2] = 
    {
        name = "Chiến đấu",
         [1] = 
         {
         	name = "PVE",
         },
         [2] = 
         {
         	name = "PVP",
         },
         [3] = 
         {
         	name = "Chiến trường",
         },
         [4] = 
         {
         	name = "Boss Thế giới",
         },
         [5] = 
         {
         	name = "Hỗn độn đại chiến",
         },
         [6] = 
         {
         	name = "Thiên không chi thành",
         },
         [7] = 
         {
         	name = "Thiên Giới Diễn Vũ",
         },
      },

    [3] = 
    {
        name = "Nhiệm vụ",
         [1] = 
         {
         	name = "Nhiệm vụ phổ thông",
         },
         [2] = 
         {
         	name = "Nhiệm vụ Nhân Tộc",
         },
         [3] = 
         {
         	name = "Nhiệm vụ Thần Duệ",
         },
         [4] = 
         {
         	name = "Linh Tộc Danh Vọng",
         },
      },

    [4] = 
    {
        name = "Vật phẩm",
         [1] = 
         {
         	name = "Thời trang",
         },
         [2] = 
         {
         	name = "Trang sức",
         },
         [3] = 
         {
         	name = "Cẩm nang",
         },
         [4] = 
         {
         	name = "Cương khí",
         },
         [5] = 
         {
         	name = "Nguyên hồn",
         },
         [6] = 
         {
         	name = "Đặc biệt",
         },
      },

    [5] = 
    {
        name = "Sản xuất",
         [1] = 
         {
         	name = "Trang bị luyện khí",
         },
         [2] = 
         {
         	name = "Trang bị huyết tế",
         },
         [3] = 
         {
         	name = "Cá nhân sản xuất",
         },
         [4] = 
         {
         	name = "Thú nuôi sinh sản",
         },
      },

    [6] = 
    {
        name = "Đặc biệt",

    },
}

--成就的条件
AchievementCfg.conds = 
{
    --人物等级条件：职业，级别
    [1] = 
    {
        descFormat = "%s đẳng cấp đạt %d (%d/1)", 
        infoFormat = "%s đẳng cấp đạt %d",
        funcDesc = function(strFormat,params,bFinish,p)
            local prof = params[1] and AchievementCfg:GetRebornDesc(params[1]) or STRING_ERROR
            local level = params[2] or -1
            local iFinish = bFinish and 1 or 0
            return Format(strFormat,prof,level,iFinish)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
            local prof = params[1] and AchievementCfg:GetRebornDesc(params[1]) or STRING_ERROR
            local level = params[2] or -1
            return Format(strFormat,prof,level)
        end,
		funcProg = function(params,bFinish,p)
			local iFinish = bFinish and 1 or 0
            return iFinish,1
		end,
    },

    --钱数达到：钱的数量
    [2] = 
    {
        descFormat = "Vàng có %d (%d/1)",
        infoFormat = "Vàng có %d",
        funcDesc = function(strFormat,params,bFinish,p)
            local iFinish = bFinish and 1 or 0
            local par = params[1] * 0.0001
            return Format(strFormat, par or -1, iFinish)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
            local par = params[1] * 0.0001
            return Format(strFormat, par or -1)
        end,
		funcProg = function(params,bFinish,p)
			local iFinish = bFinish and 1 or 0
            return iFinish,1
		end,
    },
    
    --声望达到：声望id，声望值
    [3] = 
    {
        descFormat = "%s đạt %d (%d/1)",
        infoFormat = "%s đạt %d (%d/1)",
        funcDesc = function(strFormat,params,bFinish,p)
            local name = params[1] and GameAI.GetReputationName(params[1]) or STRING_ERROR
            local num = params[2] or -1
            local iFinish = bFinish and 1 or 0
            return Format(strFormat, name, num, iFinish)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
            local name = params[1] and GameAI.GetReputationName(params[1]) or STRING_ERROR
            local num = params[2] or -1
            return Format(strFormat, name, num)
        end,
		funcProg = function(params,bFinish,p)
			local iFinish = bFinish and 1 or 0
            return iFinish,1
		end,
    },
    
    --杀怪：怪物id
    [4] = 
    {
        descFormat = "Tiêu diệt %s (%d/1)",
        infoFormat = "Tiêu diệu %s",
        funcDesc = function(strFormat,params,bFinish,p)
            local name = params[1] and GameAI.GetMonsterName(params[1]) or STRING_ERROR
            local iFinish = bFinish and 1 or 0
            return Format(strFormat,name,iFinish)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
            local name = params[1] and GameAI.GetMonsterName(params[1]) or STRING_ERROR
            return Format(strFormat,name)
        end,
		funcProg = function(params,bFinish,p)
			local iFinish = bFinish and 1 or 0
            return iFinish,1
		end,
    },
    
    --Giá trị thiện ác ：善恶值
    [5] = 
    {
        descFormat = "Thiện ác đạt %d (%d/1)",
        infoFormat = "Thiện ác đạt %d",
        funcDesc = function(strFormat,params,bFinish,p)
            local iFinish = bFinish and 1 or 0
            return Format(strFormat, params[1] or -1, iFinish)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
            return Format(strFormat, params[1] or -1)
        end,
		funcProg = function(params,bFinish,p)
			local iFinish = bFinish and 1 or 0
            return iFinish,1
		end,
    },
    
    --完成任务：任务id
    [6] = 
    {
        descFormat = "Hoàn Thành%s (%d/1)",
        infoFormat = "Hoàn Thành %s",
        funcDesc = function(strFormat,params,bFinish,p)
            local name = params[1] and GameAI.GetTaskName(params[1]) or STRING_ERROR
            local iFinish = bFinish and 1 or 0
            return Format(strFormat, name, iFinish)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
            local name = params[1] and GameAI.GetTaskName(params[1]) or STRING_ERROR
            return Format(strFormat, name)
        end,
		funcProg = function(params,bFinish,p)
			local iFinish = bFinish and 1 or 0
            return iFinish,1
		end,
    },
    
      --精炼：装备级别，精炼级别
    [7] = 
    {
        descFormat = "Luyện khí+%d %s (%d/1)",
        infoFormat = "Luyện khí+%d %s ",
        funcDesc = function(strFormat,params,bFinish,p)
            local par1 = params[2] - params[1]
            local par2 = params[1] + 1
            local prof = par1 and AchievementCfg:GetRefineDesc(par1) or STRING_ERROR
            local iFinish = bFinish and 1 or 0
            return Format(strFormat, par2, prof, iFinish)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
            local par1 = params[2] - params[1]
            local par2 = params[1] + 1            
            local prof = par1 and AchievementCfg:GetRefineDesc(par1) or STRING_ERROR
            local iFinish = bFinish and 1 or 0
            return Format(strFormat, par2, prof)
        end,
		funcProg = function(params,bFinish,p)
			local iFinish = bFinish and 1 or 0
            return iFinish,1
		end,
    },
    
        ---宠物星等达到
    [8] = 
    {
        descFormat = "Tinh đẳng thú nuôi %d (%d/1)",
        infoFormat = "Tinh đẳng thú nuôi %d",
        funcDesc = function(strFormat,params,bFinish,p)
            local iFinish = bFinish and 1 or 0
            return Format(strFormat, params[1] or -1, iFinish)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
            return Format(strFormat, params[1] or -1)
        end,
		funcProg = function(params,bFinish,p)
			local iFinish = bFinish and 1 or 0
            return iFinish,1
		end,
    },
    
    ---法宝血炼值达到
    [9] = 
    {
        descFormat = "Huyết luyện %d (%d/1)",
        infoFormat = "Huyết luyện %d",
        funcDesc = function(strFormat,params,bFinish,p)
            local iFinish = bFinish and 1 or 0
            return Format(strFormat, params[1] or -1, iFinish)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
            return Format(strFormat, params[1] or -1)
        end,
		funcProg = function(params,bFinish,p)
			local iFinish = bFinish and 1 or 0
            return iFinish,1
		end,
    },
    
    --生产：配方id，第几个物品
    [10] = 
    {
        descFormat = "Sản xuất %s (%d/1)",
        infoFormat = "Sản xuất %s",
        funcDesc = function(strFormat,params,bFinish,p)
            local name = params[2] and GameAI.GetItemName(params[2]) or STRING_ERROR
            local iFinish = bFinish and 1 or 0
            return Format(strFormat,name,iFinish)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
            local name = params[2] and GameAI.GetItemName(params[2]) or STRING_ERROR
            return Format(strFormat,name)
		end,
		funcProg = function(params,bFinish,p)
			local iFinish = bFinish and 1 or 0
            return iFinish,1
		end,
    },
    
     --装备物品：物品id
    [11] = 
    {
        descFormat = " %s (%d/1)",
        infoFormat = " %s",
        funcDesc = function(strFormat,params,bFinish,p)
            local name = params[1] and GameAI.GetItemName(params[1]) or STRING_ERROR
            local iFinish = bFinish and 1 or 0
            return Format(strFormat,name,iFinish)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
            local name = params[1] and GameAI.GetItemName(params[1]) or STRING_ERROR
            return Format(strFormat,name)
        end,
		funcProg = function(params,bFinish,p)
			local iFinish = bFinish and 1 or 0
            return iFinish,1
		end,
    },
    
     --完成成就：成就id
    [12] = 
    {
        descFormat = "Đạt %s (%d/1)",
        infoFormat = "Đạt %s",
        funcDesc = function(strFormat,params,bFinish,p)
            local name = params[1] and GameAI.GetAchievementName(params[1]) or STRING_ERROR
            local iFinish = bFinish and 1 or 0
            return Format(strFormat, name, iFinish)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
            local name = params[1] and GameAI.GetAchievementName(params[1]) or STRING_ERROR
            return Format(strFormat, name)
        end,
		funcProg = function(params,bFinish,p)
			local iFinish = bFinish and 1 or 0
            return iFinish,1
		end,
    },

    --完成任务次数：任务id，次数
    [1000] = 
    {
        descFormat = "Hoàn thành %s (%d/%d) lần",
        infoFormat = "Hoàn thành %s (%d/%d) lần",
        size = 2,
        funcDesc = function(strFormat,params,bFinish,p)
            local name = params[1] and GameAI.GetTaskName(params[1]) or STRING_ERROR
            local nFinish = bFinish and params[2] or GameAI.GetAchCondDataInt(p) or -1
            local num = params[2] or -1
            return Format(strFormat,name,nFinish,num)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
            local name = params[1] and GameAI.GetTaskName(params[1]) or STRING_ERROR
            local nFinish = bFinish and params[2] or GameAI.GetAchCondDataInt(p) or -1
            local num = params[2] or -1
            return Format(strFormat,name,nFinish,num)
        end,
		funcProg = function(params,bFinish,p)
			local nFinish = bFinish and params[2] or GameAI.GetAchCondDataInt(p) or -1
            local num = params[2] or -1
            return nFinish,num
		end,
    },
    
    --杀怪次数：怪物id，次数
    [1001] = 
    {
        descFormat = "Tiêu diệt %s (%d/%d) lần",
        infoFormat = "Tiêu diệt %s (%d/%d) lần",
        size = 2,
        funcDesc = function(strFormat,params,bFinish,p)
            local name = params[1] and GameAI.GetMonsterName(params[1]) or STRING_ERROR
            local nFinish = bFinish and params[2] or GameAI.GetAchCondDataInt(p) or -1
            local num = params[2] or -1
            return Format(strFormat,name,nFinish,num)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
            local name = params[1] and GameAI.GetMonsterName(params[1]) or STRING_ERROR
            local nFinish = bFinish and params[2] or GameAI.GetAchCondDataInt(p) or -1
            local num = params[2] or -1
            return Format(strFormat,name,nFinish,num)
        end,
		funcProg = function(params,bFinish,p)
			local nFinish = bFinish and params[2] or GameAI.GetAchCondDataInt(p) or -1
            local num = params[2] or -1
            return nFinish,num
		end,
    },

    --生产配方次数：配方id，第几个物品，次数
    [1002] = 
    {
        descFormat = "Sản xuất %s (%d/%d)",
        infoFormat = "Sản xuất %s (%d/%d)",
        size = 2,
        funcDesc = function(strFormat,params,bFinish,p)
            local name = params[2] and GameAI.GetItemName(params[2]) or STRING_ERROR
            local nFinish = bFinish and params[3] or GameAI.GetAchCondDataInt(p) or -1
            local num = params[3] or -1
            return Format(strFormat,name,nFinish,num)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
            local name = params[2] and GameAI.GetItemName(params[2]) or STRING_ERROR
            local nFinish = bFinish and params[3] or GameAI.GetAchCondDataInt(p) or -1
            local num = params[3] or -1
            return Format(strFormat,name,nFinish,num)
        end,
		funcProg = function(params,bFinish,p)
			local nFinish = bFinish and params[2] or GameAI.GetAchCondDataInt(p) or -1
            local num = params[3] or -1
            return nFinish,num
		end,
    },

    --参加战场次数：战场id，次数
    [1003] = 
    {
        descFormat = "Tham gia %s (%d/%d)",
        infoFormat = "Tham gia %s (%d/%d)",
        size = 2,
        funcDesc = function(strFormat,params,bFinish,p)
            local name = params[1] and GameAI.GetBattleName(params[1]) or STRING_ERROR
            local nFinish = bFinish and params[2] or GameAI.GetAchCondDataInt(p) or -1
            local num = params[2] or -1
            return Format(strFormat,name,nFinish,num)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
            local name = params[1] and GameAI.GetBattleName(params[1]) or STRING_ERROR
            local nFinish = bFinish and params[2] or GameAI.GetAchCondDataInt(p) or -1
            local num = params[2] or -1
            return Format(strFormat,name,nFinish,num)
        end,
		funcProg = function(params,bFinish,p)
			local nFinish = bFinish and params[2] or GameAI.GetAchCondDataInt(p) or -1
            local num = params[2] or -1
            return nFinish,num
		end,
    },
  
    --死亡次数：次数
    [1004] = 
    {
        descFormat = "Tử vong (%d/%d)",
        infoFormat = "Tử vong (%d/%d)",
        size = 2,
        funcDesc = function(strFormat,params,bFinish,p)
            local nFinish = bFinish and params[1] or GameAI.GetAchCondDataInt(p) or -1
            local num = params[1] or -1
            return Format(strFormat,nFinish,num)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
            local nFinish = bFinish and params[1] or GameAI.GetAchCondDataInt(p) or -1
            local num = params[1] or -1
            return Format(strFormat,nFinish,num)
        end,
	funcProg = function(params,bFinish,p)
		local nFinish = bFinish and params[2] or GameAI.GetAchCondDataInt(p) or -1
        	local num = params[1] or -1
        	return nFinish,num
	end,
    },
    
    [1005] = 
    {
        descFormat = "Luyện khí+%d (%d/%d)lần",
        infoFormat = "Luyện khí+%d (%d/%d)lần",
        size = 2,
        funcDesc = function(strFormat,params,bFinish,p)
       		  local par1 = params[2]
            local nFinish = bFinish and params[3] or GameAI.GetAchCondDataInt(p) or -1
            local num = params[3] or -1
						return Format(strFormat, par1, nFinish, num)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
       		  local par1 = params[2]
            local nFinish = bFinish and params[3] or GameAI.GetAchCondDataInt(p) or -1
            local num = params[3] or -1
						return Format(strFormat, par1, nFinish, num)
        end,
	funcProg = function(params,bFinish,p)
			local nFinish = bFinish and params[2] or GameAI.GetAchCondDataInt(p) or -1
            local num = params[3] or -1
            return nFinish,num
	end,
    },
    --活跃度达到100
    [16] = 
    {
        descFormat = "Độ tích cực đạt 100 (%d/1)",
        infoFormat = "Độ tích cực đạt 100 ",
		funcDesc = function(strFormat,params,bFinish,p)
            local iFinish = bFinish and 1 or 0
            return Format(strFormat, iFinish)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
            return Format(strFormat)
        end,
		funcProg = function(params,bFinish,p)
			local iFinish = bFinish and 1 or 0
            return iFinish,1
		end,
    },
    
    --连续七天活跃度达到100次数：次数
    [1006] = 
    {
        descFormat = "Đạt 100 điểm hoạt động liên tục trong 7 ngày (%d/%d)",
        infoFormat = "Đạt 100 điểm hoạt động liên tục trong 7 ngày (%d/%d)",
        funcDesc = function(strFormat,params,bFinish,p)
            local nFinish = bFinish and params[1] or GameAI.GetAchCondDataInt(p) or -1
            local num = params[1] or -1
            return Format(strFormat,nFinish,num)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
            local nFinish = bFinish and params[1] or GameAI.GetAchCondDataInt(p) or -1
            local num = params[1] or -1
            return Format(strFormat,nFinish,num)
        end,
		funcProg = function(params,bFinish,p)
			local nFinish = bFinish and params[2] or GameAI.GetAchCondDataInt(p) or -1
            local num = params[2] or -1
            return nFinish,num
		end,
    },
    
        -- 流水席战场Tiêu diệt玩家 int(1:连杀,2:多杀) int(killcnt)
    [17] = 
    {
        descFormat = "%s%d người (%d/1)",
        infoFormat = "%s%d người ",
	      funcDesc = function(strFormat,params,bFinish,p)
	      		local iType
	      		if params[1] == 2 then
	      			iType = "Tiêu diệt liên tục trong thời gian ngắn"
	      		else
	      			iType = "Liên sát"
	      		end
	      		local num = params[2] or -1
            local iFinish = bFinish and 1 or 0
            return Format(strFormat, iType, num, iFinish)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
	      		local iType
	      		if params[1] == 2 then
	      			iType = "Tiêu diệt liên tục trong thời gian ngắn"
	      		else
	      			iType = "Liên sát"
	      		end
	      		local num = params[2] or -1
            return Format(strFormat,iType,num)
        end,
        funcProg = function(params,bFinish,p)
        	local iFinish = bFinish and 1 or 0
        	return iFinish,1
	end,
    },
	
        --迎护凯旋活动日常任务: 次数
    [1007]   =
    {
        descFormat = "Hoàn thành %s (%d/%d) lần",
        infoFormat = "Hoàn thành %s (%d/%d) lần",
        size=2,
        funcDesc = function(strFormat,params,bFinish,p)
            local name    = "Kích thước đột phá Hoạt động Nhiệm vụ hàng ngày" or STRING_ERROR
			if(name == STRING_ERROR)then
            return "Không trong thời gian diễn ra sự kiện"
            else
            local nFinish = bFinish and params[1] or GameAI.GetAchCondDataInt(p) or -1
            local num     = params[1] or -1
            return Format(strFormat,name,nFinish,num)
			end
        end,
        funcInfo = function(strFormat,params,bFinish,p)
            local name    = "Kích thước đột phá Hoạt động Nhiệm vụ hàng ngày" or STRING_ERROR
            local nFinish = bFinish and params[1] or GameAI.GetAchCondDataInt(p) or -1
            local num     = params[1] or -1
            return Format(strFormat,name,nFinish,num)
        end,
		funcProg = function(params,bFinish,p)
			local nFinish = bFinish and params[1] or GameAI.GetAchCondDataInt(p) or -1
            local num     = params[1] or -1
            return nFinish,num
		end,
    },

    -- 流水席战场完成 int(1:只杀人,2:只杀怪,3:一次不死)
    [18]   =
    {
        descFormat = "%s Đạt mục tiêu (%d/1)",
        infoFormat = "%s Đạt mục tiêu ",
	      funcDesc = function(strFormat,params,bFinish,p)
	      		local iType
	      		if params[1]==1 then
	      			iType = "Chỉ bằng cách giết người chơi"
	      		elseif params[1]==2 then
	      			iType = "Chỉ bằng cách giết quái vật"
	      		elseif params[1]==3 then
	      			iType = "Không bao giờ chết một lần"
	      		end
            local iFinish = bFinish and 1 or 0
            return Format(strFormat, iType, iFinish)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
	      		local iType
	      		if params[1]==1 then
	      			iType = "Chỉ bằng cách giết người chơi"
	      		elseif params[1]==2 then
	      			iType = "Chỉ bằng cách giết quái vật"
	      		elseif params[1]==3 then
	      			iType = "Không bao giờ chết một lần"
	      		end
            return Format(strFormat, iType)
        end,
        funcProg = function(params,bFinish,p)
        	local iFinish = bFinish and 1 or 0
        	return iFinish,1
	end,
    },
    -- 流水席战场终结多杀 int(人数)
    [19]   =
    {
        descFormat = "Kết thúc số liên sát ở người chơi %d trở lên (%d/1)",
        infoFormat = "Kết thúc số liên sát ở người chơi % trở lên ",
	      funcDesc = function(strFormat,params,bFinish,p)
	      		local num = params[1] or -1
            local iFinish = bFinish and 1 or 0
            return Format(strFormat, num, iFinish)
        end,
        funcInfo = function(strFormat,params,bFinish,p)
	      		local num = params[1] or -1
            return Format(strFormat, num)
        end,
        funcProg = function(params,bFinish,p)
        	local iFinish = bFinish and 1 or 0
        	return iFinish,1
	end,
    },
}

--成就列表
AchievementCfg.achievement=
{
    msg = "%s hoàn thành %s",

    [1]=
    {
        name = "^00ff00Mộng Đổng Trĩ Tử^00ff00",
        desc = "        Cấp độ nhân vật đạt 10 cấp",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 1,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1,
              params={0,10,},
--            descFormat="0,10,", 
--            infoFormat = "%s đạt tới cấp độ %d (%d/1)",
            },
        }, 
    },

    [2]=
    {
        name = "^00ff00Nhất Tri Bán Giải^00ff00",
        desc = "         Cấp độ nhân vật đạt 20 cấp",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 1,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1,
              params={0,20,},
--            descFormat="0,20,", 
--            infoFormat = "%s đạt tới cấp độ %d (%d/1)",
            },
        }, 
    },

    [3]=
    {
        name = "^00ff00Lược Khuy Môn Kính^00ff00",
        desc = "        Cấp độ nhân vật đạt 30 cấp",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 1,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
		msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1,
              params={0,30,},
--            descFormat="0,30,", 
--            infoFormat = "%s đạt tới cấp độ %d (%d/1)",
            },
        }, 
    },

    [4]=
    {
        name = "^00ff00Sơ Xuất Mao Lư^00ff00",
        desc = "        Cấp độ nhân vật đạt 40 cấp",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 1,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1,
              params={0,40,},
--            descFormat="0,40,", 
--            infoFormat = "%s đạt tới cấp độ %d (%d/1)",
            },
        }, 
    },

    [5]=
    {
        name = "^00ff00Giá Khinh Tựu Thục^00ff00",
        desc = "        Cấp độ nhân vật đạt cấp 50",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 1,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1,
              params={0,50,},
--            descFormat="0,50,", 
--            infoFormat = "%s đạt tới cấp độ %d (%d/1)",
            },
        }, 
    },

    [6]=
    {
        name = "^00ff00Du Nhận Hữu Dư^00ff00",
        desc = "        Cấp độ nhân vật đạt cấp 60",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 1,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1,
              params={0,60,},
--            descFormat="0,60,", 
--            infoFormat = "%s đạt tới cấp độ %d (%d/1)",
            },
        }, 
    },

    [7]=
    {
        name = "^00ff00Tiểu Hữu Sở Thành^00ff00",
        desc = "        Cấp độ nhân vật đạt cấp 70",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 1,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1,
              params={0,70,},
--            descFormat="0,70,", 
--            infoFormat = "%s đạt tới cấp độ %d (%d/1)",
            },
        }, 
    },

    [8]=
    {
        name = "^00ff00Đăng Đường Nhập Thất^00ff00",
        desc = "        Cấp độ nhân vật đạt cấp 80 ",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 1,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1,
              params={0,80,},
--            descFormat="0,80,", 
--            infoFormat = "%s đạt tới cấp độ %d (%d/1)",
            },
        }, 
    },

    [9]=
    {
        name = "^00ff00Lư Hỏa Thần Danh^00ff00",
        desc = "        Cấp độ nhân vật đạt cấp 90",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 1,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1,
              params={0,90,},
--            descFormat="0,90,", 
--            infoFormat = "%s đạt tới cấp độ %d (%d/1)",
            },
        }, 
    },

    [10]=
    {
        name = "^00ff00Thông Thiên Triệt Địa^00ff00",
        desc = "        Cấp độ nhân vật đạt cấp 100",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 1,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1,
              params={0,100,},
--            descFormat="0,100,", 
--            infoFormat = "%s đạt tới cấp độ %d (%d/1)",
            },
        }, 
    },

    [11]=
    {
        name = "^00ff00Chấn Cổ Thước Kim^00ff00",
        desc = "        Cấp độ nhân vật đạt cấp 110",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 1,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1,
              params={0,110,},
--            descFormat="0,110,", 
--            infoFormat = "%s đạt tới cấp độ %d (%d/1)",
            },
        }, 
    },

    [12]=
    {
        name = "^00ff00Không Tiền Tuyệt Hậu^00ff00",
        desc = "        Cấp độ nhân vật đạt cấp 120",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 1,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1,
              params={0,120,},
--            descFormat="0,120,", 
--            infoFormat = "%s đạt tới cấp độ %d (%d/1)",
            },
        }, 
    },

    [13]=
    {
        name = "^00ff00Phản Phác Quy Chân^00ff00",
        desc = "        Cấp độ nhân vật đạt cấp 130",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1,
              params={0,130,},
--            descFormat="0,130,", 
--            infoFormat = "%s đạt tới cấp độ %d (%d/1)",
            },
        }, 
    },

    [14]=
    {
        name = "^00ff00Siêu Phàm Nhập Thánh^00ff00",
        desc = "        Cấp độ nhân vật đạt cấp 140",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 1,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1,
              params={0,140,},
--            descFormat="0,140,", 
--            infoFormat = "%s đạt tới cấp độ %d (%d/1)",
            },
        }, 
    },

    [15]=
    {
        name = "^00ff00Vô Thượng Chí Tôn^00ff00",
        desc = "        Cấp độ nhân vật đạt cấp 150",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 1,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1,
              params={0,150,},
--            descFormat="0,150,", 
--            infoFormat = "%s đạt tới cấp độ %d (%d/1)",
            },
        }, 
    },

    [16]=
    {
        name = "^00ff00Xuất Thần Nhập Hóa^00ff00",
        desc = "        Cấp độ nhân vật sau thăng thiên đạt cấp 120",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1,
              params={1,120,},
--            descFormat="1,120,", 
--            infoFormat = "%s đạt tới cấp độ %d (%d/1)",
            },
        }, 
    },

    [17]=
    {
        name = "^00ff00Đăng Phong Tạo Cực^00ff00",
        desc = "        Cấp độ nhân vật sau thăng thiên đạt cấp 135",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 1,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1,
              params={1,135,},
--            descFormat="1,135,", 
--            infoFormat = "%s đạt tới cấp độ %d (%d/1)",
            },
        }, 
    },

    [18]=
    {
        name = "^00ff00Phá Toái Hư Không^00ff00",
        desc = "        Cấp độ nhân vật sau thăng thiên đạt cấp 150",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 1,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1,
              params={1,150,},
--            descFormat="1,150,", 
--            infoFormat = "%s đạt tới cấp độ %d (%d/1)",
            },
        }, 
    },

    [19]=
    {
        name = "^00ff00Phú Khả Địch Quốc^00ff00",
        desc = "        Vàng hiện có đạt 20 vạn vàng.",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 2,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=2,
              params={2000000000,},
--            descFormat="2000000000,", 
--            infoFormat = "Thu được số Vàng tới %d (%d/1)",
            },
        }, 
    },

    [20]=
    {
        name        = "^00ff00Vô lượng thọ phật^00ff00",
        desc        = "        Phật duyên giá trị đạt tới 50 vạn",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={11,500000,},
--            descFormat="11,500000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [21]=
    {
        name        = "^00ff00Bất diệt minh tôn^00ff00",
        desc        = "        Ma tính giá trị đạt tới 50 vạn",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={10,500000,},
--            descFormat="10,500000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [22]=
    {
        name        = "^00ff00Tam thanh thánh tổ^00ff00",
        desc        = "        Đạo tâm giá trị đạt tới 50 vạn",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={9,500000,},
--            descFormat="9,500000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [23]=
    {
        name        = "^00ff00Quỷ Vương tông danh túc^00ff00",
        desc        = "        Quỷ Vương cống hiến độ đạt tới 2 triệu",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={3,200000000,},
--            descFormat="3,200000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [24]=
    {
        name        = "^00ff00Thanh Vân môn danh túc^00ff00",
        desc        = "        Thanh Vân cống hiến độ đạt tới 2 triệu",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={1,200000000,},
--            descFormat="1,200000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [25]=
    {
        name        = "^00ff00合欢派名宿^00ff00",
        desc        = "        合欢贡献度达到2亿",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={4,200000000,},
--            descFormat="4,200000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [26]=
    {
        name        = "^00ff00天音寺名宿^00ff00",
        desc        = "        天音贡献度达到2亿",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={2,200000000,},
--            descFormat="2,200000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [27]=
    {
        name        = "^00ff00鬼道名宿^00ff00",
        desc        = "        鬼道贡献度达到2亿",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={0,200000000,},
--            descFormat="0,200000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [28]=
    {
        name        = "^00ff00忠义无双^00ff00",
        desc        = "        忠义值达到2000万",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={5,20000000,},
--            descFormat="5,20000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [29]=
    {
        name        = "^00ff00多情种子^00ff00",
        desc        = "        情缘值达到20万",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={6,200000,},
--            descFormat="6,200000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [30]=
    {
        name        = "^00ff00为人师表^00ff00",
        desc        = "        师德值达到5万",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={8,50000,},
--            descFormat="8,50000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [31]=
    {
        name        = "^00ff00才高八斗^00ff00",
        desc        = "        文采值达到100万",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={7,1000000,},
--            descFormat="7,1000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [32]=
    {
        name = "^00ff00Ka~Ka~^00ff00",
        desc = "        Số lần tử vong trong Tru Tiên đạt 200 lần. ",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 1,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1004,
              params={200,},
--            descFormat="200,", 
--            infoFormat = "Số lần tử vọng đạt %d (%d/%d)",
            },
        }, 
    },

    [33]=
    {
        name        = "^00ff00Cùng hung cực ác^00ff00",
        desc        = "        Giá trị thiện và ác đạt 50 điểm",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 2,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=5,
              params={50,},
--            descFormat="50,", 
--            infoFormat = "Giá trị thiện ác  %d (%d/1)",
            },
        }, 
    },

    [34]=
    {
        name        = "^00ff00Hung thần ác sát^00ff00",
        desc        = "        Giá trị thiện ác 100 điểm ",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 2,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=5,
              params={100,},
--            descFormat="100,", 
--            infoFormat = "Giá trị thiện ác  %d (%d/1)",
            },
        }, 
    },

    [35]=
    {
        name        = "^00ff00Vô ác bất tác^00ff00",
        desc        = "        Giá trị thiện ác 500 điểm ",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 2,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=5,
              params={500,},
--            descFormat="500,", 
--            infoFormat = "Giá trị thiện ác  %d (%d/1)",
            },
        }, 
    },

    [36]=
    {
        name        = "^00ff00Tội ác chồng chất^00ff00",
        desc        = "        Giá trị thiện ác 999 điểm ",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 2,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=5,
              params={999,},
--            descFormat="999,", 
--            infoFormat = "Giá trị thiện ác  %d (%d/1)",
            },
        }, 
    },

    [37]=
    {
        name        = "^00ff00Đại tứ hỉ^00ff00",
        desc        = "        Tiêu diệt狐岐山地宫中的上古四大神兽 \r        夔牛、黄鸟、饕餮、烛龙",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=4,
              params={5594,},
--            descFormat="5594,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
            {
              id=4,
              params={5593,},
--            descFormat="5593,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
            {
              id=4,
              params={5595,},
--            descFormat="5595,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
            {
              id=4,
              params={5592,},
--            descFormat="5592,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
        }, 
    },

    [38]=
    {
        name        = "^00ff00Tu la vương giả^00ff00",
        desc        = "        Tiêu diệt“修罗七王” 安土王、法莲王\r        风火王、归蝶王、天忍王、阴阳王、樱木王 ",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=4,
              params={10677,},
--            descFormat="10677,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
            {
              id=4,
              params={10670,},
--            descFormat="10670,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
            {
              id=4,
              params={10676,},
--            descFormat="10676,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
            {
              id=4,
              params={10671,},
--            descFormat="10671,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
            {
              id=4,
              params={10672,},
--            descFormat="10672,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
            {
              id=4,
              params={10675,},
--            descFormat="10675,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
            {
              id=4,
              params={10674,},
--            descFormat="10674,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
        }, 
    },

    [39]=
    {
        name        = "^00ff00Khiếu ngạo lăng tiêu^00ff00",
        desc        = "        Tiêu diệt凌霄城五大门派首领\r        道玄、普智、金铃夫人、黑心老人、鬼先生 ",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=4,
              params={22357,},
--            descFormat="22357,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
            {
              id=4,
              params={22354,},
--            descFormat="22354,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
            {
              id=4,
              params={22356,},
--            descFormat="22356,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
            {
              id=4,
              params={22355,},
--            descFormat="22355,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
            {
              id=4,
              params={22358,},
--            descFormat="22358,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
        }, 
    },

    [40]=
    {
        name        = "^00ff00Viêm ngục chi vương^00ff00",
        desc        = "        在炎狱战场中\r        Tiêu diệt隐仙阁和逸龙轩的中心建筑各19座 ",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 3,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={13445,19,},
--            descFormat="13445,19,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
            {
              id=1001,
              params={13439,19,},
--            descFormat="13439,19,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [41]=
    {
        name        = "^00ff00Vũ vi chi vương^00ff00",
        desc        = "        在武围战场中\r        Tiêu diệt隐仙阁和逸龙轩的中心建筑各29座 ",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 3,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={10846,29,},
--            descFormat="10846,29,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
            {
              id=1001,
              params={10850,29,},
--            descFormat="10850,29,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [42]=
    {
        name        = "^00ff00Giới hà chi vương^00ff00",
        desc        = "        在界河战场中\r        Tiêu diệt隐仙阁和逸龙轩的中心建筑各39座 ",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 3,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={10854,39,},
--            descFormat="10854,39,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
            {
              id=1001,
              params={10858,39,},
--            descFormat="10858,39,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [43]=
    {
        name        = "^00ff00Thiên dịch Chi vương^00ff00",
        desc        = "        在Thiên dịch战场中\r        Tiêu diệt隐仙阁 将和逸龙轩 将各49次 ",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 3,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={13693,49,},
--            descFormat="13693,49,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
            {
              id=1001,
              params={13698,49,},
--            descFormat="13698,49,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [44]=
    {
        name        = "^00ff00Viêm ngục chúa tể^00ff00",
        desc        = "        在幻世炎狱战场中\r        Tiêu diệt隐仙阁和逸龙轩的中心建筑各19座 ",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={23369,19,},
--            descFormat="23369,19,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
            {
              id=1001,
              params={23368,19,},
--            descFormat="23368,19,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [45]=
    {
        name        = "^00ff00武围主宰^00ff00",
        desc        = "        在幻世武围战场中\r        Tiêu diệt隐仙阁和逸龙轩的中心建筑各29座 ",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={23372,29,},
--            descFormat="23372,29,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
            {
              id=1001,
              params={23373,29,},
--            descFormat="23373,29,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [46]=
    {
        name        = "^00ff00界河主宰^00ff00",
        desc        = "        在幻世界河战场中\r        Tiêu diệt隐仙阁和逸龙轩的中心建筑各39座 ",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={23376,39,},
--            descFormat="23376,39,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
            {
              id=1001,
              params={23377,39,},
--            descFormat="23377,39,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [47]=
    {
        name        = "^00ff00Thiên dịch主宰^00ff00",
        desc        = "        在幻世Thiên dịch战场中\r        Tiêu diệt隐仙阁 将和逸龙轩 将各49次 ",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={23379,49,},
--            descFormat="23379,49,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
            {
              id=1001,
              params={23378,49,},
--            descFormat="23378,49,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [48]=
    {
        name        = "^00ff00Tử trạch tán nhân^00ff00",
        desc        = "        Tiêu diệt死泽 云游天将999次",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={18828,999,},
--            descFormat="18828,999,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [49]=
    {
        name        = "^00ff00Man hoang tán nhân^00ff00",
        desc        = "        Tiêu diệt蛮荒 云游天将999次",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={18829,999,},
--            descFormat="18829,999,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [50]=
    {
        name        = "^00ff00Phần hương tán nhân^00ff00",
        desc        = "        Tiêu diệt焚香 云游天将999次",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={18830,999,},
--            descFormat="18830,999,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [51]=
    {
        name        = "^00ff00Nam cương tán nhân^00ff00",
        desc        = "        Tiêu diệt南疆 云游天将999次",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 1,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={18831,999,},
--            descFormat="18831,999,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [52]=
    {
        name        = "^00ff00Côn lôn tán nhân^00ff00",
        desc        = "        Tiêu diệt昆仑 云游天将999次",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 1,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={18832,999,},
--            descFormat="18832,999,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [53]=
    {
        name        = "^00ff00Tu la tán nhân^00ff00",
        desc        = "        Tiêu diệt修罗 云游天将999次",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 1,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={18833,999,},
--            descFormat="18833,999,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [54]=
    {
        name        = "^00ff00Tử trạch tuyết thợ săn^00ff00",
        desc        = "        Tiêu diệt死泽 雪国特使99次",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={22285,99,},
--            descFormat="22285,99,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [55]=
    {
        name        = "^00ff00Man hoang tuyết thợ săn^00ff00",
        desc        = "        Tiêu diệt蛮荒 雪国特使99次",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={22198,99,},
--            descFormat="22198,99,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [56]=
    {
        name        = "^00ff00Phần hương tuyết liệp nhân^00ff00",
        desc        = "        Tiêu diệt焚香 雪国特使99次",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={22207,99,},
--            descFormat="22207,99,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [57]=
    {
        name        = "^00ff00Nam cương tuyết liệp nhân^00ff00",
        desc        = "        Tiêu diệt南疆 雪国特使99次",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 1,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={22216,99,},
--            descFormat="22216,99,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [58]=
    {
        name        = "^00ff00Côn lôn tuyết liệp nhân^00ff00",
        desc        = "        Tiêu diệt昆仑 雪国特使99次",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 1,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={22225,99,},
--            descFormat="22225,99,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [59]=
    {
        name        = "^00ff00Tu la tuyết liệp nhân^00ff00",
        desc        = "        Tiêu diệt修罗 雪国特使99次",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 1,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={22234,99,},
--            descFormat="22234,99,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [60]=
    {
        name        = "^00ff00Nhĩ hoàn liễu^00ff00",
        desc        = "        Tiêu diệt九人团Boss  密探·永\r        破除艮元镇石 密探将出现在焚香",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=4,
              params={23165,},
--            descFormat="23165,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
        }, 
    },

    [61]=
    {
        name        = "^00ff00Tà ác tiên phong^00ff00",
        desc        = "        Tiêu diệt九人团Boss  邪恶先锋\r        破除乾元镇石 邪恶先锋将出现在昆仑",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=4,
              params={22106,},
--            descFormat="22106,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
            {
              id=4,
              params={22107,},
--            descFormat="22107,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
        }, 
    },

    [62]=
    {
        name        = "^00ff00Phản bội giả^00ff00",
        desc        = "        Tiêu diệt九人团Boss  背叛者\r        破除坎元镇石 背叛者将出现在南疆 ",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=4,
              params={22253,},
--            descFormat="22253,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
            {
              id=4,
              params={22251,},
--            descFormat="22251,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
            {
              id=4,
              params={22252,},
--            descFormat="22252,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
        }, 
    },

    [63]=
    {
        name        = "^00ff00Tiểu bá chủ^00ff00",
        desc        = "        Đánh chết ba loại bất đồng hình thái Tây Sở bá vương · Hạng Võ \r nhu tiến vào sở hán quân hồn chiến trường",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=4,
              params={24739,},
--            descFormat="24739,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
            {
              id=4,
              params={24738,},
--            descFormat="24738,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
            {
              id=4,
              params={24737,},
--            descFormat="24737,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
        }, 
    },

    [64]=
    {
        name        = "^00ff00Lưu manh khắc tinh^00ff00",
        desc        = "        Tiêu diệt三种不同形态的 汉王·刘邦\r        需进入楚汉军魂战场",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=4,
              params={24740,},
--            descFormat="24740,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
            {
              id=4,
              params={24741,},
--            descFormat="24741,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
            {
              id=4,
              params={24742,},
--            descFormat="24742,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
        }, 
    },

    [65]=
    {
        name        = "^00ff00Hán quân · thôi đảo^00ff00",
        desc        = "        在楚汉军魂战场中摧毁 汉军兵营\r        需进入楚汉军魂战场",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=4,
              params={25173,},
--            descFormat="25173,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
        }, 
    },

    [66]=
    {
        name        = "^00ff00Sở quân · thôi đảo^00ff00",
        desc        = "        在楚汉军魂战场中摧毁 楚军兵营\r        需进入楚汉军魂战场",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=4,
              params={25171,},
--            descFormat="25171,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
        }, 
    },

    [67]=
    {
        name        = "^00ff00Tiên giới sát tinh^00ff00",
        desc        = "        在混沌中Tiêu diệt仙之守护99次 ",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 5,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={22018,99,},
--            descFormat="22018,99,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [68]=
    {
        name        = "^00ff00Ma vực sát tinh^00ff00",
        desc        = "        在混沌中Tiêu diệt魔之守护99次 ",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 5,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={22019,99,},
--            descFormat="22019,99,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [69]=
    {
        name        = "^00ff00Phật quốc sát tinh^00ff00",
        desc        = "        在混沌中Tiêu diệt佛之守护99次 ",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 5,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={22020,99,},
--            descFormat="22020,99,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [70]=
    {
        name        = "^00ff00Vi đà · phá diệt^00ff00",
        desc        = "        在混沌中Tiêu diệt韦陀·荼罗",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 5,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=4,
              params={23265,},
--            descFormat="23265,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
        }, 
    },

    [71]=
    {
        name        = "^00ff00Ma quân · phá diệt^00ff00",
        desc        = "        在混沌中Tiêu diệt魔君·郁垒",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 5,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=4,
              params={23267,},
--            descFormat="23267,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
        }, 
    },

    [72]=
    {
        name        = "^00ff00Thần tương · phá diệt^00ff00",
        desc        = "        在混沌中Tiêu diệt神将·扈戎",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 5,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=4,
              params={23262,},
--            descFormat="23262,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
        }, 
    },

    [73]=
    {
        name        = "^00ff00Hậu cần kiền sự^00ff00",
        desc        = "        完成建功立事任务99次 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1000,
              params={12856,99,},
--            descFormat="12856,99,", 
--            infoFormat = "完成 %s (%d/%d)次",
            },
        }, 
    },

    [74]=
    {
        name        = "^00ff00Phê phát bảo đồ^00ff00",
        desc        = "        完成国家宝藏任务99次 \r        只有修罗的国家宝藏任务有效 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1000,
              params={12315,99,},
--            descFormat="12315,99,", 
--            infoFormat = "完成 %s (%d/%d)次",
            },
        }, 
    },

    [75]=
    {
        name        = "^00ff00Thiên không hành giả^00ff00",
        desc        = "        完成天行者任务99次 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1000,
              params={12193,99,},
--            descFormat="12193,99,", 
--            infoFormat = "完成 %s (%d/%d)次",
            },
        }, 
    },

    [76]=
    {
        name        = "^00ff00Khai quyển hữu ích^00ff00",
        desc        = "        Tham gia tân khoa thí luyện 99 thứ, thả có thể tiến vào bảng đan ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1000,
              params={12871,99,},
--            descFormat="12871,99,", 
--            infoFormat = "完成 %s (%d/%d)次",
            },
        }, 
    },

    [77]=
    {
        name        = "^00ff00Quỷ lệ trang thu tập^00ff00",
        desc        = "        收集一套鬼厉装\r        （穿戴时装Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 1,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={14242,},
--            descFormat="14242,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={14243,},
--            descFormat="14243,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={14244,},
--            descFormat="14244,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
        }, 
    },

    [78]=
    {
        name        = "^00ff00Bích dao trang thu tập^00ff00",
        desc        = "        收集一套碧瑶装\r        （穿戴时装Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 1,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={12023,},
--            descFormat="12023,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={12024,},
--            descFormat="12024,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={12025,},
--            descFormat="12025,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
        }, 
    },

    [79]=
    {
        name        = "^00ff00Tuyết kì trang thu tập^00ff00",
        desc        = "        收集一套雪琪装\r        （穿戴时装Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 1,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={17077,},
--            descFormat="17077,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={17075,},
--            descFormat="17075,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={17076,},
--            descFormat="17076,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
        }, 
    },

    [80]=
    {
        name        = "^00ff00Đằng vân long trang thu tập^00ff00",
        desc        = "        收集一套腾龙装和云龙装\r        （穿戴时装Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={19436,},
--            descFormat="19436,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={19437,},
--            descFormat="19437,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={19438,},
--            descFormat="19438,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={18884,},
--            descFormat="18884,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={18888,},
--            descFormat="18888,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={18886,},
--            descFormat="18886,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
        }, 
    },

    [81]=
    {
        name        = "^00ff00Thanh chúc long trang thu tập^00ff00",
        desc        = "        收集一套青龙装和烛龙装\r        （穿戴时装Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={23428,},
--            descFormat="23428,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={23429,},
--            descFormat="23429,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={23430,},
--            descFormat="23430,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={11955,},
--            descFormat="11955,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={11958,},
--            descFormat="11958,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={11960,},
--            descFormat="11960,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
        }, 
    },

    [82]=
    {
        name        = "^00ff00Tứ long trang toàn thu tập^00ff00",
        desc        = "        Đạt thành Tứ long trang toàn thu tập\r        青龙装、腾龙装、云龙装、烛龙装",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=12,
              params={80,},
--            descFormat="80,", 
--            infoFormat = "Đạt thành 成就 %s (%d/1)",
            },
            {
              id=12,
              params={81,},
--            descFormat="81,", 
--            infoFormat = "Đạt thành 成就 %s (%d/1)",
            },
        }, 
    },

    [83]=
    {
        name        = "^00ff00Nữ bản thánh đản trang thu tập^00ff00",
        desc        = "        收集两套圣诞装\r        （穿戴时装Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={13613,},
--            descFormat="13613,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={13615,},
--            descFormat="13615,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={13617,},
--            descFormat="13617,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={22001,},
--            descFormat="22001,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={22003,},
--            descFormat="22003,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={22005,},
--            descFormat="22005,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
        }, 
    },

    [84]=
    {
        name        = "^00ff00Nam bản thánh đản trang thu tập^00ff00",
        desc        = "        收集两套圣诞装\r        （穿戴时装Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={13612,},
--            descFormat="13612,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={13614,},
--            descFormat="13614,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={13616,},
--            descFormat="13616,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={22000,},
--            descFormat="22000,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={22002,},
--            descFormat="22002,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={22004,},
--            descFormat="22004,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
        }, 
    },

    [85]=
    {
        name        = "^00ff00Hạ quý nữ trang thu tập^00ff00",
        desc        = "        收集女款夏季时装：弥云凉装和清凉装\r        （穿戴时装Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={10631,},
--            descFormat="10631,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={10635,},
--            descFormat="10635,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={10633,},
--            descFormat="10633,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={7807,},
--            descFormat="7807,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={7811,},
--            descFormat="7811,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={7816,},
--            descFormat="7816,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
        }, 
    },

    [86]=
    {
        name        = "^00ff00Hạ quý nam trang thu tập^00ff00",
        desc        = "        收集男款夏季时装：弥云凉装和刺青装\r        （穿戴时装Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={10630,},
--            descFormat="10630,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={10634,},
--            descFormat="10634,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={10632,},
--            descFormat="10632,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={7806,},
--            descFormat="7806,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={7810,},
--            descFormat="7810,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={7815,},
--            descFormat="7815,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
        }, 
    },

    [87]=
    {
        name        = "^00ff00Nữ tính song hoa trang thu tập^00ff00",
        desc        = "        收集一套兰花装和鲜花装\r        （穿戴时装Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={6375,},
--            descFormat="6375,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={6383,},
--            descFormat="6383,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={6388,},
--            descFormat="6388,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={6376,},
--            descFormat="6376,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={6381,},
--            descFormat="6381,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
            {
              id=11,
              params={6387,},
--            descFormat="6387,", 
--            infoFormat = "获取并装备 %s (%d/1)",
            },
        }, 
    },

    [88]=
    {
        name        = "^00ff00Tạo hóa chi Thiên đạo^00ff00",
        desc        = "        Thu hoạch Tạo hóa chi Thiên đạo\r        （装备饰品Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={22086,},
--            descFormat="22086,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [89]=
    {
        name        = "^00ff00Tạo hóa chi 天循^00ff00",
        desc        = "        Thu hoạch Tạo hóa chi 天循\r        （装备饰品Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={22081,},
--            descFormat="22081,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [90]=
    {
        name        = "^00ff00Tạo hóa chi Ngọc hư^00ff00",
        desc        = "        Thu hoạch Tạo hóa chi Ngọc hư\r        （装备饰品Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={22085,},
--            descFormat="22085,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [91]=
    {
        name        = "^00ff00Tạo hóa chi Thiên quyến^00ff00",
        desc        = "        Thu thập Tạo hóa chi Thiên quyến\r        （装备饰品Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={22084,},
--            descFormat="22084,", 
--            infoFormat = "Thu thập 并装备 %s (%d/1)",
            },
        }, 
    },

    [92]=
    {
        name        = "^00ff00Tạo hóa chi Thiên dịch^00ff00",
        desc        = "        Thu thập Tạo hóa chi Thiên dịch\r        （装备饰品Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={22083,},
--            descFormat="22083,", 
--            infoFormat = "Thu thập 并装备 %s (%d/1)",
            },
        }, 
    },

    [93]=
    {
        name        = "^00ff00Tạo hóa chi Thiên thú^00ff00",
        desc        = "        Thu thập Tạo hóa chi Thiên thú\r        （装备饰品Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={22082,},
--            descFormat="22082,", 
--            infoFormat = "Thu thập 并装备 %s (%d/1)",
            },
        }, 
    },

    [94]=
    {
        name        = "^00ff00Thái hư cẩm nang·Cửu kế^00ff00",
        desc        = "        Thu thập Thái hư cẩm nang·Cửu kế\r        （Trang bị túi gấm đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={21854,},
--            descFormat="21854,", 
--            infoFormat = "Thu thập 并装备 %s (%d/1)",
            },
        }, 
    },

    [95]=
    {
        name        = "^00ff00Thần hành cẩm nang·Cửu kế^00ff00",
        desc        = "        Thu thập Thần hành cẩm nang·Cửu kế\r        （Trang bị túi gấm đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={21819,},
--            descFormat="21819,", 
--            infoFormat = "Thu thập 并装备 %s (%d/1)",
            },
        }, 
    },

    [96]=
    {
        name        = "^00ff00Tiêu diêu cẩm nang·Cửu kế^00ff00",
        desc        = "        Thu hoạch Tiêu diêu cẩm nang·Cửu kế\r        （Trang bị túi gấm đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={21783,},
--            descFormat="21783,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [97]=
    {
        name        = "^00ff00Sơ nguyên cương khí^00ff00",
        desc        = "        Thu hoạch Sơ nguyên cương khí\r        （装备罡气Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={22115,},
--            descFormat="22115,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [98]=
    {
        name        = "^00ff00Cố bản cương khí^00ff00",
        desc        = "        Thu hoạch Cố bản cương khí\r        （装备罡气Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={22116,},
--            descFormat="22116,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [99]=
    {
        name        = "^00ff00Bồi nguyên cương khí^00ff00",
        desc        = "        Thu hoạch Bồi nguyên cương khí\r        （装备罡气Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={22117,},
--            descFormat="22117,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [100]=
    {
        name        = "^00ff00Hàm chương cương khí^00ff00",
        desc        = "        Thu hoạch Hàm chương cương khí\r        （装备罡气Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={22118,},
--            descFormat="22118,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [101]=
    {
        name        = "^00ff00Trùng hư cương khí^00ff00",
        desc        = "        Thu hoạch Trùng hư cương khí\r        （装备罡气Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={22119,},
--            descFormat="22119,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [102]=
    {
        name        = "^00ff00金身·七星转魂^00ff00",
        desc        = "        Thu hoạch 金身·七星转魂\r        （装备金身Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 5,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={20157,},
--            descFormat="20157,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [103]=
    {
        name        = "^00ff00金身·八法运通^00ff00",
        desc        = "        Thu hoạch 金身·八法运通\r        （装备金身Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 5,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={20158,},
--            descFormat="20158,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [104]=
    {
        name        = "^00ff00法身·七星转魂^00ff00",
        desc        = "        Thu hoạch 法身·七星转魂\r        （装备法身Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 5,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={20144,},
--            descFormat="20144,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [105]=
    {
        name        = "^00ff00法身·八法运通^00ff00",
        desc        = "        Thu hoạch 法身·八法运通\r        （装备法身Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 5,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={20145,},
--            descFormat="20145,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [106]=
    {
        name        = "^00ff00Cát tinh cao chiếu^00ff00",
        desc        = "        Tinh luyện 1 trang bị đạt （+8）thành công ",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 1,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=7,
              params={7,8,},
--            descFormat="7,8,", 
--            infoFormat = "炼器+ %d %s (%d/1)",
            },
        }, 
    },

    [107]=
    {
        name        = "^00ff00Công khuy nhất quĩ^00ff00",
        desc        = "        Tinh luyện 1 trang bị đạt （+8）thành công \r        （未使用完璧符，装备消失）",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 1,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=7,
              params={7,0},
--            descFormat="7,", 
--            infoFormat = "炼器+ %d %s (%d/1)",
            },
        }, 
    },

    [108]=
    {
        name        = "^00ff00Hồng vận đương đầu^00ff00",
        desc        = "        Tinh luyện 1 trang bị đạt （+10）thành công ",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=7,
              params={9,10,},
--            descFormat="9,10,", 
--            infoFormat = "炼器+ %d %s (%d/1)",
            },
        }, 
    },

    [109]=
    {
        name        = "^00ff00Tiền công tẫn khí^00ff00",
        desc        = "        Tinh luyện 1 trang bị đạt （+10）thành công \r        （未使用完璧符，装备消失）",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=7,
              params={9,0},
--            descFormat="9,", 
--            infoFormat = "炼器+ %d %s (%d/1)",
            },
        }, 
    },

    [110]=
    {
        name        = "^00ff00Phúc tinh hàng lâm^00ff00",
        desc        = "        Tinh luyện 1 trang bị đạt （+12）thành công ",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 1,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=7,
              params={11,12,},
--            descFormat="11,12,", 
--            infoFormat = "炼器+ %d %s (%d/1)",
            },
        }, 
    },

    [111]=
    {
        name        = "^00ff00Suy thần phụ thể^00ff00",
        desc        = "        Tinh luyện 1 trang bị đạt （+12）thành công \r        （未使用完璧符，装备消失）",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 1,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=7,
              params={11,0},
--            descFormat="11,", 
--            infoFormat = "炼器+ %d %s (%d/1)",
            },
        }, 
    },

    [112]=
    {
        name        = "^00ff00Luyện khí đại sư^00ff00",
        desc        = "        Tinh luyện trang bị（+8）thành công 49 lần ",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 1,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1005,
              params={0,8,49,},
--            descFormat="0,8,49,", 
--            infoFormat = "炼器+ %d %s (%d/%d)次",
            },
        }, 
    },

    [113]=
    {
        name        = "^00ff00Luyện khí tông sư^00ff00",
        desc        = "        Tinh luyện trang bị（+9）thành công 49 lần ",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 1,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1005,
              params={0,9,49,},
--            descFormat="0,9,49,", 
--            infoFormat = "炼器+ %d %s (%d/%d)次",
            },
        }, 
    },

    [114]=
    {
        name        = "^00ff00Chí dương ngũ hành thạch^00ff00",
        desc        = "        Ở huyết tế đại sư chỗ đổi toàn thuộc tính chí dương chi ngũ hành nhận thạch",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 2,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={3373,22614,},
--            descFormat="3373,22614,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3367,22534,},
--            descFormat="3367,22534,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3369,22777,},
--            descFormat="3369,22777,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3371,22857,},
--            descFormat="3371,22857,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3375,22694,},
--            descFormat="3375,22694,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [115]=
    {
        name        = "^00ff00Chí dương ngũ hành khôi^00ff00",
        desc        = "        在血祭大师处兑换全属性至阳之五行魁石",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 2,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={3363,22615,},
--            descFormat="3363,22615,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3357,22535,},
--            descFormat="3357,22535,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3359,22778,},
--            descFormat="3359,22778,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3361,22858,},
--            descFormat="3361,22858,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3365,22695,},
--            descFormat="3365,22695,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [116]=
    {
        name        = "^00ff00Chí dương ngũ hành cương^00ff00",
        desc        = "        在血祭大师处兑换全属性至阳之五行罡石",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 2,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={3353,22616,},
--            descFormat="3353,22616,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3347,22536,},
--            descFormat="3347,22536,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3349,22779,},
--            descFormat="3349,22779,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3351,22859,},
--            descFormat="3351,22859,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3355,22696,},
--            descFormat="3355,22696,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [117]=
    {
        name        = "^00ff00Chí dương chi ngũ hành độn^00ff00",
        desc        = "        在血祭大师处兑换全属性至阳之五行遁石",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 2,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={3343,22617,},
--            descFormat="3343,22617,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3337,22537,},
--            descFormat="3337,22537,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3339,22780,},
--            descFormat="3339,22780,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3341,22860,},
--            descFormat="3341,22860,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3345,22697,},
--            descFormat="3345,22697,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [118]=
    {
        name        = "^00ff00Huyền Âm chi ngũ hành nhận^00ff00",
        desc        = "        在血祭大师处兑换全属性玄阴之五行刃石",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 2,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={3374,22618,},
--            descFormat="3374,22618,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3368,22538,},
--            descFormat="3368,22538,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3370,22781,},
--            descFormat="3370,22781,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3372,22861,},
--            descFormat="3372,22861,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3376,22698,},
--            descFormat="3376,22698,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [119]=
    {
        name        = "^00ff00Huyền âm chi ngũ hành khôi ^00ff00",
        desc        = "        在血祭大师处兑换全属性玄阴之五行魁石",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 2,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={3364,22619,},
--            descFormat="3364,22619,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3358,22539,},
--            descFormat="3358,22539,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3360,22782,},
--            descFormat="3360,22782,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3362,22862,},
--            descFormat="3362,22862,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3366,22699,},
--            descFormat="3366,22699,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [120]=
    {
        name        = "^00ff00Huyền âm chi ngũ hành cương^00ff00",
        desc        = "        在血祭大师处兑换全属性玄阴之五行罡石",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 2,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={3354,22620,},
--            descFormat="3354,22620,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3348,22540,},
--            descFormat="3348,22540,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3350,22783,},
--            descFormat="3350,22783,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3352,22863,},
--            descFormat="3352,22863,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3356,22700,},
--            descFormat="3356,22700,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [121]=
    {
        name        = "^00ff00Huyền âm chi ngũ hành độn ^00ff00",
        desc        = "        在血祭大师处兑换全属性玄阴之五行遁石",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 2,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={3344,22621,},
--            descFormat="3344,22621,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3338,22541,},
--            descFormat="3338,22541,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3340,22784,},
--            descFormat="3340,22784,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3342,22864,},
--            descFormat="3342,22864,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={3346,22701,},
--            descFormat="3346,22701,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [122]=
    {
        name        = "^00ff00Kim thân · thập phương Càn Khôn^00ff00",
        desc        = "        thành công制造 金身·十方乾坤",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={2987,20160,},
--            descFormat="2987,20160,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [123]=
    {
        name        = "^00ff00Pháp thân · thập phương Càn Khôn^00ff00",
        desc        = "        thành công制造 法身·十方乾坤",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={2975,20147,},
--            descFormat="2975,20147,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [124]=
    {
        name        = "^00ff00Kim thân · bách kiếp động minh^00ff00",
        desc        = "        thành công制造 金身·百劫洞冥",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 3,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={2988,20161,},
--            descFormat="2988,20161,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [125]=
    {
        name        = "^00ff00Pháp thân · bách kiếp động minh^00ff00",
        desc        = "        thành công制造 法身·百劫洞冥",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 3,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={2976,20148,},
--            descFormat="2976,20148,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [126]=
    {
        name        = "^00ff00金身·千界婆娑^00ff00",
        desc        = "        thành công制造 金身·千界婆娑",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={2989,20162,},
--            descFormat="2989,20162,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [127]=
    {
        name        = "^00ff00法身·千界婆娑^00ff00",
        desc        = "        thành công制造 法身·千界婆娑",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={2977,20149,},
--            descFormat="2977,20149,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [128]=
    {
        name        = "^00ff00金身·万流至尊^00ff00",
        desc        = "        thành công制造 金身·万流至尊",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 3,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={2990,20163,},
--            descFormat="2990,20163,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [129]=
    {
        name        = "^00ff00法身·万流至尊^00ff00",
        desc        = "        thành công制造 法身·万流至尊",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 3,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={2978,20150,},
--            descFormat="2978,20150,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [130]=
    {
        name        = "^00ff00钻石迷情^00ff00",
        desc        = "        累积制造99颗钻石\r        （需人物生产达到十级）",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 3,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1002,
              params={2912,14065,99,},
--            descFormat="2912,14065,99,", 
--            infoFormat = "thành công生产 %s (%d/%d)",
            },
        }, 
    },

    [131]=
    {
        name        = "^00ff00轩辕制造^00ff00",
        desc        = "        累积制造99个轩辕通宝\r        （需人物生产达到十级）",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1002,
              params={2917,19252,99,},
--            descFormat="2917,19252,99,", 
--            infoFormat = "thành công生产 %s (%d/%d)",
            },
        }, 
    },

    [132]=
    {
        name        = "^00ff00宠物装学徒^00ff00",
        desc        = "        thành công制造8件★★紫色宠物装备\r        （使用1阶宠物材料）",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={2407,17354,},
--            descFormat="2407,17354,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2359,17350,},
--            descFormat="2359,17350,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2395,17353,},
--            descFormat="2395,17353,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2437,17356,},
--            descFormat="2437,17356,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2371,17351,},
--            descFormat="2371,17351,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2383,17352,},
--            descFormat="2383,17352,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2425,17355,},
--            descFormat="2425,17355,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2449,17357,},
--            descFormat="2449,17357,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [133]=
    {
        name        = "^00ff00宠物装技师^00ff00",
        desc        = "        thành công制造8件★★紫色宠物装备\r        （使用2阶宠物材料）",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={2408,17394,},
--            descFormat="2408,17394,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2360,17390,},
--            descFormat="2360,17390,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2396,17393,},
--            descFormat="2396,17393,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2438,17396,},
--            descFormat="2438,17396,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2372,17391,},
--            descFormat="2372,17391,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2384,17392,},
--            descFormat="2384,17392,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2426,17395,},
--            descFormat="2426,17395,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2450,17397,},
--            descFormat="2450,17397,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [134]=
    {
        name        = "^00ff00宠物装大师^00ff00",
        desc        = "        thành công制造8件★★紫色宠物装备\r        （使用3阶宠物材料）",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={2409,17434,},
--            descFormat="2409,17434,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2361,17430,},
--            descFormat="2361,17430,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2397,17433,},
--            descFormat="2397,17433,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2439,17436,},
--            descFormat="2439,17436,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2373,17431,},
--            descFormat="2373,17431,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2385,17432,},
--            descFormat="2385,17432,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2427,17435,},
--            descFormat="2427,17435,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2451,17437,},
--            descFormat="2451,17437,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [135]=
    {
        name        = "^00ff00宠物装导师^00ff00",
        desc        = "        thành công制造8件★★紫色宠物装备\r        （使用4阶宠物材料）",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={2410,17474,},
--            descFormat="2410,17474,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2362,17470,},
--            descFormat="2362,17470,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2398,17473,},
--            descFormat="2398,17473,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2440,17476,},
--            descFormat="2440,17476,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2374,17471,},
--            descFormat="2374,17471,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2386,17472,},
--            descFormat="2386,17472,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2428,17475,},
--            descFormat="2428,17475,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2452,17477,},
--            descFormat="2452,17477,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [136]=
    {
        name        = "^00ff00宠物装宗师^00ff00",
        desc        = "        thành công制造8件★★紫色宠物装备\r        （使用5阶宠物材料）",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={2411,17514,},
--            descFormat="2411,17514,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2363,17510,},
--            descFormat="2363,17510,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2399,17513,},
--            descFormat="2399,17513,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2441,17516,},
--            descFormat="2441,17516,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2375,17511,},
--            descFormat="2375,17511,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2387,17512,},
--            descFormat="2387,17512,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2429,17515,},
--            descFormat="2429,17515,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2453,17517,},
--            descFormat="2453,17517,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [137]=
    {
        name        = "^00ff00Sủng vật trang thần tượng^00ff00",
        desc        = "        thành công制造8件★★紫色宠物装备\r        （使用6阶宠物材料）",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=10,
              params={2412,17554,},
--            descFormat="2412,17554,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2364,17550,},
--            descFormat="2364,17550,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2400,17553,},
--            descFormat="2400,17553,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2442,17556,},
--            descFormat="2442,17556,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2376,17551,},
--            descFormat="2376,17551,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2388,17552,},
--            descFormat="2388,17552,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2430,17555,},
--            descFormat="2430,17555,", 
--            infoFormat = "生产 %s (%d/1)",
            },
            {
              id=10,
              params={2454,17557,},
--            descFormat="2454,17557,", 
--            infoFormat = "生产 %s (%d/1)",
            },
        }, 
    },

    [138]=
    {
        name        = "^00ff00Huyền thiên ngọc bạc（Cấp 1）^00ff00",
        desc        = "        青云贡献度达到500万领取炙鹰令\r         河阳 白云道长处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={1,5000000,},
--            descFormat="1,5000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [139]=
    {
        name        = "^00ff00Trung thiên đăng nhị（Cấp 2）^00ff00",
        desc        = "        青云贡献度达到1000万领取炙鹰令\r         河阳 白云道长处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={1,10000000,},
--            descFormat="1,10000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [140]=
    {
        name        = "^00ff00Tiện thiên bảo chúc（Cấp 3）^00ff00",
        desc        = "        青云贡献度达到2000万领取炙鹰令\r         河阳 白云道长处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={1,20000000,},
--            descFormat="1,20000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [141]=
    {
        name        = "^00ff00Tòng thiên toản lục（Cấp 4）^00ff00",
        desc        = "        青云贡献度达到3000万领取炙鹰令\r         河阳 白云道长处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={1,30000000,},
--            descFormat="1,30000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [142]=
    {
        name        = "^00ff00Canh thiên kim bát（Cấp 5）^00ff00",
        desc        = "        青云贡献度达到4000万领取炙鹰令\r         河阳 白云道长处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={1,40000000,},
--            descFormat="1,40000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [143]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 6）^00ff00",
        desc        = "        青云贡献度达到5000万领取炙鹰令\r         河阳 白云道长处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={1,50000000,},
--            descFormat="1,50000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [144]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 7）^00ff00",
        desc        = "        青云贡献度达到6000万领取炙鹰令\r         河阳 白云道长处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={1,60000000,},
--            descFormat="1,60000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [145]=
    {
        name        = "^00ff00Giảm thiên tội trúc（Cấp 8）^00ff00",
        desc        = "        青云贡献度达到7000万领取炙鹰令\r         河阳 白云道长处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={1,70000000,},
--            descFormat="1,70000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [146]=
    {
        name        = "^00ff00Trầm thiên khấp nịnh（Cấp 9）^00ff00",
        desc        = "        青云贡献度达到8000万领取炙鹰令\r         河阳 白云道长处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={1,80000000,},
--            descFormat="1,80000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [147]=
    {
        name        = "^00ff00Thành thiên chính quả（Cấp 10）^00ff00",
        desc        = "        青云贡献度达到1亿领取炙鹰令\r        河阳 白云道长处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={1,100000000,},
--            descFormat="1,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [148]=
    {
        name        = "^00ff00Huyền thiên ngọc bạc（Cấp 1）^00ff00",
        desc        = "        鬼王贡献度达到500万领取炙鹰令\r        河阳 燕忠处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={3,5000000,},
--            descFormat="3,5000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [149]=
    {
        name        = "^00ff00Trung thiên đăng nhị（Cấp 2）^00ff00",
        desc        = "        鬼王贡献度达到1000万领取炙鹰令\r        河阳 燕忠处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={3,10000000,},
--            descFormat="3,10000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [150]=
    {
        name        = "^00ff00Tiện thiên bảo chúc（Cấp 3）^00ff00",
        desc        = "        鬼王贡献度达到2000万领取炙鹰令\r        河阳 燕忠处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={3,20000000,},
--            descFormat="3,20000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [151]=
    {
        name        = "^00ff00Tòng thiên toản lục（Cấp 4）^00ff00",
        desc        = "        鬼王贡献度达到3000万领取炙鹰令\r        河阳 燕忠处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={3,30000000,},
--            descFormat="3,30000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [152]=
    {
        name        = "^00ff00Canh thiên kim bát（Cấp 5）^00ff00",
        desc        = "        鬼王贡献度达到4000万领取炙鹰令\r        河阳 燕忠处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={3,40000000,},
--            descFormat="3,40000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [153]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 6）^00ff00",
        desc        = "        鬼王贡献度达到5000万领取炙鹰令\r        河阳 燕忠处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={3,50000000,},
--            descFormat="3,50000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [154]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 7）^00ff00",
        desc        = "        鬼王贡献度达到6000万领取炙鹰令\r        河阳 燕忠处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={3,60000000,},
--            descFormat="3,60000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [155]=
    {
        name        = "^00ff00Giảm thiên tội trúc（Cấp 8）^00ff00",
        desc        = "        鬼王贡献度达到7000万领取炙鹰令\r        河阳 燕忠处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={3,70000000,},
--            descFormat="3,70000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [156]=
    {
        name        = "^00ff00Trầm thiên khấp nịnh（Cấp 9）^00ff00",
        desc        = "        鬼王贡献度达到8000万领取炙鹰令\r        河阳 燕忠处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={3,80000000,},
--            descFormat="3,80000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [157]=
    {
        name        = "^00ff00Thành thiên chính quả（Cấp 10）^00ff00",
        desc        = "        鬼王贡献度达到1亿领取炙鹰令\r        河阳 燕忠处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={3,100000000,},
--            descFormat="3,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [158]=
    {
        name        = "^00ff00Huyền thiên ngọc bạc（Cấp 1）^00ff00",
        desc        = "        天音贡献度达到500万领取炙鹰令\r        河阳 法济处 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={2,5000000,},
--            descFormat="2,5000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [159]=
    {
        name        = "^00ff00Trung thiên đăng nhị（Cấp 2）^00ff00",
        desc        = "        天音贡献度达到1000万领取炙鹰令\r        河阳 法济处 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={2,10000000,},
--            descFormat="2,10000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [160]=
    {
        name        = "^00ff00Tiện thiên bảo chúc（Cấp 3）^00ff00",
        desc        = "        天音贡献度达到2000万领取炙鹰令\r        河阳 法济处 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={2,20000000,},
--            descFormat="2,20000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [161]=
    {
        name        = "^00ff00Tòng thiên toản lục（Cấp 4）^00ff00",
        desc        = "        天音贡献度达到3000万领取炙鹰令\r        河阳 法济处 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={2,30000000,},
--            descFormat="2,30000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [162]=
    {
        name        = "^00ff00Canh thiên kim bát（Cấp 5）^00ff00",
        desc        = "        天音贡献度达到4000万领取炙鹰令\r        河阳 法济处 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={2,40000000,},
--            descFormat="2,40000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [163]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 6）^00ff00",
        desc        = "        天音贡献度达到5000万领取炙鹰令\r        河阳 法济处 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={2,50000000,},
--            descFormat="2,50000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [164]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 7）^00ff00",
        desc        = "        天音贡献度达到6000万领取炙鹰令\r        河阳 法济处 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={2,60000000,},
--            descFormat="2,60000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [165]=
    {
        name        = "^00ff00Giảm thiên tội trúc（Cấp 8）^00ff00",
        desc        = "        天音贡献度达到7000万领取炙鹰令\r        河阳 法济处 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={2,70000000,},
--            descFormat="2,70000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [166]=
    {
        name        = "^00ff00Trầm thiên khấp nịnh（Cấp 9）^00ff00",
        desc        = "        天音贡献度达到8000万领取炙鹰令\r        河阳 法济处 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={2,80000000,},
--            descFormat="2,80000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [167]=
    {
        name        = "^00ff00Thành thiên chính quả（Cấp 10）^00ff00",
        desc        = "        天音贡献度达到1亿领取炙鹰令\r        河阳 法济处 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={2,100000000,},
--            descFormat="2,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [168]=
    {
        name        = "^00ff00Huyền thiên ngọc bạc（Cấp 1）^00ff00",
        desc        = "        合欢贡献度达到500万领取炙鹰令\r        河阳 唐婉儿处 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={4,5000000,},
--            descFormat="4,5000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [169]=
    {
        name        = "^00ff00Trung thiên đăng nhị（Cấp 2）^00ff00",
        desc        = "        合欢贡献度达到1000万领取炙鹰令\r        河阳 唐婉儿处 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={4,10000000,},
--            descFormat="4,10000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [170]=
    {
        name        = "^00ff00Tiện thiên bảo chúc（Cấp 3）^00ff00",
        desc        = "        合欢贡献度达到2000万领取炙鹰令\r        河阳 唐婉儿处 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={4,20000000,},
--            descFormat="4,20000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [171]=
    {
        name        = "^00ff00Tòng thiên toản lục（Cấp 4）^00ff00",
        desc        = "        合欢贡献度达到3000万领取炙鹰令\r        河阳 唐婉儿处 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={4,30000000,},
--            descFormat="4,30000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [172]=
    {
        name        = "^00ff00Canh thiên kim bát（Cấp 5）^00ff00",
        desc        = "        合欢贡献度达到4000万领取炙鹰令\r        河阳 唐婉儿处 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={4,40000000,},
--            descFormat="4,40000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [173]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 6）^00ff00",
        desc        = "        合欢贡献度达到5000万领取炙鹰令\r        河阳 唐婉儿处 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={4,50000000,},
--            descFormat="4,50000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [174]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 7）^00ff00",
        desc        = "        合欢贡献度达到6000万领取炙鹰令\r        河阳 唐婉儿处 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={4,60000000,},
--            descFormat="4,60000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [175]=
    {
        name        = "^00ff00Giảm thiên tội trúc（Cấp 8）^00ff00",
        desc        = "        合欢贡献度达到7000万领取炙鹰令\r        河阳 唐婉儿处 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={4,70000000,},
--            descFormat="4,70000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [176]=
    {
        name        = "^00ff00Trầm thiên khấp nịnh（Cấp 9）^00ff00",
        desc        = "        合欢贡献度达到8000万领取炙鹰令\r        河阳 唐婉儿处 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={4,80000000,},
--            descFormat="4,80000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [177]=
    {
        name        = "^00ff00Thành thiên chính quả（Cấp 10）^00ff00",
        desc        = "        合欢贡献度达到1亿领取炙鹰令\r        河阳 唐婉儿处 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={4,100000000,},
--            descFormat="4,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [178]=
    {
        name        = "^00ff00Huyền thiên ngọc bạc（Cấp 1）^00ff00",
        desc        = "        鬼道贡献度达到500万领取炙鹰令\r        河阳 常在处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={0,5000000,},
--            descFormat="0,5000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [179]=
    {
        name        = "^00ff00Trung thiên đăng nhị（Cấp 2）^00ff00",
        desc        = "        鬼道贡献度达到1000万领取炙鹰令\r        河阳 常在处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={0,10000000,},
--            descFormat="0,10000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [180]=
    {
        name        = "^00ff00Tiện thiên bảo chúc（Cấp 3）^00ff00",
        desc        = "        鬼道贡献度达到2000万领取炙鹰令\r        河阳 常在处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={0,20000000,},
--            descFormat="0,20000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [181]=
    {
        name        = "^00ff00Tòng thiên toản lục（Cấp 4）^00ff00",
        desc        = "        鬼道贡献度达到3000万领取炙鹰令\r        河阳 常在处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={0,30000000,},
--            descFormat="0,30000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [182]=
    {
        name        = "^00ff00Canh thiên kim bát（Cấp 5）^00ff00",
        desc        = "        鬼道贡献度达到4000万领取炙鹰令\r        河阳 常在处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={0,40000000,},
--            descFormat="0,40000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [183]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 6）^00ff00",
        desc        = "        鬼道贡献度达到5000万领取炙鹰令\r        河阳 常在处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={0,50000000,},
--            descFormat="0,50000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [184]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 7）^00ff00",
        desc        = "        鬼道贡献度达到6000万领取炙鹰令\r        河阳 常在处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={0,60000000,},
--            descFormat="0,60000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [185]=
    {
        name        = "^00ff00Giảm thiên tội trúc（Cấp 8）^00ff00",
        desc        = "        鬼道贡献度达到7000万领取炙鹰令\r        河阳 常在处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={0,70000000,},
--            descFormat="0,70000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [186]=
    {
        name        = "^00ff00Trầm thiên khấp nịnh（Cấp 9）^00ff00",
        desc        = "        鬼道贡献度达到8000万领取炙鹰令\r        河阳 常在处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={0,80000000,},
--            descFormat="0,80000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [187]=
    {
        name        = "^00ff00Thành thiên chính quả（Cấp 10）^00ff00",
        desc        = "        鬼道贡献度达到1亿领取炙鹰令\r        河阳 常在处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={0,100000000,},
--            descFormat="0,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [188]=
    {
        name        = "^00ff00Huyền thiên ngọc bạc（Cấp 1）^00ff00",
        desc        = "        九黎贡献度达到500万领取炙鹰令\r        河阳 黎恂处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={13,5000000,},
--            descFormat="13,5000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [189]=
    {
        name        = "^00ff00Trung thiên đăng nhị（Cấp 2）^00ff00",
        desc        = "        九黎贡献度达到1000万领取炙鹰令\r        河阳 黎恂处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={13,10000000,},
--            descFormat="13,10000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [190]=
    {
        name        = "^00ff00Tiện thiên bảo chúc（Cấp 3）^00ff00",
        desc        = "        九黎贡献度达到2000万领取炙鹰令\r        河阳 黎恂处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={13,20000000,},
--            descFormat="13,20000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [191]=
    {
        name        = "^00ff00Tòng thiên toản lục（Cấp 4）^00ff00",
        desc        = "        九黎贡献度达到3000万领取炙鹰令\r        河阳 黎恂处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={13,30000000,},
--            descFormat="13,30000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [192]=
    {
        name        = "^00ff00Canh thiên kim bát（Cấp 5）^00ff00",
        desc        = "        九黎贡献度达到4000万领取炙鹰令\r        河阳 黎恂处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={13,40000000,},
--            descFormat="13,40000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [193]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 6）^00ff00",
        desc        = "        九黎贡献度达到5000万领取炙鹰令\r        河阳 黎恂处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={13,50000000,},
--            descFormat="13,50000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [194]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 7）^00ff00",
        desc        = "        九黎贡献度达到6000万领取炙鹰令\r        河阳 黎恂处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={13,60000000,},
--            descFormat="13,60000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [195]=
    {
        name        = "^00ff00Giảm thiên tội trúc（Cấp 8）^00ff00",
        desc        = "        九黎贡献度达到7000万领取炙鹰令\r        河阳 黎恂处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={13,70000000,},
--            descFormat="13,70000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [196]=
    {
        name        = "^00ff00Trầm thiên khấp nịnh（Cấp 9）^00ff00",
        desc        = "        九黎贡献度达到8000万领取炙鹰令\r        河阳 黎恂处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={13,80000000,},
--            descFormat="13,80000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [197]=
    {
        name        = "^00ff00Thành thiên chính quả（Cấp 10）^00ff00",
        desc        = "        九黎贡献度达到1亿领取炙鹰令\r        河阳 黎恂处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={13,100000000,},
--            descFormat="13,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [198]=
    {
        name        = "^00ff00Huyền thiên ngọc bạc（Cấp 1）^00ff00",
        desc        = "        烈山贡献度达到500万领取炙鹰令\r        河阳 姜虞处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={14,5000000,},
--            descFormat="14,5000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [199]=
    {
        name        = "^00ff00Trung thiên đăng nhị（Cấp 2）^00ff00",
        desc        = "        烈山贡献度达到1000万领取炙鹰令\r        河阳 姜虞处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={14,10000000,},
--            descFormat="14,10000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [200]=
    {
        name        = "^00ff00Tiện thiên bảo chúc（Cấp 3）^00ff00",
        desc        = "        烈山贡献度达到2000万领取炙鹰令\r        河阳 姜虞处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={14,20000000,},
--            descFormat="14,20000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [201]=
    {
        name        = "^00ff00Tòng thiên toản lục（Cấp 4）^00ff00",
        desc        = "        烈山贡献度达到3000万领取炙鹰令\r        河阳 姜虞处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={14,30000000,},
--            descFormat="14,30000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [202]=
    {
        name        = "^00ff00Canh thiên kim bát（Cấp 5）^00ff00",
        desc        = "        烈山贡献度达到4000万领取炙鹰令\r        河阳 姜虞处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={14,40000000,},
--            descFormat="14,40000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [203]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 6）^00ff00",
        desc        = "        烈山贡献度达到5000万领取炙鹰令\r        河阳 姜虞处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={14,50000000,},
--            descFormat="14,50000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [204]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 7）^00ff00",
        desc        = "        烈山贡献度达到6000万领取炙鹰令\r        河阳 姜虞处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={14,60000000,},
--            descFormat="14,60000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [205]=
    {
        name        = "^00ff00Giảm thiên tội trúc（Cấp 8）^00ff00",
        desc        = "        烈山贡献度达到7000万领取炙鹰令\r        河阳 姜虞处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={14,70000000,},
--            descFormat="14,70000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [206]=
    {
        name        = "^00ff00Trầm thiên khấp nịnh（Cấp 9）^00ff00",
        desc        = "        烈山贡献度达到8000万领取炙鹰令\r        河阳 姜虞处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={14,80000000,},
--            descFormat="14,80000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [207]=
    {
        name        = "^00ff00Thành thiên chính quả（Cấp 10）^00ff00",
        desc        = "        烈山贡献度达到1亿领取炙鹰令\r        河阳 姜虞处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={14,100000000,},
--            descFormat="14,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [208]=
    {
        name = "^00ff00Cửu Lê Cung Phụng^00ff00",
        desc        = "        九黎贡献度达到2亿",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={13,200000000,},
--            descFormat="13,200000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [209]=
    {
        name = "^00ff00Liệt Sơn Cung Phụng^00ff00",
        desc        = "        烈山贡献度达到2亿",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={14,200000000,},
--            descFormat="14,200000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [210]=
    {
        name = "^00ff00Khiêu chiến·Hỗn Độn Lực Vương^00ff00",
        desc = "        Tại Thiên Không Chi Thành giết chết 1000 Hỗn Độn Lực Vương",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 6,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={31319,1000,},
--            descFormat="31319,1000,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [211]=
    {
        name = "^00ff00Khiêu chiến·Hồng Mông Đại Thánh^00ff00",
        desc        = "        在天空之城中Tiêu diệt鸿蒙大圣1000次",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 6,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={31320,1000,},
--            descFormat="31320,1000,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [212]=
    {
        name = "^00ff00Khiêu chiến·Diệm Kim Thú^00ff00",
        desc        = "        在天空之城中Tiêu diệt焰金兽1000次",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 6,
        awardScore  = 80,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={31321,1000,},
--            descFormat="31321,1000,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [213]=
    {
        name = "^00ff00Khiêu chiến·Hóa Xà^00ff00",
        desc        = "        在天空之城中Tiêu diệt化蛇1000次",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 6,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={70875,1000,},
--            descFormat="70875,1000,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [214]=
    {
        name        = "^00ff00Tạo hóa chi Thái ất^00ff00",
        desc        = "        Thu hoạch Tạo hóa chi Thái ất\r        （装备饰品Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={25727,},
--            descFormat="25727,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [215]=
    {
        name = "^00ff00Tạo Hóa Chi Thái Hạo^00ff00",
        desc        = "        Thu hoạch Tạo hóa chi 太昊\r        （装备饰品Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={25724,},
--            descFormat="25724,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [216]=
    {
        name = "^00ff00Hỏa Thần·Chúc Dung Chân Viêm^00ff00",
        desc        = "        Thu hoạch 神级·祝融套装饰品\r        （装备项链及戒指Đạt thành 条件）   ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={32990,},
--            descFormat="32990,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
            {
              id=11,
              params={32979,},
--            descFormat="32979,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
            {
              id=11,
              params={32980,},
--            descFormat="32980,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [217]=
    {
        name = "^00ff00Thủy thần·Cộng Công Cuồng Lan^00ff00",
        desc        = "        Thu hoạch 神级·共工套装饰品\r        （装备项链及戒指Đạt thành 条件）   ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={32988,},
--            descFormat="32988,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
            {
              id=11,
              params={32983,},
--            descFormat="32983,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
            {
              id=11,
              params={32984,},
--            descFormat="32984,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [218]=
    {
        name = "^00ff00Phong thần·Phong Bá Thiên Tiêu^00ff00",
        desc        = "        Thu hoạch 神级·风伯套装饰品\r        （装备项链及戒指Đạt thành 条件）   ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={32989,},
--            descFormat="32989,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
            {
              id=11,
              params={32975,},
--            descFormat="32975,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
            {
              id=11,
              params={32976,},
--            descFormat="32976,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [219]=
    {
        name = "^00ff00Vũ thần·Vũ Sư Hoàng Lôi^00ff00",
        desc = "        Thu thập bộ Vũ Sư Sáo Trang Sức Phẩm“\r        (Trang bị sức phẩm mới đạt điều kiện)   ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={32987,},
--            descFormat="32987,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
            {
              id=11,
              params={32977,},
--            descFormat="32977,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
            {
              id=11,
              params={32978,},
--            descFormat="32978,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [220]=
    {
        name = "^00ff00Chiến thần·Hình Thiên Chấn Nộ^00ff00",
        desc        = "        Thu hoạch 神级·刑天套装饰品\r        （装备项链及戒指Đạt thành 条件）   ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={32991,},
--            descFormat="32991,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
            {
              id=11,
              params={32981,},
--            descFormat="32981,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
            {
              id=11,
              params={32982,},
--            descFormat="32982,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [221]=
    {
        name = "^00ff00Cầm đế·Đế Tuấn Tình Tâm^00ff00",
        desc        = "        Thu hoạch 神级·帝俊套装饰品\r        （装备项链及戒指Đạt thành 条件）   ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={32992,},
--            descFormat="32992,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
            {
              id=11,
              params={32985,},
--            descFormat="32985,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
            {
              id=11,
              params={32986,},
--            descFormat="32986,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [222]=
    {
        name = "^00ff00Trúc Cơ Chiến Cương^00ff00",
        desc = "        Nhận Trúc Cơ Chiến Cương\r        (Trang bị Chiến Cương mới đạt điều kiện)",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={33025,},
--            descFormat="33025,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [223]=
    {
        name = "^00ff00Hòa Hợp Chiến Cương^00ff00",
        desc = "        Nhận Hòa Hợp Chiến Cương\r        (Trang bị Chiến Cương mới đạt điều kiện)",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={33026,},
--            descFormat="33026,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [224]=
    {
        name = "^00ff00Bích Cốc Chiến Cương^00ff00",
        desc = "        Nhận Bích Cốc Chiến Cương\r        (Trang bị Chiến Cương mới đạt điều kiện)",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={33027,},
--            descFormat="33027,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [225]=
    {
        name = "^00ff00Nguyên Anh Chiến Cương^00ff00",
        desc = "        Nhận Nguyên Anh Chiến Cương\r        (Trang bị Chiến Cương mới đạt điều kiện)",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={33028,},
--            descFormat="33028,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [226]=
    {
        name = "^00ff00Hỗn Độn Chủ Tể^00ff00",
        desc = "        Nhận Hỗn Độn Chủ Tể\r        (Trang Bị Huyễn Linh Thạch đạt điều kiện)",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 6,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={32954,},
--            descFormat="32954,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [227]=
    {
        name = "^00ff00Không Minh Chiến Cương^00ff00",
        desc = "        Nhận Không Minh Chiến Cương\r        (Trang bị Chiến Cương mới đạt điều kiện)",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={33029,},
--            descFormat="33029,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [228]=
    {
        name = "^00ff00Độ Kiếp Chiến Cương^00ff00",
        desc = "        Nhận Độ Kiếp Chiến Cương\r        (Trang bị Chiến Cương mới đạt điều kiện)",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={33030,},
--            descFormat="33030,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [229]=
    {
        name = "^00ff00Tịch Diệt Chiến Cương^00ff00",
        desc = "        Nhận Tịch Diệt Chiến Cương\r        (Trang bị Chiến Cương mới đạt điều kiện)",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={33031,},
--            descFormat="33031,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [230]=
    {
        name        = "^00ff00大乘战罡^00ff00",
        desc        = "        Thu hoạch 大乘战罡\r        （装备罡气Đạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={33032,},
--            descFormat="33032,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [231]=
    {
        name = "^00ff00Côn Luân Thủ Hộ Giả^00ff00",
        desc = "        Tiêu diệt Boss Côn Luân <Minh Giới·Cổ Viên>",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=4,
              params={35239,},
--            descFormat="35239,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
        }, 
    },

    [232]=
    {
        name = "^00ff00Nam Cương Thủ Hộ Giả^00ff00",
        desc = "        Tiêu diệt Boss Nam Cương <Minh Giới·Huyết Sư>",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=4,
              params={35238,},
--            descFormat="35238,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
        }, 
    },

    [233]=
    {
        name = "^00ff00Phần Hương Thủ Hộ Giả^00ff00",
        desc = "        Tiêu diệt Boss Phần Hương <Minh Giới·Thánh Sứ>",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=4,
              params={35241,},
--            descFormat="35241,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
        }, 
    },

    [234]=
    {
        name = "^00ff00Man Hoang Thủ Hộ Giả^00ff00",
        desc = "        Tiêu diệt Boss Man Hoang <Minh Giới·Thiên Lang>",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=4,
              params={35236,},
--            descFormat="35236,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
        }, 
    },

    [235]=
    {
        name = "^00ff00Tử Trạch Thủ Hộ Giả^00ff00",
        desc = "        Tiêu diệt Boss Tử Trạch <Minh Giới·Huyền Điểu>",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=4,
              params={35240,},
--            descFormat="35240,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
        }, 
    },

    [236]=
    {
        name = "^00ff00Lưu Ba Thủ Hộ Giả^00ff00",
        desc = "        Tiêu diệt Boss Lưu Ba <Minh Giới·Thao Thiết>",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=4,
              params={35242,},
--            descFormat="35242,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
        }, 
    },

    [237]=
    {
        name = "^00ff00Thiên Âm Thủ Hộ Giả^00ff00",
        desc = "        Tiêu diệt Boss Thiên Âm <Minh Giới·Thần Thú>",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=4,
              params={35243,},
--            descFormat="35243,", 
--            infoFormat = "Tiêu diệt %s (%d/1)",
            },
        }, 
    },

    [238]=
    {
        name = "^00ff00Huyền Thiên Ngọc Bác (C1)^00ff00",
        desc = "        Cống hiến Hoài Quang đạt 500 vạn\r        Có thể tới Thần Vực Phó Đồng Xứ lĩnh Chích Ưng Lệnh",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={17,5000000,},
--            descFormat="17,5000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [239]=
    {
        name = "^00ff00Trung Thiên Đăng Nhị (C2)^00ff00",
        desc = "        Cống hiến Hoài Quang đạt 1000 vạn\r        Có thể tới Thần Vực Phó Đồng Xứ lĩnh Chích Ưng Lệnh",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={17,10000000,},
--            descFormat="17,10000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [240]=
    {
        name = "^00ff00Tiện Thiên Bảo Chúc (C3)^00ff00",
        desc = "        Cống hiến Hoài Quang đạt 2000 vạn\r        Có thể tới Thần Vực Phó Đồng Xứ lĩnh Chích Ưng Lệnh",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={17,20000000,},
--            descFormat="17,20000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [241]=
    {
        name        = "^00ff00Tòng thiên toản lục（Cấp 4）^00ff00",
        desc        = "        怀光贡献度达到3000万领取炙鹰令\r        河阳 怀瞳处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={17,30000000,},
--            descFormat="17,30000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [242]=
    {
        name        = "^00ff00Canh thiên kim bát（Cấp 5）^00ff00",
        desc        = "        怀光贡献度达到4000万领取炙鹰令\r        河阳 怀瞳处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={17,40000000,},
--            descFormat="17,40000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [243]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 6）^00ff00",
        desc        = "        怀光贡献度达到5000万领取炙鹰令\r        河阳 怀瞳处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={17,50000000,},
--            descFormat="17,50000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [244]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 7）^00ff00",
        desc        = "        怀光贡献度达到6000万领取炙鹰令\r        河阳 怀瞳处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={17,60000000,},
--            descFormat="17,60000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [245]=
    {
        name        = "^00ff00Giảm thiên tội trúc（Cấp 8）^00ff00",
        desc        = "        怀光贡献度达到7000万领取炙鹰令\r        河阳 怀瞳处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={17,70000000,},
--            descFormat="17,70000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [246]=
    {
        name        = "^00ff00Trầm thiên khấp nịnh（Cấp 9）^00ff00",
        desc        = "        怀光贡献度达到8000万领取炙鹰令\r        河阳 怀瞳处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={17,80000000,},
--            descFormat="17,80000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [247]=
    {
        name        = "^00ff00Thành thiên chính quả（Cấp 10）^00ff00",
        desc        = "        怀光贡献度达到1亿领取炙鹰令\r        河阳 怀瞳处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={17,100000000,},
--            descFormat="17,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [248]=
    {
        name        = "^00ff00Huyền thiên ngọc bạc（Cấp 1）^00ff00",
        desc        = "        天华贡献度达到500万领取炙鹰令\r        河阳 兰羽儿处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={18,5000000,},
--            descFormat="18,5000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [249]=
    {
        name        = "^00ff00Trung thiên đăng nhị（Cấp 2）^00ff00",
        desc        = "        天华贡献度达到1000万领取炙鹰令\r        河阳 兰羽儿处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={18,10000000,},
--            descFormat="18,10000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [250]=
    {
        name        = "^00ff00Tiện thiên bảo chúc（Cấp 3）^00ff00",
        desc        = "        天华贡献度达到2000万领取炙鹰令\r        河阳 兰羽儿处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={18,20000000,},
--            descFormat="18,20000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [251]=
    {
        name        = "^00ff00Tòng thiên toản lục（Cấp 4）^00ff00",
        desc        = "        天华贡献度达到3000万领取炙鹰令\r        河阳 兰羽儿处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={18,30000000,},
--            descFormat="18,30000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [252]=
    {
        name        = "^00ff00Canh thiên kim bát（Cấp 5）^00ff00",
        desc        = "        天华贡献度达到4000万领取炙鹰令\r        河阳 兰羽儿处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={18,40000000,},
--            descFormat="18,40000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [253]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 6）^00ff00",
        desc        = "        天华贡献度达到5000万领取炙鹰令\r        河阳 兰羽儿处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={18,50000000,},
--            descFormat="18,50000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [254]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 7）^00ff00",
        desc        = "        天华贡献度达到6000万领取炙鹰令\r        河阳 兰羽儿处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={18,60000000,},
--            descFormat="18,60000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [255]=
    {
        name        = "^00ff00Giảm thiên tội trúc（Cấp 8）^00ff00",
        desc        = "        天华贡献度达到7000万领取炙鹰令\r        河阳 兰羽儿处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={18,70000000,},
--            descFormat="18,70000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [256]=
    {
        name        = "^00ff00Trầm thiên khấp nịnh（Cấp 9）^00ff00",
        desc        = "        天华贡献度达到8000万领取炙鹰令\r        河阳 兰羽儿处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={18,80000000,},
--            descFormat="18,80000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [257]=
    {
        name        = "^00ff00Thành thiên chính quả（Cấp 10）^00ff00",
        desc        = "        天华贡献度达到1亿领取炙鹰令\r        河阳 兰羽儿处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={18,100000000,},
--            descFormat="18,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [258]=
    {
        name = "^00ff00Thiên Hoa Cung Phụng^00ff00",
        desc = "        Cống hiến Thiên Hoa đạt 2 trăm triệu",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={18,200000000,},
--            descFormat="18,200000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [259]=
    {
        name = "^00ff00Hoài Quang Cung Phụng^00ff00",
        desc = "        Cống hiến Hoài Quang đạt 2 trăm triệu",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={17,200000000,},
--            descFormat="17,200000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [260]=
    {
        name        = "^00ff00Quỷ lệ trang（Vinh diệu bản）Thu thập^00ff00",
        desc        = "        Thu thập 1 bộ Quỷ lệ trang（Vinh diệu bản）\r        （Mặc trang phục mốt đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={44149,},
--            descFormat="44149,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
            {
              id=11,
              params={44150,},
--            descFormat="44150,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
            {
              id=11,
              params={44151,},
--            descFormat="44151,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [261]=
    {
        name        = "^00ff00Bích dao trang（Si tình bản）Thu thập^00ff00",
        desc        = "        Thu thập 1 bộ Bích dao trang（Si tình bản）\r        （Mặc thời trang đạt điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={42881,},
--            descFormat="42881,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
            {
              id=11,
              params={42884,},
--            descFormat="42884,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
            {
              id=11,
              params={42886,},
--            descFormat="42886,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [262]=
    {
        name        = "^00ff00Tuyết kì trang（Chân tình bản）Thu thập^00ff00",
        desc        = "        Thu thập 1 bộ Tuyết kì trang（Chân tình bản）\r        （Mặc thời trang đạt điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={42771,},
--            descFormat="42771,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
            {
              id=11,
              params={42772,},
--            descFormat="42772,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
            {
              id=11,
              params={42773,},
--            descFormat="42773,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [263]=
    {
        name        = "^00ff00Huyền thiên ngọc bạc（Cấp 1）^00ff00",
        desc        = "        焚香贡献度达到500万领取炙鹰令\r        河阳 云泰来处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={19,5000000,},
--            descFormat="19,5000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [264]=
    {
        name        = "^00ff00Trung thiên đăng nhị（Cấp 2）^00ff00",
        desc        = "        焚香贡献度达到1000万领取炙鹰令\r        河阳 云泰来处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={19,10000000,},
--            descFormat="19,10000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [265]=
    {
        name        = "^00ff00Tiện thiên bảo chúc（Cấp 3）^00ff00",
        desc        = "        焚香贡献度达到2000万领取炙鹰令\r        河阳 云泰来处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={19,20000000,},
--            descFormat="19,20000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [266]=
    {
        name        = "^00ff00Tòng thiên toản lục（Cấp 4）^00ff00",
        desc        = "        焚香贡献度达到3000万领取炙鹰令\r        河阳 云泰来处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={19,30000000,},
--            descFormat="19,30000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [267]=
    {
        name        = "^00ff00Canh thiên kim bát（Cấp 5）^00ff00",
        desc        = "        焚香贡献度达到4000万领取炙鹰令\r        河阳 云泰来处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={19,40000000,},
--            descFormat="19,40000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [268]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 6）^00ff00",
        desc        = "        焚香贡献度达到5000万领取炙鹰令\r        河阳 云泰来处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={19,50000000,},
--            descFormat="19,50000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [269]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 7）^00ff00",
        desc        = "        焚香贡献度达到6000万领取炙鹰令\r        河阳 云泰来处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={19,60000000,},
--            descFormat="19,60000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [270]=
    {
        name        = "^00ff00Giảm thiên tội trúc（Cấp 8）^00ff00",
        desc        = "        焚香贡献度达到7000万领取炙鹰令\r        河阳 云泰来处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={19,70000000,},
--            descFormat="19,70000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [271]=
    {
        name        = "^00ff00Trầm thiên khấp nịnh（Cấp 9）^00ff00",
        desc        = "        焚香贡献度达到8000万领取炙鹰令\r        河阳 云泰来处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={19,80000000,},
--            descFormat="19,80000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [272]=
    {
        name        = "^00ff00Thành thiên chính quả（Cấp 10）^00ff00",
        desc        = "        焚香贡献度达到1亿领取炙鹰令\r        河阳 云泰来处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 2,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={19,100000000,},
--            descFormat="19,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [273]=
    {
        name        = "^00ff00Huyền thiên ngọc bạc（Cấp 1）^00ff00",
        desc        = "        太昊贡献度达到500万领取炙鹰令\r        河阳 百里尉迟处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={16,5000000,},
--            descFormat="16,5000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [274]=
    {
        name        = "^00ff00Trung thiên đăng nhị（Cấp 2）^00ff00",
        desc        = "        太昊贡献度达到1000万领取炙鹰令\r        河阳 百里尉迟处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={16,10000000,},
--            descFormat="16,10000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [275]=
    {
        name        = "^00ff00Tiện thiên bảo chúc（Cấp 3）^00ff00",
        desc        = "        太昊贡献度达到2000万领取炙鹰令\r        河阳 百里尉迟处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={16,20000000,},
--            descFormat="16,20000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [276]=
    {
        name        = "^00ff00Tòng thiên toản lục（Cấp 4）^00ff00",
        desc        = "        太昊贡献度达到3000万领取炙鹰令\r        河阳 百里尉迟处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={16,30000000,},
--            descFormat="16,30000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [277]=
    {
        name        = "^00ff00Canh thiên kim bát（Cấp 5）^00ff00",
        desc        = "        太昊贡献度达到4000万领取炙鹰令\r        河阳 百里尉迟处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={16,40000000,},
--            descFormat="16,40000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [278]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 6）^00ff00",
        desc        = "        太昊贡献度达到5000万领取炙鹰令\r        河阳 百里尉迟处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={16,50000000,},
--            descFormat="16,50000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [279]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 7）^00ff00",
        desc        = "        太昊贡献度达到6000万领取炙鹰令\r        河阳 百里尉迟处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={16,60000000,},
--            descFormat="16,60000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [280]=
    {
        name        = "^00ff00Giảm thiên tội trúc（Cấp 8）^00ff00",
        desc        = "        太昊贡献度达到7000万领取炙鹰令\r        河阳 百里尉迟处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={16,70000000,},
--            descFormat="16,70000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [281]=
    {
        name        = "^00ff00Trầm thiên khấp nịnh（Cấp 9）^00ff00",
        desc        = "        太昊贡献度达到8000万领取炙鹰令\r        河阳 百里尉迟处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={16,80000000,},
--            descFormat="16,80000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [282]=
    {
        name        = "^00ff00Thành thiên chính quả（Cấp 10）^00ff00",
        desc        = "        太昊贡献度达到1亿领取炙鹰令\r        河阳 百里尉迟处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={16,100000000,},
--            descFormat="16,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [283]=
    {
        name = "^00ff00Phần Hương Cốc Danh Túc00ff00",
        desc = "        Cống hiến Phần Hương đạt 2 trăm triệu",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={19,200000000,},
--            descFormat="19,200000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [284]=
    {
        name = "^00ff00Thái Hạo Cung Phụng^00ff00",
        desc = "        Cống hiến Thái Hạo đạt 2 trăm triệu",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={16,200000000,},
--            descFormat="16,200000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [285]=
    {
        name        = "^00ff00Huyền thiên ngọc bạc（Cấp 1）^00ff00",
        desc        = "        辰皇贡献度达到500万领取炙鹰令\r        河阳 乐正先处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={15,5000000,},
--            descFormat="15,5000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [286]=
    {
        name        = "^00ff00Trung thiên đăng nhị（Cấp 2）^00ff00",
        desc        = "        辰皇贡献度达到1000万领取炙鹰令\r        河阳 乐正先处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={15,10000000,},
--            descFormat="15,10000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [287]=
    {
        name        = "^00ff00Tiện thiên bảo chúc（Cấp 3）^00ff00",
        desc        = "        辰皇贡献度达到2000万领取炙鹰令\r        河阳 乐正先处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={15,20000000,},
--            descFormat="15,20000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [288]=
    {
        name        = "^00ff00Tòng thiên toản lục（Cấp 4）^00ff00",
        desc        = "        辰皇贡献度达到3000万领取炙鹰令\r        河阳 乐正先处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={15,30000000,},
--            descFormat="15,30000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [289]=
    {
        name        = "^00ff00Canh thiên kim bát（Cấp 5）^00ff00",
        desc        = "        辰皇贡献度达到4000万领取炙鹰令\r        河阳 乐正先处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={15,40000000,},
--            descFormat="15,40000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [290]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 6）^00ff00",
        desc        = "        辰皇贡献度达到5000万领取炙鹰令\r        河阳 乐正先处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={15,50000000,},
--            descFormat="15,50000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [291]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 7）^00ff00",
        desc        = "        辰皇贡献度达到6000万领取炙鹰令\r        河阳 乐正先处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={15,60000000,},
--            descFormat="15,60000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [292]=
    {
        name        = "^00ff00Giảm thiên tội trúc（Cấp 8）^00ff00",
        desc        = "        辰皇贡献度达到7000万领取炙鹰令\r        河阳 乐正先处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={15,70000000,},
--            descFormat="15,70000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [293]=
    {
        name        = "^00ff00Trầm thiên khấp nịnh（Cấp 9）^00ff00",
        desc        = "        辰皇贡献度达到8000万领取炙鹰令\r        河阳 乐正先处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={15,80000000,},
--            descFormat="15,80000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [294]=
    {
        name        = "^00ff00Thành thiên chính quả（Cấp 10）^00ff00",
        desc        = "        辰皇贡献度达到1亿领取炙鹰令\r        河阳 乐正先处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={15,100000000,},
--            descFormat="15,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [295]=
    {
        name = "^00ff00Thần Hoàng Cung Phụng^00ff00",
        desc = "        Cống hiến Thần Hoàng đạt 2 trăm triệu",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={15,200000000,},
--            descFormat="15,200000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [296]=
    {
        name = "^00ff00Hùng tư anh phát^00ff00",
        desc = "        Độ sôi nổi 1 ngày đạt 100 điểm",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 1,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=16,
              params={0},
--            descFormat="0", 
--            infoFormat = "一天内活跃度达到100分",
            },
        }, 
    },

    [297]=
    {
        name = "^00ff00Long mã tinh thần^00ff00",
        desc = "        Độ sôi nổi liên tục 7 ngày đạt 100 điểm",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1006,
              params={1,},
--            descFormat="1,", 
--            infoFormat = "连续七天活跃度达到100分 (%d/%d)次",
            },
        }, 
    },

    [298]=
    {
        name = "^00ff00Cái thế thái bảo^00ff00",
        desc = "        Độ sôi nổi liên tục 7 ngày đạt 100 điểm\r        đạt 50 lần",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 1,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1006,
              params={50,},
--            descFormat="50,", 
--            infoFormat = "连续七天活跃度达到100分 (%d/%d)次",
            },
        }, 
    },

    [299]=
    {
        name        = "^00ff00Pháp thiên tượng địa^00ff00",
        desc        = "        Phi thăng nhân vật cấp bậc đạt tới 160 cấp",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 1,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1,
              params={1,160,},
--            descFormat="1,160,", 
--            infoFormat = "%s đạt tới cấp độ %d (%d/1)",
            },
        }, 
    },

    [300]=
    {
        name = "^00ff00Thiên Giới Diễn Vũ- Đại Sát Đặc Sát^00ff00",
        desc = "        Tại Thiên Giới Diễn Võ liên sát vượt 15.\r        (Bản thân tử vong kết thúc tính liên sát)",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 7,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=17,
              params={1,15,},
--            descFormat="1,15,", 
--            infoFormat = "流水席战场Tiêu diệt玩家 int int",
            },
        }, 
    },

    [301]=
    {
        name = "^00ff00Thiên giới diễn võ- Giết người như ngóe^00ff00",
        desc = "        Tại Thiên Giới Diễn Võ liên sát vượt 30.\r        (Bản thân tử vong kết thúc tính liên sát)",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 7,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=17,
              params={1,30,},
--            descFormat="1,30,", 
--            infoFormat = "流水席战场Tiêu diệt玩家 int int",
            },
        }, 
    },

    [302]=
    {
        name = "^00ff00Thiên giới diễn võ- Không ai có thể ngăn chặn^00ff00",
        desc = "        Tại Thiên Giới Diễn Võ liên sát vượt 50.\r        (Bản thân tử vong kết thúc tính liên sát)",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 7,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=17,
              params={1,50,},
--            descFormat="1,50,", 
--            infoFormat = "流水席战场Tiêu diệt玩家 int int",
            },
        }, 
    },

    [303]=
    {
        name = "^00ff00Thiên giới diễn võ- Siêu thần^00ff00",
        desc = "        Tại Thiên Giới Diễn Võ liên sát vượt 100.\r        (Bản thân tử vong kết thúc tính liên sát)",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 7,
        awardScore  = 20,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=17,
              params={1,100,},
--            descFormat="1,100,", 
--            infoFormat = "流水席战场Tiêu diệt玩家 int int",
            },
        }, 
    },

    [304]=
    {
        name = "^00ff00Thiên giới diễn võ- Vì dân trừ hại^00ff00",
        desc = "        Tính một liên sát 15 người chơi trở lên",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 7,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=19,
              params={15,},
--            descFormat="15,", 
--            infoFormat = "流水席战场终结多杀 int",
            },
        }, 
    },

    [305]=
    {
        name = "^00ff00Thiên giới diễn võ- Bảo vệ chính nghĩa^00ff00",
        desc = "        Tính một liên sát 30 người chơi trở lên",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 7,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=19,
              params={30,},
--            descFormat="30,", 
--            infoFormat = "流水席战场终结多杀 int",
            },
        }, 
    },

    [306]=
    {
        name = "^00ff00Thiên giới diễn võ- Thay trời hành đạo^00ff00",
        desc = "        Tính một liên sát 50 người chơi trở lên",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 7,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=19,
              params={50,},
--            descFormat="50,", 
--            infoFormat = "流水席战场终结多杀 int",
            },
        }, 
    },

    [307]=
    {
        name = "^00ff00Thiên giới diễn võ- Thí sát^00ff00",
        desc = "        Tính một liên sát 100 người chơi trở lên",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 7,
        awardScore  = 20,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=19,
              params={100,},
--            descFormat="100,", 
--            infoFormat = "流水席战场终结多杀 int",
            },
        }, 
    },

    [308]=
    {
        name = "^00ff00Thiên giới diễn võ-Ngũ sát^00ff00",
        desc = "        Tại Thiên Giới Diễn Võ liên sát liên tục 5 địch.\r        (Sau 10 giây số tính liên tục kết thúc)",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 7,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=17,
              params={2,5,},
--            descFormat="2,5,", 
--            infoFormat = "流水席战场Tiêu diệt玩家 int int",
            },
        }, 
    },

    [309]=
    {
        name = "^00ff00Thiên giới diễn võ-Thập sát^00ff00",
        desc = "        Tại Thiên Giới Diễn Võ liên sát liên tục 10 địch.\r        (Sau 10 giây số tính liên tục kết thúc)",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 7,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=17,
              params={2,10,},
--            descFormat="2,10,", 
--            infoFormat = "流水席战场Tiêu diệt玩家 int int",
            },
        }, 
    },

    [310]=
    {
        name = "^00ff00Thiên giới diễn võ-Niệm sát^00ff00",
        desc = "        Tại Thiên Giới Diễn Võ liên sát liên tục 20 địch.\r        (Sau 10 giây số tính liên tục kết thúc)",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 7,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=17,
              params={2,20,},
--            descFormat="2,20,", 
--            infoFormat = "流水席战场Tiêu diệt玩家 int int",
            },
        }, 
    },

    [311]=
    {
        name = "^00ff00Thiên giới diễn võ- -Tạp sát^00ff00",
        desc = "        Tại Thiên Giới Diễn Võ liên sát liên tục 30 địch.\r        (Sau 10 giây số tính liên tục kết thúc)",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 7,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=17,
              params={2,30,},
--            descFormat="2,30,", 
--            infoFormat = "流水席战场Tiêu diệt玩家 int int",
            },
        }, 
    },

    [312]=
    {
        name = "^00ff00Thiên giới diễn võ- Người chủ nghĩa hòa bình^00ff00",
        desc = "       Tại 1 lần Thiên Giới Diễn Võ chỉ thông qua sát quái đạt mục tiêu",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 7,
        awardScore  = 20,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=18,
              params={2,},
--            descFormat="2,", 
--            infoFormat = "流水席战场完成 int",
            },
        }, 
    },

    [313]=
    {
        name = "^00ff00Thiên giới diễn võ- Sát nhân cuồng ma^00ff00",
        desc        = "        在一次天界演武中只通过杀人Đạt thành 目标",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 7,
        awardScore  = 20,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=18,
              params={1,},
--            descFormat="1,", 
--            infoFormat = "流水席战场完成 int",
            },
        }, 
    },

    [314]=
    {
        name = "^00ff00Thiên giới diễn võ-Trận chiến hoàn mỹ^00ff00",
        desc = "        Tại 1 lần Thiên Giới Diễn Võ 1 lần không chết đạt mục tiêu",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 7,
        awardScore  = 20,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=18,
              params={3,},
--            descFormat="3,", 
--            infoFormat = "流水席战场完成 int",
            },
        }, 
    },

    [315]=
    {
        name = "^00ff00Thiên giới diễn võ-Chí tôn ^00ff00",
        desc = "        Hoàn thành thành tựu Thiên Giới Diễn Võ sau:",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 7,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=12,
              params={303,},
--            descFormat="303,", 
--            infoFormat = "Đạt thành 成就 %s (%d/1)",
            },
            {
              id=12,
              params={307,},
--            descFormat="307,", 
--            infoFormat = "Đạt thành 成就 %s (%d/1)",
            },
            {
              id=12,
              params={311,},
--            descFormat="311,", 
--            infoFormat = "Đạt thành 成就 %s (%d/1)",
            },
            {
              id=12,
              params={312,},
--            descFormat="312,", 
--            infoFormat = "Đạt thành 成就 %s (%d/1)",
            },
            {
              id=12,
              params={313,},
--            descFormat="313,", 
--            infoFormat = "Đạt thành 成就 %s (%d/1)",
            },
            {
              id=12,
              params={314,},
--            descFormat="314,", 
--            infoFormat = "Đạt thành 成就 %s (%d/1)",
            },
        }, 
    },

    [316]=
    {
        name = "^00ff00Khiên Cơ Tộc Thái Đấu^00ff00",
        desc = "        Cống hiến Khiên Cơ đạt 200 triệu",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={30,200000000,},
--            descFormat="30,200000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [317]=
    {
        name = "^00ff00Anh Chiêu Tộc Thái Đấu^00ff00",
        desc = "        Cống hiến Anh Chiêu đạt 200 triệu",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={31,200000000,},
--            descFormat="31,200000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [318]=
    {
        name        = "^00ff00Huyền thiên ngọc bạc（Cấp 1）^00ff00",
        desc        = "        牵机贡献度达到500万领取炙鹰令\r        河阳 晨辉处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={30,5000000,},
--            descFormat="30,5000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [319]=
    {
        name        = "^00ff00Trung thiên đăng nhị（Cấp 2）^00ff00",
        desc        = "        牵机贡献度达到1000万领取炙鹰令\r        河阳 晨辉处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={30,10000000,},
--            descFormat="30,10000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [320]=
    {
        name        = "^00ff00Tiện thiên bảo chúc（Cấp 3）^00ff00",
        desc        = "        牵机贡献度达到2000万领取炙鹰令\r        河阳 晨辉处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={30,20000000,},
--            descFormat="30,20000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [321]=
    {
        name        = "^00ff00Tòng thiên toản lục（Cấp 4）^00ff00",
        desc        = "        牵机贡献度达到3000万领取炙鹰令\r        河阳 晨辉处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={30,30000000,},
--            descFormat="30,30000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [322]=
    {
        name        = "^00ff00Canh thiên kim bát（Cấp 5）^00ff00",
        desc        = "        牵机贡献度达到4000万领取炙鹰令\r        河阳 晨辉处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={30,40000000,},
--            descFormat="30,40000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [323]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 6）^00ff00",
        desc        = "        牵机贡献度达到5000万领取炙鹰令\r        河阳 晨辉处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={30,50000000,},
--            descFormat="30,50000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [324]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 7）^00ff00",
        desc        = "        牵机贡献度达到6000万领取炙鹰令\r        河阳 晨辉处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={30,60000000,},
--            descFormat="30,60000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [325]=
    {
        name        = "^00ff00Giảm thiên tội trúc（Cấp 8）^00ff00",
        desc        = "        牵机贡献度达到7000万领取炙鹰令\r        河阳 晨辉处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={30,70000000,},
--            descFormat="30,70000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [326]=
    {
        name        = "^00ff00Trầm thiên khấp nịnh（Cấp 9）^00ff00",
        desc        = "        牵机贡献度达到8000万领取炙鹰令\r        河阳 晨辉处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={30,80000000,},
--            descFormat="30,80000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [327]=
    {
        name        = "^00ff00Thành thiên chính quả（Cấp 10）^00ff00",
        desc        = "        牵机贡献度达到1亿领取炙鹰令\r        河阳 晨辉处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={30,100000000,},
--            descFormat="30,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [328]=
    {
        name        = "^00ff00Huyền thiên ngọc bạc（Cấp 1）^00ff00",
        desc        = "        英招贡献度达到500万领取炙鹰令\r        河阳 刑谦处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={31,5000000,},
--            descFormat="31,5000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [329]=
    {
        name        = "^00ff00Trung thiên đăng nhị（Cấp 2）^00ff00",
        desc        = "        英招贡献度达到1000万领取炙鹰令\r        河阳 刑谦处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={31,10000000,},
--            descFormat="31,10000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [330]=
    {
        name        = "^00ff00Tiện thiên bảo chúc（Cấp 3）^00ff00",
        desc        = "        英招贡献度达到2000万领取炙鹰令\r        河阳 刑谦处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={31,20000000,},
--            descFormat="31,20000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [331]=
    {
        name        = "^00ff00Tòng thiên toản lục（Cấp 4）^00ff00",
        desc        = "        英招贡献度达到3000万领取炙鹰令\r        河阳 刑谦处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={31,30000000,},
--            descFormat="31,30000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [332]=
    {
        name        = "^00ff00Canh thiên kim bát（Cấp 5）^00ff00",
        desc        = "        英招贡献度达到4000万领取炙鹰令\r        河阳 刑谦处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={31,40000000,},
--            descFormat="31,40000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [333]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 6）^00ff00",
        desc        = "        英招贡献度达到5000万领取炙鹰令\r        河阳 刑谦处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={31,50000000,},
--            descFormat="31,50000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [334]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 7）^00ff00",
        desc        = "        英招贡献度达到6000万领取炙鹰令\r        河阳 刑谦处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={31,60000000,},
--            descFormat="31,60000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [335]=
    {
        name        = "^00ff00Giảm thiên tội trúc（Cấp 8）^00ff00",
        desc        = "        英招贡献度达到7000万领取炙鹰令\r        河阳 刑谦处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={31,70000000,},
--            descFormat="31,70000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [336]=
    {
        name        = "^00ff00Trầm thiên khấp nịnh（Cấp 9）^00ff00",
        desc        = "        英招贡献度达到8000万领取炙鹰令\r        河阳 刑谦处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={31,80000000,},
--            descFormat="31,80000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [337]=
    {
        name        = "^00ff00Thành thiên chính quả（Cấp 10）^00ff00",
        desc        = "        英招贡献度达到1亿领取炙鹰令\r        河阳 刑谦处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={31,100000000,},
--            descFormat="31,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [338]=
    {
        name = "^00ff00Phá Quân Tộc Thái Đấu^00ff00",
        desc = "        Phá Quân đạt cống hiến 200 triệu điểm",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={32,200000000,},
--            descFormat="32,200000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [339]=
    {
        name        = "^00ff00Huyền thiên ngọc bạc（Cấp 1）^00ff00",
        desc        = "        破军贡献度达到500万领取炙鹰令\r        河阳 容燕姬处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={32,5000000,},
--            descFormat="32,5000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [340]=
    {
        name        = "^00ff00Trung thiên đăng nhị（Cấp 2）^00ff00",
        desc        = "        破军贡献度达到1000万领取炙鹰令\r        河阳 容燕姬处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={32,10000000,},
--            descFormat="32,10000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [341]=
    {
        name        = "^00ff00Tiện thiên bảo chúc（Cấp 3）^00ff00",
        desc        = "        破军贡献度达到2000万领取炙鹰令\r        河阳 容燕姬处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={32,20000000,},
--            descFormat="32,20000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [342]=
    {
        name        = "^00ff00Tòng thiên toản lục（Cấp 4）^00ff00",
        desc        = "        破军贡献度达到3000万领取炙鹰令\r        河阳 容燕姬处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={32,30000000,},
--            descFormat="32,30000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [343]=
    {
        name        = "^00ff00Canh thiên kim bát（Cấp 5）^00ff00",
        desc        = "        破军贡献度达到4000万领取炙鹰令\r        河阳 容燕姬处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={32,40000000,},
--            descFormat="32,40000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [344]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 6）^00ff00",
        desc        = "        破军贡献度达到5000万领取炙鹰令\r        河阳 容燕姬处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={32,50000000,},
--            descFormat="32,50000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [345]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 7）^00ff00",
        desc        = "        破军贡献度达到6000万领取炙鹰令\r        河阳 容燕姬处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={32,60000000,},
--            descFormat="32,60000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [346]=
    {
        name        = "^00ff00Giảm thiên tội trúc（Cấp 8）^00ff00",
        desc        = "        破军贡献度达到7000万领取炙鹰令\r        河阳 容燕姬处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={32,70000000,},
--            descFormat="32,70000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [347]=
    {
        name        = "^00ff00Trầm thiên khấp nịnh（Cấp 9）^00ff00",
        desc        = "        破军贡献度达到8000万领取炙鹰令\r        河阳 容燕姬处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={32,80000000,},
--            descFormat="32,80000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [348]=
    {
        name        = "^00ff00Thành thiên chính quả（Cấp 10）^00ff00",
        desc        = "        破军贡献度达到1亿领取炙鹰令\r        河阳 容燕姬处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={32,100000000,},
--            descFormat="32,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [349]=
    {
        name        = "^00ff00青罗族泰斗^00ff00",
        desc        = "        青罗贡献度达到2亿",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={34,200000000,},
--            descFormat="34,200000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [350]=
    {
        name        = "^00ff00Huyền thiên ngọc bạc（Cấp 1）^00ff00",
        desc        = "        青罗贡献度达到500万领取炙鹰令\r        河阳 列子晏处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={34,5000000,},
--            descFormat="34,5000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [351]=
    {
        name        = "^00ff00Trung thiên đăng nhị（Cấp 2）^00ff00",
        desc        = "        青罗贡献度达到1000万领取炙鹰令\r        河阳 列子晏处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={34,10000000,},
--            descFormat="34,10000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [352]=
    {
        name        = "^00ff00Tiện thiên bảo chúc（Cấp 3）^00ff00",
        desc        = "        青罗贡献度达到2000万领取炙鹰令\r        河阳 列子晏处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={34,20000000,},
--            descFormat="34,20000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [353]=
    {
        name        = "^00ff00Tòng thiên toản lục（Cấp 4）^00ff00",
        desc        = "        青罗贡献度达到3000万领取炙鹰令\r        河阳 列子晏处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={34,30000000,},
--            descFormat="34,30000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [354]=
    {
        name        = "^00ff00Canh thiên kim bát（Cấp 5）^00ff00",
        desc        = "        青罗贡献度达到4000万领取炙鹰令\r        河阳 列子晏处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={34,40000000,},
--            descFormat="34,40000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [355]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 6）^00ff00",
        desc        = "        青罗贡献度达到5000万领取炙鹰令\r        河阳 列子晏处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={34,50000000,},
--            descFormat="34,50000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [356]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 7）^00ff00",
        desc        = "        青罗贡献度达到6000万领取炙鹰令\r        河阳 列子晏处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={34,60000000,},
--            descFormat="34,60000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [357]=
    {
        name        = "^00ff00Giảm thiên tội trúc（Cấp 8）^00ff00",
        desc        = "        青罗贡献度达到7000万领取炙鹰令\r        河阳 列子晏处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={34,70000000,},
--            descFormat="34,70000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [358]=
    {
        name        = "^00ff00Trầm thiên khấp nịnh（Cấp 9）^00ff00",
        desc        = "        青罗贡献度达到8000万领取炙鹰令\r        河阳 列子晏处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={34,80000000,},
--            descFormat="34,80000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [359]=
    {
        name        = "^00ff00Thành thiên chính quả（Cấp 10）^00ff00",
        desc        = "        青罗贡献度达到1亿领取炙鹰令\r        河阳 列子晏处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={34,100000000,},
--            descFormat="34,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [360]=
    {
        name = "^00ff00Thú Thần Phẫn Nộ^00ff00",
        desc = "        Phụ bản Thú Thần giết Thú Thần 50 lần",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 1,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={65880,50,},
--            descFormat="65880,50,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [361]=
    {
        name = "^00ff00Thú Thần Run Rẩy^00ff00",
        desc = "        Phụ bản Thú Thần giết Thú Thần 100 lần",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 1,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={65880,100,},
--            descFormat="65880,100,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [362]=
    {
        name = "^00ff00Thú Thần Khóc^00ff00",
        desc = "        Phụ bản Thú Thần giết Thú Thần 365 lần",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 1,
        awardScore  = 200,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={65880,365,},
--            descFormat="65880,365,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [363]=
    {
        name = "^00ff00Vào Giai Cảnh^00ff00",
        desc = "        Phụ bản Phần Hương Cốc giết Linh Lung 10 lần",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 1,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={44844,10,},
--            descFormat="44844,10,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [364]=
    {
        name = "^00ff00Hẹn Ước Giai Nhân^00ff00",
        desc = "        Phụ bản Phần Hương Cốc giết Linh Lung 50 lần",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 1,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={44844,50,},
--            descFormat="44844,50,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [365]=
    {
        name = "^00ff00Khai Phá Hồng Mông^00ff00",
        desc = "        Phụ bản Hồng Mông giết An Thổ Vương 100 lần",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 1,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={43182,100,},
--            descFormat="43182,100,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [366]=
    {
        name = "^00ff00Huyễn Nguyệt Sứ Giả^00ff00",
        desc = "        Hoàn thành Phụ bản Gia Tộc 100 lần ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 1,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1000,
              params={32595,100,},
--            descFormat="32595,100,", 
--            infoFormat = "完成 %s (%d/%d)次",
            },
        }, 
    },

    [367]=
    {
        name = "^00ff00Huyễn Nguyệt Chân Quân^00ff00",
        desc = "        Hoàn thành Phụ bản Gia Tộc 365 lần ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 1,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1000,
              params={32595,365,},
--            descFormat="32595,365,", 
--            infoFormat = "完成 %s (%d/%d)次",
            },
        }, 
    },

    [368]=
    {
        name = "^00ff00Huyễn Nguyệt Tiên Quân^00ff00",
        desc = "        Hoàn thành Phụ bản Gia Tộc 1000 lần ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 1,
        awardScore  = 200,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1000,
              params={32595,1000,},
--            descFormat="32595,1000,", 
--            infoFormat = "完成 %s (%d/%d)次",
            },
        }, 
    },

    [369]=
    {
        name        = "^00ff00Tứ tượng ngộ tâm^00ff00",
        desc        = "        完成四象宫副本任务100次 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 1,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1000,
              params={27506,100,},
--            descFormat="27506,100,", 
--            infoFormat = "完成 %s (%d/%d)次",
            },
        }, 
    },

    [370]=
    {
        name        = "^00ff00Thập thần tiên phong^00ff00",
        desc        = "        Hoàn thành Thập Thần (150) 50 lần ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 1,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1000,
              params={29732,50,},
--            descFormat="29732,50,", 
--            infoFormat = "完成 %s (%d/%d)次",
            },
        }, 
    },

    [371]=
    {
        name        = "^00ff00Thập thần dũng sĩ^00ff00",
        desc        = "        完成十神（150）100次 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 1,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1000,
              params={29732,100,},
--            descFormat="29732,100,", 
--            infoFormat = "完成 %s (%d/%d)次",
            },
        }, 
    },

    [372]=
    {
        name        = "^00ff00Thập thần đấu sĩ^00ff00",
        desc        = "        完成十神（156）100次 ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 1,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1000,
              params={29736,100,},
--            descFormat="29736,100,", 
--            infoFormat = "完成 %s (%d/%d)次",
            },
        }, 
    },

    [373]=
    {
        name        = "^00ff00Luyện khí đạo sư^00ff00",
        desc        = "        Tinh luyện trang bị (+10) thành công 49 lần ",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 1,
        awardScore  = 150,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1005,
              params={0,10,49,},
--            descFormat="0,10,49,", 
--            infoFormat = "炼器+ %d %s (%d/%d)次",
            },
        }, 
    },

    [374]=
    {
        name        = "^00ff00Luyện khí thiên sư^00ff00",
        desc        = "        Tinh luyện trang bị（+11）thành công 49 lần ",
        preCondDesc = "Không",
        mainClass   = 5,
        subClass    = 1,
        awardScore  = 200,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1005,
              params={0,11,49,},
--            descFormat="0,11,49,", 
--            infoFormat = "炼器+ %d %s (%d/%d)次",
            },
        }, 
    },

    [375]=
    {
        name        = "^00ff00Vọng thư ấn kí · thái hạo^00ff00",
        desc        = "        Thu hoạch Vọng thư ấn kí · thái hạo\r        （Trang bị sau đạt thành điều kiện） ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={55222,},
--            descFormat="55222,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [376]=
    {
        name        = "^00ff00Nhục thư ấn ký·Thái hạo^00ff00",
        desc        = "        Thu hoạch Nhục thư ấn ký·Thái hạo\r        （Trang bị sau đạt thành điều kiện） ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={55223,},
--            descFormat="55223,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [377]=
    {
        name        = "^00ff00Hi hòa ấn kí·Thái hạo^00ff00",
        desc        = "        Thu hoạch Hi hòa ấn kí·Thái hạo\r        （Trang bị sau đạt thành điều kiện） ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={55224,},
--            descFormat="55224,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [378]=
    {
        name        = "^00ff00Huyền minh ấn kí·Thái ất^00ff00",
        desc        = "        Thu hoạch Huyền minh ấn kí·Thái ất\r        （Trang bị sau đạt thành điều kiện） ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={55225,},
--            descFormat="55225,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [379]=
    {
        name        = "^00ff00Tĩnh tức ấn kí·Thái ất^00ff00",
        desc        = "        Thu hoạch Tĩnh tức ấn kí·Thái ất\r        （Trang bị sau đạt thành điều kiện） ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={55226,},
--            descFormat="55226,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [380]=
    {
        name        = "^00ff00Cú mang ấn kí·Thái ất^00ff00",
        desc        = "        Thu hoạch Cú mang ấn kí·Thái ất\r        （Trang bị sau đạt thành điều kiện） ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={55227,},
--            descFormat="55227,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [381]=
    {
        name        = "^00ff00Hi hòa phù thạch·Thiên đạo^00ff00",
        desc        = "        Thu hoạch Hi hòa phù thạch·Thiên đạo\r        （Trang bị sau đạt thành điều kiện） ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={55228,},
--            descFormat="55228,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [382]=
    {
        name        = "^00ff00Hi hòa huyết ngọc·Thiên đạo^00ff00",
        desc        = "        Thu hoạch Hi hòa huyết ngọc·Thiên đạo\r        （Trang bị sau đạt thành điều kiện） ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={55229,},
--            descFormat="55229,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [383]=
    {
        name        = "^00ff00Tĩnh tức phù thạch·Ngọc hư^00ff00",
        desc        = "        Thu hoạch Tĩnh tức phù thạch·Ngọc hư\r        （Trang bị sau đạt thành điều kiện） ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={55230,},
--            descFormat="55230,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [384]=
    {
        name        = "^00ff00Tĩnh tức huyết ngọc·Ngọc hư^00ff00",
        desc        = "        Thu hoạch Tĩnh tức huyết ngọc·Ngọc hư\r        （Trang bị sau đạt thành điều kiện） ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={55231,},
--            descFormat="55231,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [385]=
    {
        name        = "^00ff00Nhục thu phù thạch·Thiên dịch^00ff00",
        desc        = "        Thu hoạch Nhục thu phù thạch·Thiên dịch\r        （Trang bị sau đạt thành điều kiện） ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={55232,},
--            descFormat="55232,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [386]=
    {
        name        = "^00ff00Nhục thu huyết ngọc · thiên dịch^00ff00",
        desc        = "        Thu hoạch Nhục thu huyết ngọc · thiên dịch\r        （Trang bị sau đạt thành điều kiện） ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={55233,},
--            descFormat="55233,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [387]=
    {
        name        = "^00ff00Vọng thư phù thạch · thiên quyến^00ff00",
        desc        = "        Thu hoạch Vọng thư phù thạch · thiên quyến\r        （Trang bị sau đạt thành điều kiện） ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={55234,},
--            descFormat="55234,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [388]=
    {
        name        = "^00ff00Vọng thư huyết ngọc · thiên quyến^00ff00",
        desc        = "        Thu hoạch Vọng thư huyết ngọc · thiên quyến\r        （Trang bị sau đạt thành điều kiện） ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={55235,},
--            descFormat="55235,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [389]=
    {
        name        = "^00ff00Cú mang phù thạch · thiên độn^00ff00",
        desc        = "        Thu hoạch Cú mang phù thạch · thiên độn\r        （Trang bị sau đạt thành điều kiện） ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={55236,},
--            descFormat="55236,", 
--            infoFormat = "Thu hoạch 并装备 %s (%d/1)",
            },
        }, 
    },

    [390]=
    {
        name        = "^00ff00Cú mang huyết ngọc · thiên độn^00ff00",
        desc        = "        Đạt được Cú mang huyết ngọc · thiên độn\r        （Điều kiện đáp ứng sau khi trang bị） ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={55237,},
--            descFormat="55237,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [391]=
    {
        name        = "^00ff00Huyền minh phù thạch · thiên thú^00ff00",
        desc        = "        Đạt được Huyền minh phù thạch · thiên thú\r        （Điều kiện đáp ứng sau khi trang bị） ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={55238,},
--            descFormat="55238,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [392]=
    {
        name        = "^00ff00Huyền minh huyết ngọc · thiên thú^00ff00",
        desc        = "        Đạt được Huyền minh huyết ngọc · thiên thú\r        （Điều kiện đáp ứng sau khi trang bị） ",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 2,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={55239,},
--            descFormat="55239,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [393]=
    {
        name        = "^00ff00Tiêu diêu cẩm nang · thập kế^00ff00",
        desc        = "        Đạt được Tiêu diêu cẩm nang · thập kế\r        （Trang bị cẩm nang đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={42632,},
--            descFormat="42632,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [394]=
    {
        name        = "^00ff00Thần hành cẩm nang · thập kế^00ff00",
        desc        = "        Đạt được Thần hành cẩm nang · thập kế\r        （Trang bị cẩm nang đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={42623,},
--            descFormat="42623,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [395]=
    {
        name        = "^00ff00Thái hư cẩm nang · thập kế^00ff00",
        desc        = "        Đạt được Thái hư cẩm nang · thập kế\r        （Trang bị cẩm nang đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 3,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={42627,},
--            descFormat="42627,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [396]=
    {
        name        = "^00ff00Thần hành cẩm nang·Bách kế^00ff00",
        desc        = "        Đạt được Thần hành cẩm nang·Bách kế\r        （Trang bị cẩm nang đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 3,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={42624,},
--            descFormat="42624,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [397]=
    {
        name        = "^00ff00Thần hành cẩm nang·Thiên kế^00ff00",
        desc        = "        Đạt được Thần hành cẩm nang·Thiên kế\r        （Trang bị cẩm nang đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 3,
        awardScore  = 150,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={42625,},
--            descFormat="42625,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [398]=
    {
        name        = "^00ff00Thần hành cẩm nang·Vạn kế^00ff00",
        desc        = "        Đạt được Thần hành cẩm nang·Vạn kế\r        （Trang bị cẩm nang đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 3,
        awardScore  = 200,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={42626,},
--            descFormat="42626,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [399]=
    {
        name        = "^00ff00Thái hư cẩm nang·Bách kế^00ff00",
        desc        = "        Đạt được Thái hư cẩm nang·Bách kế\r        （Trang bị cẩm nang đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 3,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={42628,},
--            descFormat="42628,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [400]=
    {
        name        = "^00ff00Thái hư cẩm nang·Thiên kế^00ff00",
        desc        = "        Đạt được Thái hư cẩm nang·Thiên kế\r        （Trang bị cẩm nang đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 3,
        awardScore  = 150,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={42629,},
--            descFormat="42629,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [401]=
    {
        name        = "^00ff00Thái hư cẩm nang·Vạn kế^00ff00",
        desc        = "        Đạt được Thái hư cẩm nang·Vạn kế\r        （Trang bị cẩm nang đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 3,
        awardScore  = 200,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={42631,},
--            descFormat="42631,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [402]=
    {
        name        = "^00ff00Tiêu diêu cẩm nang·Bách kế^00ff00",
        desc        = "        Đạt được Tiêu diêu cẩm nang·Bách kế\r        （Trang bị cẩm nang đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 3,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={42633,},
--            descFormat="42633,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [403]=
    {
        name        = "^00ff00Tiêu diêu cẩm nang·Thiên kế^00ff00",
        desc        = "        Đạt được Tiêu diêu cẩm nang·Thiên kế\r        （Trang bị cẩm nang đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 3,
        awardScore  = 150,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={42634,},
--            descFormat="42634,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [404]=
    {
        name        = "^00ff00Tiêu diêu cẩm nang·Vạn kế^00ff00",
        desc        = "        Đạt được Tiêu diêu cẩm nang·Vạn kế\r        （Trang bị cẩm nang đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 3,
        awardScore  = 200,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={42635,},
--            descFormat="42635,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [405]=
    {
        name        = "^00ff00Đại thừa chiến cương★^00ff00",
        desc        = "        Đạt được Đại thừa chiến cương★\r        （Trang bị cương khí đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={53564,},
--            descFormat="53564,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [406]=
    {
        name        = "^00ff00Đại thừa chiến cương★★^00ff00",
        desc        = "        Đạt được Đại thừa chiến cương★★\r        （Trang bị cương khí đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={53565,},
--            descFormat="53565,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [407]=
    {
        name        = "^00ff00Đại thừa chiến cương★★★^00ff00",
        desc        = "        Đạt được Đại thừa chiến cương★★★\r        （Trang bị cương khí đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 4,
        awardScore  = 200,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={53566,},
--            descFormat="53566,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [408]=
    {
        name        = "^00ff00Pháp thân·Vạn lưu chí tôn★^00ff00",
        desc        = "        Đạt được Pháp thân·Vạn lưu chí tôn★\r        （Trang bị Pháp thân đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 5,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={51098,},
--            descFormat="51098,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [409]=
    {
        name        = "^00ff00Pháp thân·Vạn lưu chí tôn★★^00ff00",
        desc        = "        Đạt được Pháp thân·Vạn lưu chí tôn★★\r        （Trang bị Pháp thân đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 5,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={51099,},
--            descFormat="51099,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [410]=
    {
        name        = "^00ff00Pháp thân·Vạn lưu chí tôn★★★^00ff00",
        desc        = "        Đạt được Pháp thân·Vạn lưu chí tôn★★★\r        （Trang bị Pháp thân đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 5,
        awardScore  = 200,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={51100,},
--            descFormat="51100,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [411]=
    {
        name        = "^00ff00Kim thân·Vạn lưu chí tôn★^00ff00",
        desc        = "        Đạt được Kim thân·Vạn lưu chí tôn★\r        （Trang bị Kim thân đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 5,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={51101,},
--            descFormat="51101,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [412]=
    {
        name        = "^00ff00Kim thân·Vạn lưu chí tôn★★^00ff00",
        desc        = "        Đạt được Kim thân·Vạn lưu chí tôn★★\r        （Trang bị Kim thân đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 5,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={51102,},
--            descFormat="51102,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [413]=
    {
        name        = "^00ff00Kim thân·Vạn lưu chí tôn★★★^00ff00",
        desc        = "        Đạt được Kim thân·Vạn lưu chí tôn★★★\r        （Trang bị Kim thân đạt thành điều kiện）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 5,
        awardScore  = 200,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={51103,},
--            descFormat="51103,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [414]=
    {
        name        = "^00ff00Huyễn linh thạch·Bích dao^00ff00",
        desc        = "        Đạt được Huyễn linh thạch·Bích dao\r        （装备Huyễn linh thạchĐạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 6,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={54097,},
--            descFormat="54097,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },

    [415]=
    {
        name        = "^00ff00Huyễn linh thạch·Đế tuấn^00ff00",
        desc        = "        Đạt được Huyễn linh thạch·Đế tuấn\r        （装备Huyễn linh thạchĐạt thành 条件）",
        preCondDesc = "Không",
        mainClass   = 4,
        subClass    = 6,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=11,
              params={60467,},
--            descFormat="60467,", 
--            infoFormat = "Đạt được 并装备 %s (%d/1)",
            },
        }, 
    },
    
    [416]=
    {
        name        = "^00ff00Quy vân sơn thái đấu^00ff00",
        desc        = "        Quy vân cống hiến độ đạt tới 2 triệu",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={35,200000000,},
--            descFormat="35,200000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [417]=
    {
        name        = "^00ff00Huyền thiên ngọc bạc（Cấp 1）^00ff00",
        desc        = "        归云贡献度达到500万领取炙鹰令\r        河阳 陆昭云处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={35,5000000,},
--            descFormat="35,5000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [418]=
    {
        name        = "^00ff00Trung thiên đăng nhị（Cấp 2）^00ff00",
        desc        = "        归云贡献度达到1000万领取炙鹰令\r        河阳 陆昭云处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={35,10000000,},
--            descFormat="35,10000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [419]=
    {
        name        = "^00ff00Tiện thiên bảo chúc（Cấp 3）^00ff00",
        desc        = "        归云贡献度达到2000万领取炙鹰令\r        河阳 陆昭云处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={35,20000000,},
--            descFormat="35,20000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [420]=
    {
        name        = "^00ff00Tòng thiên toản lục（Cấp 4）^00ff00",
        desc        = "        归云贡献度达到3000万领取炙鹰令\r        河阳 陆昭云处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={35,30000000,},
--            descFormat="35,30000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [421]=
    {
        name        = "^00ff00Canh thiên kim bát（Cấp 5）^00ff00",
        desc        = "        归云贡献度达到4000万领取炙鹰令\r        河阳 陆昭云处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={35,40000000,},
--            descFormat="35,40000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [422]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 6）^00ff00",
        desc        = "        归云贡献度达到5000万领取炙鹰令\r        河阳 陆昭云处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={35,50000000,},
--            descFormat="35,50000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [423]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 7）^00ff00",
        desc        = "        归云贡献度达到6000万领取炙鹰令\r        河阳 陆昭云处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={35,60000000,},
--            descFormat="35,60000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [424]=
    {
        name        = "^00ff00Giảm thiên tội trúc（Cấp 8）^00ff00",
        desc        = "        归云贡献度达到7000万领取炙鹰令\r        河阳 陆昭云处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={35,70000000,},
--            descFormat="35,70000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [425]=
    {
        name        = "^00ff00Trầm thiên khấp nịnh（Cấp 9）^00ff00",
        desc        = "        归云贡献度达到8000万领取炙鹰令\r        河阳 陆昭云处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={35,80000000,},
--            descFormat="35,80000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [426]=
    {
        name        = "^00ff00Thành thiên chính quả（Cấp 10）^00ff00",
        desc        = "        归云贡献度达到1亿领取炙鹰令\r        河阳 陆昭云处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={35,100000000,},
--            descFormat="35,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [427]=
    {
        name        = "^00ff00Đại đạo vô cực^00ff00",
        desc        = "        Phi thăng nhân vật cấp bậc đạt tới 170 cấp",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 1,
        awardScore  = 200,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1,
              params={1,170,},
--            descFormat="1,170,", 
--            infoFormat = "%s đạt tới cấp độ %d (%d/1)",
            },
        }, 
    },

    [428]=
    {
        name        = "^00ff00无极主宰^00ff00",
        desc        = "        在无极战场中\r        Tiêu diệt隐仙阁 将和逸龙轩 将各99次 ",
        preCondDesc = "Không",
        mainClass   = 2,
        subClass    = 3,
        awardScore  = 20,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1001,
              params={76516,99,},
--            descFormat="76516,99,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
            {
              id=1001,
              params={76509,99,},
--            descFormat="76509,99,", 
--            infoFormat = "Tiêu diệt %s (%d/%d)次",
            },
        }, 
    },

    [429]=
    {
        name        = "^00ff00画影族泰斗^00ff00",
        desc        = "        画影贡献度达到2亿",
        preCondDesc = "Không",
        mainClass   = 1,
        subClass    = 4,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={37,200000000,},
--            descFormat="37,200000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [430]=
    {
        name        = "^00ff00Huyền thiên ngọc bạc（Cấp 1）^00ff00",
        desc        = "        画影贡献度达到500万领取炙鹰令\r        河阳 苏画盈处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={37,5000000,},
--            descFormat="37,5000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [431]=
    {
        name        = "^00ff00Trung thiên đăng nhị（Cấp 2）^00ff00",
        desc        = "        画影贡献度达到1000万领取炙鹰令\r        河阳 苏画盈处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={37,10000000,},
--            descFormat="37,10000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [432]=
    {
        name        = "^00ff00Tiện thiên bảo chúc（Cấp 3）^00ff00",
        desc        = "        画影贡献度达到2000万领取炙鹰令\r        河阳 苏画盈处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={37,20000000,},
--            descFormat="37,20000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [433]=
    {
        name        = "^00ff00Tòng thiên toản lục（Cấp 4）^00ff00",
        desc        = "        画影贡献度达到3000万领取炙鹰令\r        河阳 苏画盈处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={37,30000000,},
--            descFormat="37,30000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [434]=
    {
        name        = "^00ff00Canh thiên kim bát（Cấp 5）^00ff00",
        desc        = "        画影贡献度达到4000万领取炙鹰令\r        河阳 苏画盈处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={37,40000000,},
--            descFormat="37,40000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [435]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 6）^00ff00",
        desc        = "        画影贡献度达到5000万领取炙鹰令\r        河阳 苏画盈处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={37,50000000,},
--            descFormat="37,50000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [436]=
    {
        name        = "^00ff00Thúy thiên thiện quả（Cấp 7）^00ff00",
        desc        = "        画影贡献度达到6000万领取炙鹰令\r        河阳 苏画盈处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={37,60000000,},
--            descFormat="37,60000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [437]=
    {
        name        = "^00ff00Giảm thiên tội trúc（Cấp 8）^00ff00",
        desc        = "        画影贡献度达到7000万领取炙鹰令\r        河阳 苏画盈处  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={37,70000000,},
--            descFormat="37,70000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [438]=
    {
        name        = "^00ff00Trầm thiên khấp nịnh [ cấp 9 ]^00ff00",
        desc        = "        Họa ảnh cống hiến độ đạt tới 8000 vạn lĩnh chích ưng làm \r Hà Dương tô họa doanh chỗ  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={37,80000000,},
--            descFormat="37,80000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [439]=
    {
        name        = "^00ff00Thành thiên chính quả [ cấp 10 ]^00ff00",
        desc        = "        Họa ảnh cống hiến độ đạt tới 1 triệu lĩnh chích ưng làm \r Hà Dương tô họa doanh chỗ  ",
        preCondDesc = "Không",
        mainClass   = 3,
        subClass    = 4,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=3,
              params={37,100000000,},
--            descFormat="37,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [440]=
    {
        name        = "^00ff00Nghênh hộ khải toàn^00ff00",
        desc        = "        Hoàn thành tâm để đích mộng chung hội lâm hiện giá thế giới nhiệm vụ  ",
        preCondDesc = "Không",
        mainClass   = 6,
        subClass    = 1,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=6,
              params={39206,},
--            descFormat="12193,99,", 
--            infoFormat = "完成 %s (%d/%d)次",
            },
        }, 
    },
	
    [441]=
    {
        name        = "^00ff00Ma ảnh sơ hiện^00ff00",
        desc        = "        Hoàn thành một bên mạo hiểm, một bên tìm kiếm nhiệm vụ  ",
        preCondDesc = "Không",
        mainClass   = 6,
        subClass    = 1,
        awardScore  = 5,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=6,
              params={39219,},
--            descFormat="37,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },

    [442]=
    {
        name        = "^00ff00Huyễn mộng trọng phùng^00ff00",
        desc        = "        Hoàn thành chỉ cần của ngươi hoa hải nhiệm vụ  ",
        preCondDesc = "Không",
        mainClass   = 6,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=6,
              params={39220,},
--            descFormat="37,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },
	
    [443]=
    {
        name        = "^00ff00Đào li ma quật^00ff00",
        desc        = "        Hoàn thành kết cục nhiệm vụ  ",
        preCondDesc = "Không",
        mainClass   = 6,
        subClass    = 1,
        awardScore  = 20,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=6,
              params={39225,},
--            descFormat="37,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },
	
    [444]=
    {
        name        = "^00ff00Tứ hiệp thảo chi linh^00ff00",
        desc        = "        Hoàn thành phá tan thứ nguyên hoạt động hằng ngày nhiệm vụ 10 thứ\r        （Ý giai đoạn  hằng ngày nhiệm vụ đều có thể）  ",
        preCondDesc = "Không",
        mainClass   = 6,
        subClass    = 1,
        awardScore  = 10,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1007,
              params={10,},
--            descFormat="37,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },
		
    [445]=
    {
        name        = "^00ff00Tứ hiệp thảo chi tiên^00ff00",
        desc        = "        Hoàn thành phá tan thứ nguyên hoạt động hằng ngày nhiệm vụ 50 thứ\r        （Ý giai đoạn  hằng ngày nhiệm vụ đều có thể）  ",
        preCondDesc = "Không",
        mainClass   = 6,
        subClass    = 1,
        awardScore  = 30,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1007,
              params={50,},
--            descFormat="37,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },
		
    [446]=
    {
        name        = "^00ff00Tứ hiệp thảo đế quân^00ff00",
        desc        = "        Hoàn thành phá tan thứ nguyên hoạt động hằng ngày nhiệm vụ 99 thứ\r        （Ý giai đoạn  hằng ngày nhiệm vụ đều có thể）  ",
        preCondDesc = "Không",
        mainClass   = 6,
        subClass    = 1,
        awardScore  = 100,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1007,
              params={99,},
--            descFormat="37,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },
		
    [447]=
    {
        name        = "^00ff00Mạo tử hí pháp^00ff00",
        desc        = "        Hoàn thành ba nhiệm vụ hàng ngày trong giai đoạn phiêu lưu trong một ngày\r        （Thanh toán lúc 0h ngày hôm sau）  ",
        preCondDesc = "Không",
        mainClass   = 6,
        subClass    = 1,
        awardScore  = 20,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=6,
              params={39221,},
--            descFormat="37,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
			{
              id=6,
              params={39222,},
--            descFormat="37,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
			{
              id=6,
              params={40010,},
--            descFormat="37,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },
		
    [448]=
    {
        name        = "^00ff00Linh khí hi bạc^00ff00",
        desc        = "        Hoàn thành nhiệm vụ được đánh dấu với bạn 50 lần  ",
        preCondDesc = "Không",
        mainClass   = 6,
        subClass    = 1,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1000,
              params={39221,50,},
--            descFormat="37,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },
		
    [449]=
    {
        name        = "^00ff00Tọa liên luận đạo^00ff00",
        desc        = "        Hoàn thành thủ hộ mỗi cá vi tiếu nhâm vụ 50 lần  ",
        preCondDesc = "Không",
        mainClass   = 6,
        subClass    = 1,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1000,
              params={39222,50,},
--            descFormat="37,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },
		
    [450]=
    {
        name        = "^00ff00Tiên tháp hộ pháp^00ff00",
        desc        = "        Hoàn thành hoa phá vô biên hắc ám nhâm vụ 50 lần  ",
        preCondDesc = "Không",
        mainClass   = 6,
        subClass    = 1,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1000,
              params={40010,50,},
--            descFormat="37,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },
			
    [451]=
    {
        name        = "^00ff00Tề đầu tịnh tiến^00ff00",
        desc        = "        Hoàn thành ba nhiệm vụ hàng ngày trong giai đoạn phiêu lưu, mỗi nhiệm vụ 10 lần  ",
        preCondDesc = "Không",
        mainClass   = 6,
        subClass    = 1,
        awardScore  = 50,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1000,
              params={39221,10,},
--            descFormat="38221,15,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
			{
              id=1000,
              params={39222,10,},
--            descFormat="37,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
			{
              id=1000,
              params={40010,10,},
--            descFormat="37,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },
			
    [452]=
    {
        name        = "^00ff00Lao khổ công cao^00ff00",
        desc        = "        Hoàn thành ba nhiệm vụ hàng ngày trong giai đoạn phiêu lưu, mỗi nhiệm vụ 80 lần  ",
        preCondDesc = "Không",
        mainClass   = 6,
        subClass    = 1,
        awardScore  = 150,
        awardItem   = 0,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=1000,
              params={39221,80,},
--            descFormat="38221,15,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
			{
              id=1000,
              params={39222,80,},
--            descFormat="37,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
			{
              id=1000,
              params={40010,80,},
--            descFormat="37,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },
			
    [453]=
    {
        name        = "^00ff00Gột rửa yêu khí^00ff00",
        desc        = "        Hoàn thành phá tan thứ nguyên hoạt động trung  chỉ định thành tựu  ",
        preCondDesc = "Không",
        mainClass   = 6,
        subClass    = 1,
        awardScore  = 200,
        awardItem   = 83046,
        awardMoney  = 0,
		sinaLink	= "",
		WechatLink	= "",
        msg = "^ffff00Chúc mừng ^ff0000%s^ffff00 đạt thành tựu^00ff00 %c<6><%s><>",
        conds=
        {
            {
              id=12,
              params={443,},
--            descFormat="37,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
			{
              id=12,
              params={445,},
--            descFormat="37,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
			{
              id=12,
              params={447,},
--            descFormat="37,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
			{
              id=12,
              params={451,},
--            descFormat="37,100000000,", 
--            infoFormat = "声望 %s 达到 %d (%d/1)",
            },
        }, 
    },
	
}
