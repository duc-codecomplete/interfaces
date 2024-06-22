----description:This script file is to supply ui help.
----author: wangdongliang


RecipeInfo = {}

RecipeInfo[1] = { 
  id = 1,
  name = "高级",  
  subinfo = {
                 {id = 1 ,subname="凌霄城", Recipe = {11,12,13}},
                 {id = 2 ,subname="羲皇城", Recipe = {11,12,13}}, 
			 }
}

RecipeInfo[2] = { 
  id = 2,
  name = "中级", 
  subinfo = {
    		     {id = 3 ,subname="河阳城", Recipe = {11,12} },
    		     {id = 4 ,subname="青云山", Recipe = {11,12} },
    		     {id = 5 ,subname="天音寺", Recipe = {11,12} },
    		     {id = 6 ,subname="小池镇", Recipe = {11,12} },
    		     {id = 7 ,subname="大王村", Recipe = {11,12} },
    		     {id = 8 ,subname="蛮荒神殿", Recipe = {11,12} },
    		     {id = 9 ,subname="山河殿", Recipe = {11,12} },
    		     {id = 10 ,subname="七里峒", Recipe = {11,12} },
    		     {id = 11 ,subname="冷云镇", Recipe = {11,12} },
    		     {id = 12 ,subname="修罗殿", Recipe = {11,12} },
    		     {id = 13 ,subname="神农殿", Recipe = {11,12} },
    		     {id = 14 ,subname="鸿蒙古地", Recipe = {11,12} },
			}
}

RecipeInfo[3] = { 
  id = 3,
  name = "低级", 
  subinfo = {
    		     {id = 15 ,subname="草庙村", Recipe = {11} },
    		     {id = 16 ,subname="隐秀庐", Recipe = {11} },
    		     {id = 17 ,subname="南樵山", Recipe = {11} },
    		     {id = 18 ,subname="幻月洞", Recipe = {11} },
    		     {id = 19 ,subname="大竹峰", Recipe = {11} },
    		     {id = 20 ,subname="小竹峰", Recipe = {11} },
    		     {id = 21 ,subname="无字玉璧", Recipe = {11} },
    		     {id = 22 ,subname="普济洲", Recipe = {11} },
    		     {id = 23 ,subname="千佛塔", Recipe = {11} },
    		     {id = 24 ,subname="满月井", Recipe = {11} },
    		     {id = 25 ,subname="忠烈碑", Recipe = {11} },
    		     {id = 26 ,subname="往复山堂", Recipe = {11}},
    		     {id = 27 ,subname="天帝宝库", Recipe = {11} },
    		     {id = 28 ,subname="毒蚁巢", Recipe = {11} },
    		     {id = 29 ,subname="长生堂", Recipe = {11} },
    		     {id = 30 ,subname="往生殿", Recipe = {11} },
    		     {id = 31 ,subname="碧水寒潭", Recipe = {11} },
    		     {id = 32 ,subname="黑云沙海", Recipe = {11} },
    		     {id = 33 ,subname="玄火坛", Recipe = {11} },
    		     {id = 34 ,subname="鱼人滩", Recipe = {11} },
    		     {id = 35 ,subname="狐狱", Recipe = {11} },
    		     {id = 36 ,subname="万蛇殿", Recipe = {11} },
    		     {id = 37 ,subname="十万大山", Recipe = {11} },
    		     {id = 38 ,subname="天水寨", Recipe = {11}},
    		     {id = 39 ,subname="天池", Recipe = {11} },
    		     {id = 40 ,subname="弱水", Recipe = {11} },
    		     {id = 41 ,subname="朗风山", Recipe = {11} },
    		     {id = 42 ,subname="血池", Recipe = {11} },
    		     {id = 43 ,subname="落樱台", Recipe = {11} },
    		     {id = 44 ,subname="法莲寺", Recipe = {11} },
    		     {id = 45 ,subname="赤城", Recipe = {11} },
    		     {id = 46 ,subname="帝坛", Recipe = {11} },
    		     {id = 47 ,subname="仲夏花海", Recipe = {11} },
    		     {id = 48 ,subname="穹庐", Recipe = {11} },
    		     {id = 49 ,subname="观星洞", Recipe = {11} },
    		     {id = 50 ,subname="登云台", Recipe = {11}},
			}
}

function RecipeInfo:GetSelf()
	return self;
end 