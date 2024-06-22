--local GameAI 		= GameAI
local STRING_EMPTY  = "desc empty"

InstancingBattleDesc = 
{
	[113] =  
	{
		desc = "洞中日月真，趋步黯龙纹，\r空灵悟大道，寂灭结武魂，\r三界泯然去，五狱嗤魔神，\r封剑叹真武，当有后来人。\r\r真武大帝体认自然而悟大道，非仙非佛，非神非魔，自成一脉而纵横三界。后真武大帝封建归隐，飘然而去。如烨空流行般璀璨闪耀的真武大帝被三界传颂赞叹，而封剑之处后来人崇拜的圣地“真武剑阁”。真武大帝藏剑的宫殿，相传遗留下诸多的真武心解，其中的武魂和剑灵可大幅提升修真者的修为，更有诸多上古神兵遗留于此，是三界修士历练寻珍的不二宝地。唯恐凡间获得过于强大的神法而天下大乱，天界已遣上仙守护真武剑阁，有集合诸多魔怪仙灵考验闯宫之人。究竟谁有幸得到真武大帝的垂青，谁才是真命所归的后来人，每个修真者都应当去直面宿命的考验。\r进入等级限制：飞升前75-119级\r推荐进入级别：级别大于105级\r人数限制：6人",
		[1] = "探索秘道，消灭所有敌人",
		[2] = "帮助仙鹤脱离险境，白鹤将指引你通往下一关的方法",
		[3] = "摧毁所有镇源塔（小心地面上的陷阱）", 
		[4] = "通过六大门派长老的考验（将长老血量降低至50%以下即可）", 
		[5] = "在万剑一的护送下闯过无双剑阵", 
		[6] = "真武剑魂已经沉睡万年了，只有万剑一留下的镇灵符引可以唤醒真武剑魂。\r众多石剑之中，究竟哪一把才是真武剑魂长眠之所呢？\r找到真正的真武剑魂并击败真武剑魂。", 
		[7] = "同时击败武圣·齐狩和武圣·童圭（间隔时间不能超过60秒）", 
		[8] = "同时击败广玄子夫妇（间隔时间不能超过60秒）", 
	},

	[126] =  
	{
		desc = "夕阳晕染了血色的草庙，\r几声犬吠夹杂婉转鸟鸣，\r稚子的嬉闹打破了宁静，\r宿命倦怠的迤俪而行，\r无声的脚步阵阵轰鸣。\r\r宁静的草庙村风云诡谲，所有的传说都将从这里开始，天下也将因此而不同。这前世的劫难非人力所能扭转，但你盘桓的心结或许能在此化解。你回到梦开始的地方，重拾曾经的感动，一场惊天的浩劫，一段凄苦的秘辛，一番疯狂的执念，一个永远的传说，一切一切终须在此开始，也终须在此了结。\r宿命无声的脚步，近了……\r进入级别限制：30-89级\r推荐级别：大于60级\r人数限制：5-6人",
		[1] = "草庙村今年田鼠为患，老栓正为此发愁呢，去看看有没有什么可以帮到他的。\r杀死鼠王后，将鼠尾交给老栓。",
		[2] = "狼王·青山霸占了山里的积水潭，去猎户长庚那看看有没有什么可以帮到他的。\r杀死狼王后，将狼头交给长庚。",
		[3] = "你们对草庙村做的贡献让村长十分感激，带着猎户的的谢礼去找村长，然后去破庙看看吧。", 
		[4] = "天色已晚，回村里吃个晚饭。", 
		[5] = "小羽提议去河边玩，但是最近村里老有小孩失踪，村长委托你们照看好小凡和小羽。",
		[6] = "小羽被神秘人劫走了，快跟着小凡去看看到底发生了什么。", 
		[7] = "赶走了神秘人，普智亦身受重伤，弥留之际服下了三日必死丸，决定收小凡收徒将一身佛法真言尽数传授。", 
		[8] = "重伤后的普智佛法所剩无几，无法抑制嗜血珠长久以来带来的魔戾之气，竟然生怕青云门不收小凡，做出了一个可怕的决定。\r赶快回村，保护村民，阻止普智的疯狂行为（将普智血量降至50%即可）\r注意：每一个村民的死亡都会导致魔化普智防御提升",
	},
	
	[154] =  
	{
		desc = "死亡沼泽，素有各种毒虫猛兽栖居其中，沼毒瘴疠处处弥漫，乃是九死一生之地，世人闻之莫不色变。而在近日，死泽之内泽屡屡腾起巨大金色光柱，直冲云霄，映耀半面天空，白日亦耀灼眼目。伴随金光而来，总有巨大啸吼之声，不知是何等异兽。种种征兆，莫不昭示秘宝将现于世间。一时之下，天下修真之士纷纷齐聚死泽，探寻宝物。\r    终于，深居内泽的天帝宝库，渐渐映入世人的眼帘。\r    天帝宝库，传为天帝修真之所，藏有太初神物，有神鬼不测之威，历来为修真之士苦心寻觅，非但如此，便是洪荒巨兽，也多起贪婪之心，蠢蠢而动。只是宝库凌然居于亿年神木之上，浮悬于九霄之外，其间禁制重重，更有九天神鸟守护，稍有不慎便万劫难复。烟云过眼，时过千年，如今又到了神物出世时节，谁人能够获得太初神宝，谁又是宝库的应缘之人，世人莫不翘首以待。\r进入级别限制：飞升120-飞升160级\r推荐级别：大于飞升120级\r人数限制：5-6人",
		[1] = "初入天帝宝库，一探究竟",
		[2] = "几经迂回，豁然开朗，前方怪石林立，又是一番新的考验。\r消灭洞中怪物，但是多加小心，不可一味蛮干",
		[3] = "前方依稀听到一些奇怪的声音，看来有什么生物也进入了宝库，快去一探究竟", 
		[4] = "消灭了几个奇怪的鱼人，前方就是树洞的中心，你突然发现，事情并没有想象中的简单。\r提示：消灭这些入侵者，当然，也可以选择不惊动他们", 
		[5] = "巫毒的使者奉命守护，通过试炼才能继续前进",
		[6] = "隐约传出一声怒吼，看来前方还是险阻重重啊", 
		[7] = "雷公和电母已经在前面等着了，离无尽的财宝只差一步了!", 
		[8] = "历经考验，沿着前方蜿蜒曲折的小道，隐约你感到前方就是尽头了，不要松懈，天帝宝库将化身为人形给你最后的一道考验",
		[9] = "鱼人一哄而散，黄鸟和玄蛇居然出现在了宝库中央，看样子黄鸟有些气力不支，支援与否全看个人之力了",
	},
	
	[348] =  
	{
		desc = "幻月洞府，正道魁首青云门禁地，青云门名垂天下二千余年，底蕴深厚，门中法宝灵兽不计其数，然而世人皆知青云门镇派之宝乃是当年青叶祖师留下的诛仙剑，但却少有人知晓诛仙剑保存于幻月洞府之中，洞内设有幻月结界，可真实再现闯入者生平，迷人心智，心智不坚者有去无回。\r兽神率领绝域六十三异族出世，与正道诸派大战于青云山，道玄真人虽用诛仙剑重创兽神，但自己也身受重伤，从此青云门中无人能够运使诛仙剑，为重振青云门声威，门中最出色的弟子陆雪琪决定勇闯幻月洞府，然而幻月洞中幻影重重，她已被困于其中，谁能帮助她闯过幻月洞，重现青云辉煌？\r进入级别限制：20-150级以上各家族成员\r飞升20-飞升160级以上各家族成员\r推荐级别：大于60级家族成员\r人数限制：5-15人",
    [1] = "幻月无双！协助陆雪琪，守卫幻月洞府，抵御数以万计的妖兽的猛烈进攻！",
	},
	
	

}

function InstancingBattleDesc:GetSelf()
    return self;
end

function InstancingBattleDesc:GetBattleDesc( map_id )
    if (InstancingBattleDesc[map_id] == nil) then
        return STRING_EMPTY;
    end
    return InstancingBattleDesc[map_id].desc;
end
   
function InstancingBattleDesc:GetBattleLevelDesc(map_id, level)
    if(InstancingBattleDesc[map_id] == nil) then
        return STRING_EMPTY;
	end
	
    if(InstancingBattleDesc[map_id][level] == nil) then
    	return STRING_EMPTY;        
	end
	
	return InstancingBattleDesc[map_id][level]
end 
