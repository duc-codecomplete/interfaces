Lottery_Desc = {};

	
function Lottery_Desc:GetLotteryDesc(id, dicedata)
----------------------------------------------------------------------------------------------------
-- 模式一
-- 一等奖：AAA
-- 二等奖：BBB/CCC/DDD/AA*/A*A/*AA
-- 三等奖：A**/*A*/**A
-- 四等奖：Other
----------------------------------------------------------------------------------------------------
	if id == 6576 then	--神木宝盒
		if ZLottery_FindSameNum(dicedata,4)==3 then
			return "一等奖"
		elseif ZLottery_FindSameNum(dicedata,4)==2 or ZLottery_FindSameNum(dicedata,3)==3
			or ZLottery_FindSameNum(dicedata,2)==3 or ZLottery_FindSameNum(dicedata,1)==3 then
			return "二等奖"		
		elseif ZLottery_FindSameNum(dicedata,4)==1 then
			return "三等奖"
		else	
			return "四等奖"	
		end		
----------------------------------------------------------------------------------------------------
-- 模式二
-- 一等奖：AAA
-- 二等奖：BBB
-- 三等奖：CCC/ABC/ACB/BAC/BCA/CAB/CBA
-- 四等奖：Other
----------------------------------------------------------------------------------------------------
	elseif id == 7916 then	--玄龟金鼎
		if ZLottery_FindSameNum(dicedata,1)==3 then
			return "一等奖"
		elseif ZLottery_FindSameNum(dicedata,2)==3 then
			return "二等奖"		
		elseif ZLottery_FindSameNum(dicedata,3)==3 or 
		(ZLottery_FindSameNum(dicedata,1)==1 and ZLottery_FindSameNum(dicedata,2)==1 and ZLottery_FindSameNum(dicedata,3)==1) then  
			return "三等奖"
		else	
			return "四等奖"	
		end	
----------------------------------------------------------------------------------------------------
-- 模式三
-- 一等奖：ABC/ACB/BAC/BCA/CAB/CBA
-- 二等奖：AB*/BA*/A*B/B*A/*AB/*BA
-- 三等奖：A**/*A*/**A
-- 四等奖：Other
----------------------------------------------------------------------------------------------------
	elseif id == 10722 --灵狐元丹
			or id == 11537 --玄蛇之心
			or id == 12006 --龙驹宝鉴
			or id == 13319 --乾坤遁宝
			then
		if ZLottery_FindSameNum(dicedata,1)==1 and ZLottery_FindSameNum(dicedata,2)==1 and ZLottery_FindSameNum(dicedata,3)==1 then
			return "一等奖"
		elseif ZLottery_FindSameNum(dicedata,1)>=1 and ZLottery_FindSameNum(dicedata,2)>=1 and ZLottery_FindSameNum(dicedata,3)==0 then
			return "二等奖"		
		elseif ZLottery_FindSameNum(dicedata,1)>=1 and ZLottery_FindSameNum(dicedata,2)==0 then  
			return "三等奖"
		else	
			return "四等奖"	
		end		
----------------------------------------------------------------------------------------------------
-- 模式四
-- 一等奖：ABC/ACB/BAC/BCA/CAB/CBA
-- 二等奖：AB*/BA*/A*B/B*A/*AB/*BA
-- 三等奖：A**/*A*/**A
-- 四等奖：DDD
-- 五等奖：Other
----------------------------------------------------------------------------------------------------
	elseif id == 13318 --绽魂仙羽 
			or id == 13377 --虚拟币出产箱子的绽魂仙羽
			then
	  if ZLottery_FindSameNum(dicedata,1)==1 and ZLottery_FindSameNum(dicedata,2)==1 and ZLottery_FindSameNum(dicedata,3)==1 then
			return "一等奖"
		elseif ZLottery_FindSameNum(dicedata,1)>=1 and ZLottery_FindSameNum(dicedata,2)>=1 and ZLottery_FindSameNum(dicedata,3)==0 then
			return "二等奖"		
		elseif ZLottery_FindSameNum(dicedata,1)>=1 and ZLottery_FindSameNum(dicedata,2)==0 then  
			return "四等奖"
		elseif ZLottery_FindSameNum(dicedata,4)==3 then  
			return "三等奖"		
		else	
			return "五等奖"	
		end		
----------------------------------------------------------------------------------------------------
-- 模式五
-- 一等奖：AAA
-- 二等奖：BBB
-- 三等奖：AA*/*AA/A*A/BB*/*BB/B*B/NoA+NoB
-- 四等奖：Other
----------------------------------------------------------------------------------------------------
	elseif id == 13593 --月光宝盒
			or id == 15677 --狮王之心
			or id == 18799 --昆仑天晶
			or id == 18890 --行天圣宝
			or id == 19125 --神龙秘笈
			or id == 19297 --云光天鉴
			or id == 19434 --龙宫锦图
			or id == 19558 --如意金鼓
			or id == 19713 --妖马炎蹄/龙魂炎晶
			or id == 20097 --08国庆虚拟币彩票
			or id == 20109 --鸣珏瑰玉
			or id == 20284 --苍穹光印
			or id == 20480 --孔雀令
			or id == 21194 --兽骨玉匣
			or id == 21752 --天眷神篇
			or id == 22126 --云雪绘卷
			or id == 22127 --炎光匣龙
			or id == 23295 --宠物彩票：鸿蒙秘宝
			or id == 24344 --09两周年虚拟币彩票
			or id == 24993 --万兽金尊777
			then
	  if ZLottery_FindSameNum(dicedata,1)==3 then
			return "一等奖"
		elseif ZLottery_FindSameNum(dicedata,2)==3 then
			return "二等奖"		
		elseif ZLottery_FindSameNum(dicedata,1)==0 and ZLottery_FindSameNum(dicedata,2)==0 then  
			return "三等奖"
		elseif ZLottery_FindSameNum(dicedata,1)==2 or ZLottery_FindSameNum(dicedata,2)==2 then  
			return "三等奖"
		else	
			return "四等奖"	
		end		
----------------------------------------------------------------------------------------------------
-- 模式六
-- 一等奖：AAA
-- 二等奖：BBB
-- 三等奖：AA*/*AA/A*A/BB*/*BB/B*B
-- 四等奖：Other
----------------------------------------------------------------------------------------------------
	elseif id == 13905 --狼图腾
			or id == 18283 --麒麟金尊
			or id == 20482 --龙皇古卷
			or id == 21697 --极东绽石
			or id == 23018 --青铜宝箱
			or id == 23423 --凌霄秘宝
			or id == 33988 --2010春节红包
			then
	  if ZLottery_FindSameNum(dicedata,1)==3 then
			return "一等奖"
		elseif ZLottery_FindSameNum(dicedata,2)==3 then
			return "二等奖"		
		elseif ZLottery_FindSameNum(dicedata,1)==2 or ZLottery_FindSameNum(dicedata,2)==2 then  
			return "三等奖"
		else	
			return "四等奖"	
		end	
----------------------------------------------------------------------------------------------------
-- 模式七
-- 一等奖：AAA
-- 二等奖：BBB
-- 三等奖：NoA+NoB/ABC/ACB/BCA/BAC/CAB/CBA
-- 四等奖：Other
----------------------------------------------------------------------------------------------------
	elseif id == 15866 --雷光墨玉
			or id == 16550 --逐鹿御令
			or id == 24998 --玄天宝录777
			then
	  if ZLottery_FindSameNum(dicedata,1)==3 then
			return "一等奖"
		elseif ZLottery_FindSameNum(dicedata,2)==3 then
			return "二等奖"		
		elseif ZLottery_FindSameNum(dicedata,1)==0 and ZLottery_FindSameNum(dicedata,2)==0 then  
			return "三等奖"
		elseif ZLottery_FindSameNum(dicedata,1)==1 and ZLottery_FindSameNum(dicedata,2)==1 and ZLottery_FindSameNum(dicedata,3)==1 then  
			return "三等奖"
		else	
			return "四等奖"	
		end
----------------------------------------------------------------------------------------------------
-- 其他模式
----------------------------------------------------------------------------------------------------
	elseif id == 10484 then	--仙工宝箱
		if ZLottery_FindSameNum(dicedata,1)==3 then
			return "一等奖"
		elseif ZLottery_FindSameNum(dicedata,1)==2 then
			return "二等奖"		
		elseif ZLottery_FindSameNum(dicedata,1)==1 then  
			return "三等奖"
		else	
			return "四等奖"	
		end		
		
	elseif id == 11742 --山河扇大礼包
			or id == 11743 --万毒鼎大礼包
			or (id>=13320 and id<=13339) --护符材料
			or (id>=18752 and id<=18756) --护符材料
			or (id>=31493 and id<=31502) --九黎、烈山护符材料
			or (id>=40357 and id<=40366) --怀光、天华护符材料
			or (id>=50610 and id<=50619) --太昊、焚香护符材料
			or (id==19079 or id==19081 or id==19082 or id==19087) --金币宝箱
			or (id==19112 or id==19113 or id==19114) --金币宝箱
			or (id>=19425 and id<=19433)      										--金币宝箱
			or id == 33055 -- 2009圣诞袜子
			then
		return "一等奖"		

	elseif id==19115 --金币宝箱
			then
	  if ZLottery_FindSameNum(dicedata,4)==3 then
			return "一等奖"
		elseif ZLottery_FindSameNum(dicedata,3)==3 then
			return "二等奖"		
		elseif ZLottery_FindSameNum(dicedata,4)==0 and ZLottery_FindSameNum(dicedata,3)==0 then  
			return "三等奖"
		elseif ZLottery_FindSameNum(dicedata,4)==1 and ZLottery_FindSameNum(dicedata,3)==1 and ZLottery_FindSameNum(dicedata,2)==1 then  
			return "三等奖"
		else	
			return "四等奖"	
		end
----------------------------------------------------------------------------------------------------
-- 轮盘模式
----------------------------------------------------------------------------------------------------
	elseif id == 20460	--命运的罗盘
			or id == 23144	--神章云锦
			then
		if dicedata[2]==1 and dicedata[1]==1 then
			return "一等奖"
		elseif dicedata[2]==1 then
			return "二等奖"
		elseif dicedata[2]==3 then
			return "三等奖"
		else	
			return "四等奖"	
		end
	elseif id == 23162	-- 天骥金鉴
			or id == 24343  -- 天衮靛石 
			then
		if dicedata[1]==1 then
			return "一等奖"
		elseif dicedata[1]==3 
				or dicedata[1]==5 
				or dicedata[1]==7 
				or dicedata[1]==9 
				or dicedata[1]==11 
				or dicedata[1]==13 
				or dicedata[1]==15 
				then
			return "二等奖"
		elseif dicedata[1]==4 or dicedata[1]==6 or dicedata[1]==12 or dicedata[1]==14 then
			return "三等奖"
		else
			return "四等奖"	
		end
	elseif id == 23212		-- 圣龙玉髓
			or id == 23422		-- 玄文虎石
			or id == 24999		-- 万兽金尊轮盘
			or id == 25000		-- 玄天宝录轮盘
			or id == 25305		-- 天竺牙雕
			or id == 25418		-- 大漠金沙
			or id == 25749		-- 太苍空岩
			or id == 32605		-- 狮蛮宝录
			or id == 34296		-- 天宫神石
			or id == 35165		-- 寻梦玉蝶
			or id == 35361		-- 五光锦匣
			or id == 35362		-- 天工开物
			or id == 35363		-- 聚灵神龛
			or id == 40345		-- 天关幻罡
			or id == 40346		-- 伏灵神引
			or id == 40529    -- 暗月真解
			then
		if dicedata[1]==1 then
			return "一等奖"
		elseif dicedata[1]==5 or dicedata[1]==9	or dicedata[1]==13 then
			return "二等奖"
		elseif dicedata[1]==3 or dicedata[1]==7 or dicedata[1]==11 or dicedata[1]==15 then
			return "三等奖"
		else
			return "四等奖"	
		end
	elseif id == 23336		-- 凤栖金枝
			or id == 23363		-- 天韵神篇
			or id == 25417		-- 血月镇木
			or id == 28703		-- 龙皇魂骨
			or id == 32692		-- 多罗慧叶
			or id == 33122		-- 圣诞兔子
			or id == 33530		-- 玄金虎玉
			or id == 34124		-- 金宇帝书
			or id == 34125		-- 御贡锦匣
			or id == 34295		-- 锦绣绘卷
			or id == 34937		-- 火焰纹章
			or id == 35360		-- 天池灵泉
			then
		if dicedata[1]==1 or dicedata[1]==9	then
			return "一等奖"
		elseif dicedata[1]==5 or dicedata[1]==13 then
			return "二等奖"
		elseif dicedata[1]==3 or dicedata[1]==7 or dicedata[1]==11 or dicedata[1]==15 then
			return "三等奖"
		else
			return "四等奖"	
		end

	elseif id == 28573		-- 混沌秘宝
			then
		if dicedata[1]==1 or dicedata[1]==5 or dicedata[1]==9 or dicedata[1]==13 then
			return "一等奖"
		elseif dicedata[1]==3 or dicedata[1]==7 or dicedata[1]==11 or dicedata[1]==14 or dicedata[1]==15 then
			return "二等奖"
		elseif dicedata[1]==4 or dicedata[1]==6 or dicedata[1]==12 then
			return "三等奖"
		else
			return "四等奖"	
		end

	elseif id == 25750		-- 九叶仙芝
			then
		if dicedata[1]==1 or dicedata[1]==9	or dicedata[1]==13	then
			return "一等奖"
		elseif dicedata[1]==3 or dicedata[1]==5 or dicedata[1]==7 or dicedata[1]==11 or dicedata[1]==15 then
			return "二等奖"
		elseif dicedata[1]==4 or dicedata[1]==6 or dicedata[1]==12 or dicedata[1]==14 then
			return "三等奖"
		else
			return "四等奖"	
		end
		
	elseif id == 42665		--吉祥如意（赠品）
			or id == 42784		--混元秘藏（赠品）
			then
		if dicedata[1]==1 or dicedata[1]==5 or dicedata[1]==7	or dicedata[1]==11 or dicedata[1]==13	then
			return "一等奖"
		elseif dicedata[1]==3  or dicedata[1]==9 or dicedata[1]==15 then
			return "二等奖"
		elseif dicedata[1]==4 or dicedata[1]==6 or dicedata[1]==12 or dicedata[1]==14 then
			return "三等奖"
		else
			return "四等奖"	
		end
		
	elseif id == 33822		--贺岁桃符（赠品）
			or id == 33823 		--迎新春联（赠品）
			or id == 40344 		--十全界书
			or id == 40670    --八极穹炉（赠品）
			or id == 40928    --龙蛇演义（赠品）
			or id == 41080    --洛华天羽（赠品） 
			or id == 41307    --千桦锦萃（赠品）
			or id == 41391    --啸天金哨（赠品）
			or id == 42338    --扶桑巨木（赠品）
			or id == 42353		--琅嬛琼琚（赠品）
			or id == 42659		--测试可堆叠（赠品）
			or id == 42664		--测试可堆叠1（赠品）
			or id == 42868    --金玉良橼（赠品）
			or id == 43403    --兔子彩票（赠品）
			or id == 44403    --天心雪华（赠品）
			or id == 44638    --金龙宝匣（赠品）
			or id == 44766    --惊鸿玉砚（赠品）
			then
		if dicedata[1]==1 or dicedata[1]==5 or dicedata[1]==9	or dicedata[1]==13	then
			return "一等奖"
		elseif dicedata[1]==3  or dicedata[1]==7 or dicedata[1]==11 or dicedata[1]==15 then
			return "二等奖"
		elseif dicedata[1]==4 or dicedata[1]==6 or dicedata[1]==12 or dicedata[1]==14 then
			return "三等奖"
		else
			return "四等奖"	
		end
		
	elseif id == 44764		--幻缘仙尊（赠品）
			then
		if dicedata[1]==1 or dicedata[1]==5 or dicedata[1]==13	then
			return "一等奖"
		elseif dicedata[1]==3  or dicedata[1]==7 or dicedata[1]==9 or dicedata[1]==11 or dicedata[1]==15 then
			return "二等奖"
		elseif dicedata[1]==4 or dicedata[1]==6 or dicedata[1]==12 or dicedata[1]==14 then
			return "三等奖"
		else
			return "四等奖"	
		end		

----------------------------------------------------------------------------------------------------
-- 结束
----------------------------------------------------------------------------------------------------
	end		
	return ""
end


function ZLottery_FindSameNum(s1,a) --寻找某个数的个数
	local i,j
	j=0
	for i=1,table.getn(s1) do
		if s1[i]==a then 
		j=j+1
		end 
	end 
	return j	
end 
