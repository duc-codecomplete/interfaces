----description:This script file is to supply ui help.
----author: wangdongliang


Question= {}

Question[1] = { 
  verson = 2,
  feisheng = 0,
  lowlimtlevel = 90,
  name = "我问你答",
  starttime = "2017:07:04:10:00:00",
  endtime   = "2017:07:17:00:00:00",  
  questionInfo = {
                 	{
				id = 1 ,--题目序号 依次累加就可以
				title="希望以后更新出哪些内容？（单选）", --题目标题
				questiontype = 0 ,--题目类型 0单选 1多选
				answer = {--四个选项
					"【A】新外观、新时装",
					"【B】新副本、新地图",
					"【C】装备、新细节",
					"【D】新任务、新活动"
					}

			},
                	
                 	{
				id = 2 ,
				title="您是诛仙多久的玩家？（单选）", 
				questiontype = 0,
				answer = {
					"【A】1年-2年",
					"【B】3年-5年",
					"【C】6年-9年",
					"【D】10年"
					}
			},
			
			        {
				id = 3 ,
				title="您在本版本中最关注哪方面内容？（单选）", 
				questiontype = 0,
				answer = {
					"【A】新职业",
					"【B】新副本",
					"【C】新功能",
					"【D】奖励内容"
					}
			},
			
			        {
				id = 4 ,
				title="您喜欢用哪种模式玩游戏？（单选）", 
				questiontype = 0,
				answer = {
					"【A】全屏",
					"【B】窗口",
					"【C】多开窗口，平时用全屏"
					}
			},	
		
			        {
				id = 5 ,
				title="您显示器的比例？（单选）", 
				questiontype = 0,
				answer = {
					"【A】4：3",
					"【B】16：9",
					"【C】21：9",
					"【D】其他"
					}
			},

			        {
				id = 6 ,
				title="您在游戏过程中的最大乐趣？（单选）", 
				questiontype = 0,
				answer = {
					"【A】副本、爬塔、做细节",
					"【B】PK、帮战、激情澎湃",
					"【C】挂机、看风景、我是外观党",
					"【D】只要和朋友在一起就很开心"
					}
			},

			        {
				id = 7 ,
				title="您更喜欢哪种形式的PK？（单选）", 
				questiontype = 0,
				answer = {
					"【A】莲台、群雄（突出个人能力）",
					"【B】铁血、帝子（有规则的PK）",
					"【C】社稷战、天帝战（团队策略为主）",
					"【D】野战、抢BOSS、开红"
					}
			},	

			        {
				id = 8 ,
				title="您的等级是？（单选）", 
				questiontype = 0,
				answer = {
					"【A】168及以上",
					"【B】161-167",
					"【C】飞升15-160",
					"【D】未飞升"
					}
			},

			        {
				id = 9 ,
				title="哪些原因有可能造成您不去关注游戏剧情？（单选）", 
				questiontype = 0,
				answer = {
					"【A】字太小、界面不喜欢、看着累",
					"【B】游戏内剧情表现形式跟不上时代",
					"【C】故事没有意思，剧情进展太慢",
					"【D】我玩什么游戏都不看剧情"
					}
			},

			        {
				id = 10 ,
				title="您希望17年签到大奖兑换什么？（单选）", 
				questiontype = 0,
				answer = {
					"【A】12铁",
					"【B】玄烛星辰",
					"【C】赤乌星辰",
					"【D】沐雨令",
					"【E】元婴六定四的机会"
					}
			},	
			

			        {
				id = 11 ,
				title="选择一个职业您优先考虑哪个方面（多选）", 
				questiontype = 1,
				answer = {
					"【A】PK能力",
					"【B】副本能力",
					"【C】挂机能力",
					"【D】形象",
					"【E】是否原著职业"
					}
			},	
			
			
			        {
				id = 12 ,
				title="您对新的幻境河阳有什么看法？（单选）", 
				questiontype = 0,
				answer = {
					"【A】很好，虽然不是完全还原，但也很有感觉",
					"【B】还行，还原再多一些就好了",
					"【C】不好，原封不动的搬回来就好啦",
					"【D】不关注地图的变化"
					}
			},	
			
			
			        {
				id = 13 ,
				title="您对蕴灵方式提高装备有什么看法？（单选）", 
				questiontype = 0,
				answer = {
					"【A】装备不爆，可以稳定提高，很好啊",
					"【B】没有心跳的感觉了，不刺激"
					}
			},	
			
			
			        {
				id = 14 ,
				title="您对神隐武器有什么看法？（单选）", 
				questiontype = 0,
				answer = {
					"【A】先搞一把，看看炼上去的难度有多大",
					"【B】我只想知道不打BOSS怎么得",
					"【C】跟我有什么关系？天罡还没齐！",
					"【D】还没关注过这个"
					}
			},	
			
			
			        {
				id = 15 ,
				title="您对云渺天河·晓副本中增加瞬回药的间隔时间有什么看法？（单选）", 
				questiontype = 0,
				answer = {
					"【A】很好的尝试，战斗的变数更多",
					"【B】没变化，对战斗没有根本的影响",
					"【C】不习惯，还是用瞬回药更过瘾",
					"【D】我还没有体验过这个团队副本"
					}
			},	
			
			
			        {
				id = 16 ,
				title="您对飞行系统的优化有什么看法？（多选）", 
				questiontype = 1,
				answer = {
					"【A】新的飞行加速效果",
					"【B】上下飞剑更加迅速",
					"【C】空中的飞行感觉",
					"【D】没有感受到明显的提升"
					}
			},	
			
			
			        {
				id = 17 ,
				title="您对新的登录界面有什么看法？（单选）", 
				questiontype = 0,
				answer = {
					"【A】非常满意，比老的登录界面更加美观",
					"【B】满意，还有很大的进步空间",
					"【C】不满意，越改越差",
					"【D】我只关心游戏，界面什么的不关心"
					}
			},	
			
			
			        {
				id = 18 ,
				title="当前版本优化了师徒和夫妻功能，您希望看到更多社交功能的优化吗？（单选）", 
				questiontype = 0,
				answer = {
					"【A】希望",
					"【B】不希望"
					}
			},	
			
			
			        {
				id = 19 ,
				title="您关注神秘商店的哪个方面？（多选）", 
				questiontype = 1,
				answer = {
					"【A】能刷出哪些物品",
					"【B】NPC鼠大人刷新的时间",
					"【C】获取某件道具的花费是多少",
					"【D】对这个玩法不感兴趣"
					}
			},	
			
			
			        {
				id = 20 ,
				title="您更关注星宿系统的哪个部分？（多选）", 
				questiontype = 1,
				answer = {
					"【A】高级星辰获取难度",
					"【B】操作复杂程度",
					"【C】属性增益",
					"【D】装备技能星辰后的特效",
					"【E】经验星辰获取难度"
					}
			},	
			
			        {
				id = 21 ,
				title="当前角色的性别是？（单选）", 
				questiontype = 0,
				answer = {
					"【A】男",
					"【B】女"
					}
			},	

			        {
				id = 22 ,
				title="您的角色是否飞升？（单选）", 
				questiontype = 0,
				answer = {
					"【A】是",
					"【B】否"
					}
			},									
		}
}
function Question:GetSelf()
	return self;
end 