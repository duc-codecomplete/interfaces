--所有与显示相关的字符串都需列至此处
--使用字典序排序，且按照以下分类整理
--字符串的常量必须大写，多个英文单词之间用下划线连接

--界面文本		AUI_* -> Interface String --在界面的某一固定位置显示的文本
--提示框文本	DLG_* -> Dialog String --在弹出提示框中显示的提示文字
--通用文本		GNR_* -> General String
--消息文本		MSG_* -> Message String --用MSG_ERR_*表示返回的错误消息
--界面悬浮说明	TIP_* -> Tip String
--Loading小提示 LDG_TIP	LDG_TITLE
--其他文本		TEXT_*
--临时测试用	TMP_*

--以下字符串归类暂时不放到本文件中
--按钮文本		BTN_* -> Button String --目前存放于界面.xml文件中

--更新内容
TEXT_NEWHELP_CONTENT = "^ff9090-=游戏内容=-^ffffff\r    1. 开放了新的外传战场“蒋干传·吴营盗书”，供48级以上玩家进入。\r    2. 开放了“另投明主”任务，满40级的玩家到长安管辂处可以自由转投城市数少于4个的国家，此任务只在周日开放。\r    3. 增加了结义技能部分相关内容，基础结义技能在达到10级前熟练度获得将更容易。\r    4. 修正了战场“曹操传·王陵鬼影”中某些怪物会陷入地下的问题。\r    5. 降低了战场“荆襄撤退战”中怪物的战斗外生命回复速度。\r    6. 增加了钓鱼活动中高级鱼类的烹饪配方。\r    7. 增加了高级烹饪配方“甘草茶”，使用后可迅速回复生命值。\r    8. 修正了隐伏状态的角色头顶名字有时会显示出来的问题。\r    9. 修正了竞技场双方人数已满后观战方无法加入排队的问题。\r    10. 修正了江南和灵山秘道的部分寻径错误。\r    11. 增加了新的商城道具。"

--Loading小提示 
LDG_TITLE = "^dca004赤壁小提示：^ffffff%s";
LDG_TIP = {
	picnum = 12,
	num = 148,
	"人物达到满级之后仍然可以获得历练值。",
	"历练值除了用于提升等级之外，还有其他多种用途。",
	"尽量不要挑战远超过你级别的怪物，除非你能接受死亡所付出的代价。",
	"男性人物也可以使用舞扇类兵器。",
	"攻击别国玩家不会受到PK惩罚。",
	"不要轻易的把账号密码信息告诉给其他人。",
	"按下 P 键可以开启生产界面。",
	"在目标身上点击鼠标右键会自动向目标发起攻击。",
	"如果你被高于15级的怪物或者NPC杀死，会损失5%的剩余历练值。",
	"Shift+右键点击怪物掉落的宝箱和皮袋，会自动拾取全部战利品。",
	"仓库老板处提供了扩充包裹和个人仓库的功能。",
	"完成低等级的任务只能获得少量的经验值。",
	"人物能力会随着等级和兵种级别而提升。",
	"稀有怪物会掉落品质更好的战利品。",
	"怪物头像边上的星级表示怪物的挑战难度。",
	"等级达到40级后，你可以选择加入魏、蜀、吴中的任一阵营。",
	"完成酒馆任务可以获得购买酒馆商店物品的等价货币。",
	"使用W、S、A、D键移动你的角色。",
	"按下NumLock键会让你的角色自动向前移动。",
	"攻击时请保持你的角色面朝敌人的方向。",
	"1到15级的玩家处于新手保护状态，不会遭到其他玩家的攻击。",
	"按住Ctrl可以强制攻击其他玩家。",
	"攻击本国或者无阵营玩家会增加你的PK值。",
	"驿站传送服务只能把你送到曾经去过的区域。",
	"按下Alt+Z，可以隐藏游戏操作界面。",
	"按下 F9 可以进入照相机模式。",
	"当画面下方的历练槽开始闪烁时，表示你可以立即提升人物等级了。",
	"按下 C 键可以开启人物属性界面。",
	"在人物属性界面，你可以选择提升人物等级或者提升兵种级别。",
	"人物获得称号后，称号的附加属性会立刻生效。",
	"把鼠标移动到目标NPC身上，点击右键即可打开对话框。",
	"按下 J 键可以开启道具商城界面。",
	"按下 B 键可以开启人物包裹和装备界面。",
	"按下 L 键可以开启任务信息界面。",
	"按下 I 键可以开启游戏排行榜。",
	"按下 T 键可以开启组队设置界面。",
	"按下 Y 键可以开启结义设置界面。",
	"按下 G 键可以开启军团设置界面。",
	"提升角色等级和兵种级别都会消耗人物的历练值。",
	"点击鼠标左键不松开并旋转鼠标，玩家就可以看到自己游戏人物的面孔。",
	"人物15级后可以到长安的武师处学习战斗技能。",
	"按住 Z 键同时点击技能图标/按下技能快捷键会对自己施放技能。",
	"药膏类物品除了对自己使用，也可以对其他玩家使用。",
	"选中目标后点击药膏类物品的图标，会对目标玩家使用药膏。",
	"如果您到达10级并完成兵种任务之后，就可以通过消耗历练值来提升自己的兵种等级。",
	"人物达到20级后，可以在西凉马术师处学习骑术。",
	"兵种等级升级到九段后，需要完成对应的兵种任务才能把兵种提升到下一阶段。",
	"主兵种等级每升一级可以获得一点专精点。",
	"打造武器和防具时，放入的材料品质越好，生产出高品质装备的几率越大！",
	"装备分解需要学会生产技能—巧匠，并且只能分解一阶及一阶以上的武器和防具。",
	"装备可以分解成元石，元石是用于制造装备强化材料的必需物品。",
	"生产技能—裁缝可以打造一阶及一阶以上的防具。",
	"生产技能—铁匠可以打造一阶及一阶以上的武器。",
	"生产技能—巧匠用于制造装备的强化材料，合成更高品阶的元石和符玉。",
	"生产技能—工匠用于制造各种宝物和机关器械，升级秘文灵珠。",
	"生产技能—烹饪用于制造各种食物、美酒和茶饮。",
	"生产技能—急救用于制造各种可在战斗中使用的药膏。",
	"生产技能—药师用于制造各种立即回复生命值的药丸。",
	"低阶元石可以通过生产技能—巧匠合成高阶的元石。",
	"进食食物可以在战斗外回复生命，食物进食完之后还能获得生命回复速度提升的效果。",
	"进食美酒可以在战斗外回复体力，美酒进食完之后还能获得杀敌增加斗气的增益效果。",
	"进食茶饮可以在战斗外回复体力，茶饮进食完之后还能获得杀敌增加体力的增益效果。",
	"药膏会让人物持续回复生命值，可以在战斗中使用。",
	"药丸会让人物瞬间回复一定量的生命值，可以在战斗中使用。",
	"将符玉附加于装备之上，装备就会获得符玉的属性。",
	"各地的杂货商提供了附加符玉和清除符玉的服务。",
	"各地的巧匠和饰品商提供了装备强化和装备分解的服务。",
	"生产技能所需的大部分原材料可以到各地的杂货商处购买。",
	"可以附加符玉的装备仅限于头盔、各类服饰和饰品。",
	"符玉附加的属性还可以从装备上清除，之后装备就可以再次附加符玉。",
	"生产技能—巧匠可以把低品级的符玉提纯为更高品级的符玉。",
	"同一类型的宝物同时只能装备一件。",
	"生产技能—巧匠可以把装备分解后获得的元石制造成装备的强化材料。",
	"结义兵法的图标可以拖到快捷栏中使用。",
	"一阶及一阶以上的武器可以送到兵器师处成长，成长后的武器拥有更高的攻击力。",
	"按下 K 键可以开启技能和专精界面。",
	"点击技能界面下方的“专精”按钮，可以切换到专精界面。",
	"专精加点后可以提升战斗技能的使用效果，让你的打怪过程更加轻松！",
	"人物等级达到15级后可以建立结义。",
	"人物等级达到12级后才能加入结义。",
	"建立军团需要人物等级达到25级，只有结义的头领才能创建军团。",
	"生产技能—驯养用于提升你的坐骑移动速度，每种坐骑至少可以升级一次。",
	"同时开启多个赤壁客户端时，将位于后台的游戏最小化可以提高系统的运行效率。",
	"装备强化时，需要放入与装备品级和类型对应的强化材料。",
	"已经强化过的装备如果再次强化，旧有的强化属性会被覆盖。",
	"用遁甲天书洗掉当前主副兵种及专精点数后，原有的主副兵种等级会被保留。",
	"武器成长之后会与人物绑定，绑定后的武器将无法进行交易！",
	"长安城的工匠技能师提供了镶嵌秘文和清除秘文的服务。",
	"如果你获得了一颗秘文灵珠，就可以把它镶嵌到武器和防具上。",
	"利用朱砂笔可以对低级的秘文灵珠进行点化，点化成功后会获得高一级的秘文灵珠。",
	"只有四阶及四阶以上的武器和防具才可以镶嵌秘文。",
	"每件四阶及四阶以上的武器和防具通常都可激活3个秘文孔。",
	"你需要先激活装备上的秘文孔，才可以进行秘文镶嵌。",
	"不同的秘文灵珠可以镶嵌到不同部位的防具或兵器上。",
	"在战场中，使用普通频道喊话只能被己方的玩家看到。",
	"快捷操作的图标可以拖到快捷栏中使用。",
	"按下 N 键开启动作界面，可以编辑游戏的快捷操作。",
	"如果你的主兵种等级低于其他任一兵种，你在升级兵种时将消耗更多的历练值。",
	"战场开启后请在2分钟内进入战场，2分钟后系统会帮你自动取消排队。",
	"使用太一元符可以保证你的秘文灵珠在升级失败后不会碎裂消失。",
	"主兵种等级达到神级或者仙级之后，即可选择一个其它兵器作为副兵种。",
	"如果把天子诏书送给长安城的管辂，可以让你恢复成无阵营的状态。",
	"每激活一个秘文孔需要消耗一个开光石。",
	"用紫金锁锁定的物品无法销毁、交易、邮寄以及出售。",
	"副兵种的专精系统最多可以获得25点的专精点数。",
	"只需要点击屏幕右上角的小地图中可以到达的位置，人物就会自动移动到该位置。",
	"用鼠标左键点击场景内任意可以移动的区域，人物就会自动移动至鼠标点击的地方。",
	"右键点击NPC就可以和NPC进行对话。",
	"服务器内3级及3级以上军团达到20个后，国战将自动开启。",
	"国战开启后的每周日18:00至周一20:00为各个军团长申请驻守本国领土的时间。",
	"军团长可以代表军团申请驻守本国的领土，同时只能申请驻守一块领土。",
	"如果一块地无人申请驻守时，需支付该地的基础统御值才可申请驻守。",
	"被其他军团申请驻守的领土，申请驻守时需支付比对方投标值高至少10%的统御值。",
	"国战结束后，各国领土的驻守军团将被重置；下轮国战开始时需要重新申请驻守。",
	"国战结束后，系统会将各领土驻守统御值的90%返还给驻守军团。",
	"被己方军团申请驻守的领土，军团长可手动增加投标的驻守统御值，每次至少加5%。",
	"国战开启后的每周一21:00至周五20:00为各个驻守军团长宣战报名的时间。",
	"国战宣战报名时，只能对本军团驻守领土的相邻敌国领土发起宣战。",
	"城池驻守统御值排名靠前的宣战军团将优先获得攻城权。",
	"每个城池同时只可能参与一场国战。",
	"取消宣战之后，下次只能对未被宣战过的敌国相邻领土宣战。",
	"周五19:00至20:00，只能对未被宣战过的敌国相邻领土宣战。",
	"国战宣战报名时，宣战及取消宣战都不用消耗军团统御值。",
	"国战开启后，从周一0:00开始，玩家可以前往各国大帐处确认本轮国战效力的阵营。",
	"驻守申请结束后，各国玩家可以对本军团的驻守领土进行领土建设。",
	"建设领土可以改变国战攻守方的实力对比。",
	"国战结束后的周日0:00至24:00，各国玩家可以到本国大帐的粮饷官处领取国战的阵营奖励。",
	"国战攻城于每周六的20:00开始，持续时间为两个小时。",
	"国战攻城时，交战两国未取得攻城/守城权的其他军团玩家也可以加入战斗进行协助。",
	"国战结束后，胜利一方的军团将获得额外的奖励。",
	"国战战场需要达到50级后才可加入。",
	"只有占领了敌国除都城以外的所有城池，你才可对敌国首都发起宣战。",
	"玩家只能加入当前所属国家的国战战场。",
	"每周一的0:00会将各国领土除金钱、人口、军粮以外的其余参数重置为原始值。",
	"领土的税收值越高，国战结束后每个玩家获得的阵营奖励就越多。",
	"各国大帐内的演军官提供了国战相关的服务。",
	"国战宣战报名时，取消宣战的次数达到十次以后将无法再次宣战！",
	"申请驻守时投标的统御值越多，就越容易获得国战攻城权。",
	"申请驻守的领土如果被其他军团竞标成功，之前投标的统御值会立即返还。",
	"每天的19:30会开始舌战群儒比赛，在线的玩家可以通过参赛邀请加入比赛活动。",
	"舌战群儒比赛结束后，进入比赛排行榜的前20位玩家可以通过邮件领取优胜凭证。",
	"杂货商提供的转移属性服务可以把一件装备上的符玉属性移到另一件装备上。",
	"每次成功转移装备上的附加属性都会消耗掉一个嫁衣符。",
	"装备升级服务可用于提升你的装备的品阶，例如把一件五阶武器提升为六阶武器。",
	"装备升级时通常会要求原装备的成长等级达到一定级别，并且需要消耗某些材料。",
	"装备升级之后，将完全继承原装备的激活秘文孔数、已镶嵌秘文以及强化属性。",
	"国战攻城时，如果驻守军团人数已满，军团成员仍旧可以本国援军身份加入国战。",
	"国战攻城时，本国援军必须等战斗正式开始后才能加入战斗。",
	"",
	"",
	"",
	"",
	};

----战场说明文字----
--ID:161
AUI_BATTLEFIELD_INTRODUCTION161 = "类型：对抗，首领击杀\r难度：★★★\r等级：58+\r对阵：黄巾军 VS 东汉军\r人数：黄巾军（12-24），东汉军（12-24）\r黄巾军目标：击败皇甫嵩\r东汉军目标：击败张角\r剧情：\r    时为汉灵帝中平元年（西元一八四年），在太平道教主张角号召下，太平道信徒头戴黄巾，奔走宣告“苍天已死，黄天当立。岁在甲子，天下大吉”，发起席卷全国的大规模叛乱。东汉朝廷大为震恐，任命何进为大将军，调遣北军和各郡国兵马讨伐黄巾。\r    黄巾军的主力，主要集中在冀州、颍川和南阳三地。其中，颍川的黄巾军，对汉朝都城洛阳造成的威胁最大。\r    夏四月，右中郎将朱俊率领部分军队抵达颍川前线，被颍川黄巾波才部击退。左中郎将皇甫嵩的另一支官军见黄巾势大，退往长社据守。颍川黄巾大举直进，实施包围战术，战斗随之进入胶着状态。"
AUI_BATTLEFIELD_ANAME161 = "黄巾军"
AUI_BATTLEFIELD_BNAME161 = "东汉军"
AUI_BATTLEFIELD_AWIN161 = "击败皇甫嵩"
AUI_BATTLEFIELD_BWIN161 = "击败张角"
AUI_BATTLEFIELD_ALOST161 = "张角败退"
AUI_BATTLEFIELD_BLOST161 = "皇甫嵩败退"
--ID:210
AUI_BATTLEFIELD_INTRODUCTION210 = "类型：合作，防御进攻\r难度：★★\r等级：20+\r对阵：东汉军 VS 黄巾军（NPC）\r人数：4-6\r目标：20分钟内保护皇甫嵩不死\r剧情：\r    公元一八四年，黄巾之乱大举爆发。在数十万黄巾军的攻击下，东汉官军节节败退。汝南战场上，左中郎将皇甫嵩决定率军退往长社固守，然而途中却遭遇了黄巾的大举攻击。急需忠义之士前来协助汉军成功撤退。\r    “为了未来的胜利，我必须在这一战中生存下去！”"
AUI_BATTLEFIELD_ANAME210 = "东汉军"
AUI_BATTLEFIELD_BNAME210 = "黄巾军"
AUI_BATTLEFIELD_AWIN210 = "皇甫嵩存活"
AUI_BATTLEFIELD_BWIN210 = "无"
AUI_BATTLEFIELD_ALOST210 = "皇甫嵩死亡"
AUI_BATTLEFIELD_BLOST210 = "无"
--ID:211
AUI_BATTLEFIELD_INTRODUCTION211 = "类型：合作，资源争夺\r难度：★★★\r等级：40+\r对阵：东汉军 VS 黄巾军（NPC）\r人数：9-12\r目标：40分钟内成功收集2000袋粮草\r剧情：\r    公元一八四年，黄巾之乱席卷全国各地。由于全国农业遭到战争的严重破坏，双方都陷入了军粮匮乏的艰苦处境。为了争夺广宗一带囤积的大批军粮，卢植所部官军和黄巾军之间正进行着激烈的争夺。这时候，一支临时组成的义勇兵出现在了广宗战场上。\r    “抢钱、抢粮、抢地盘！”"
AUI_BATTLEFIELD_ANAME211 = "东汉军"
AUI_BATTLEFIELD_BNAME211 = "黄巾军"
AUI_BATTLEFIELD_AWIN211 = ""
AUI_BATTLEFIELD_BWIN211 = ""
AUI_BATTLEFIELD_ALOST211 = ""
AUI_BATTLEFIELD_BLOST211 = ""
--ID:221
AUI_BATTLEFIELD_INTRODUCTION221 = "类型：合作，击杀首领\r难度：★★★★\r等级：58+\r对阵：东汉军 VS 黄巾军（NPC）\r人数：12-18\r目标：60分钟内成功击杀黄巾主将张梁\r剧情：\r    公元一八四年，黄巾之乱在中原大地上进入了最激烈的阶段。为了击溃“人公将军”张梁，卢植军全军发起了攻击。但张梁麾下的猛将周仓使得汉军屡屡受挫。此时，一位自称河东解良关长生的汉子出现在了战场上。\r    “汝就是人公将军？能否告诉我人间的公理大义何在！”"
AUI_BATTLEFIELD_ANAME221 = "东汉军"
AUI_BATTLEFIELD_BNAME221 = "黄巾军"
AUI_BATTLEFIELD_AWIN221 = "击败张梁"
AUI_BATTLEFIELD_BWIN221 = "无"
AUI_BATTLEFIELD_ALOST221 = "卢植战败"
AUI_BATTLEFIELD_BLOST221 = "无"
--ID:222
AUI_BATTLEFIELD_INTRODUCTION222 = "类型：合作，护送\r难度：★★★★\r等级：50+\r对阵：刘备军 VS 刘璋军（NPC）\r人数：6-9\r目标：50分钟内护送庞统安全经过落凤坡，并击败敌大将张任\r剧情：\r    建安十八年，刘备为了夺取巴蜀之地，向成都进军。蜀将张任、冷苞、刘循等人在雒城布置了坚固的防御线，阻挡刘备军。为了突破刘璋军防线，刘备军师庞统献策，率兵取道落凤坡偷袭敌军。然而，当庞统率军经过落凤坡时，却遭遇了蜀将张任的伏击。一代名军师“凤雏”，是否会在落凤坡陨落？"
AUI_BATTLEFIELD_ANAME222 = "刘备军"
AUI_BATTLEFIELD_BNAME222 = "刘璋军"
AUI_BATTLEFIELD_AWIN222 = "护送庞统安全经过落凤坡"
AUI_BATTLEFIELD_BWIN222 = "无"
AUI_BATTLEFIELD_ALOST222 = "庞统战败"
AUI_BATTLEFIELD_BLOST222 = "无"
--ID:223
AUI_BATTLEFIELD_INTRODUCTION223 = "类型：合作，击杀首领\r难度：★★\r等级：30+\r对阵：孙刘联军 VS 曹操军（NPC）\r人数：1-3\r目标：30分钟内击败敌首领高怜，保护孙尚香的安全\r剧情：\r    曹操大军南征在即，为了和刘备军结盟，孙权派遣孙尚香前往荆州会见刘备。但是，途中却遭到了曹军刺客的阻碍。刘备派部将赵云前往解救被困的孙尚香。然而，途中赵云却遇到了一个熟悉的人。"
AUI_BATTLEFIELD_ANAME223 = "孙刘联军"
AUI_BATTLEFIELD_BNAME223 = "曹操军"
AUI_BATTLEFIELD_AWIN223 = "保护孙尚香的安全"
AUI_BATTLEFIELD_BWIN223 = "无"
AUI_BATTLEFIELD_ALOST223 = "孙尚香战败"
AUI_BATTLEFIELD_BLOST223 = "无"
--ID:227
AUI_BATTLEFIELD_INTRODUCTION227 = "^fffd44根据电信二区——古剑——兰陵天子提供的剧本改编。\r^ffffff类型：合作，护送\r难度：★★★★\r等级：55+\r对阵：吕布军 VS 曹操军（NPC）\r人数：1-4\r目标：30分钟内将吕布解救出白门楼\r剧情：\r    建安三年十二月初七，吕布兵败白门楼，被曹操下令斩首。但被曹操招降的张辽感念吕布多年的恩义，于是突入监牢解救出吕布和高顺，飞将吕布能否成功突围，扭转败亡的命运？历史可能性的架空剧本，且看飞将如何回天！"
AUI_BATTLEFIELD_ANAME227 = "吕布军"
AUI_BATTLEFIELD_BNAME227 = "曹操军"
AUI_BATTLEFIELD_AWIN227 = "成功解救吕布"
AUI_BATTLEFIELD_BWIN227 = "无"
AUI_BATTLEFIELD_ALOST227 = "吕布战败"
AUI_BATTLEFIELD_BLOST227 = "无"
--ID:237
AUI_BATTLEFIELD_INTRODUCTION237 = "类型：合作，击杀首领\r难度：★★★★★★\r等级：60+\r对阵：东汉军 VS 黄巾军（NPC）\r人数：6\r目标：120分钟内击败敌首领张角\r剧情：\r    中平元年，黄巾之乱正如火如荼。为了平息战乱，几位不知名的义士前往位于巨鹿的黄巾大营行刺大贤良师张角。只要能结束张角的性命，就能结束连绵的黄巾大乱！潜藏于历史水面之下的逸闻，你能否成为手刃大贤良师的幕后英雄？"
AUI_BATTLEFIELD_ANAME237 = "东汉军"
AUI_BATTLEFIELD_BNAME237 = "黄巾军"
AUI_BATTLEFIELD_AWIN237 = "击败张角"
AUI_BATTLEFIELD_BWIN237 = "无"
AUI_BATTLEFIELD_ALOST237 = "无"
AUI_BATTLEFIELD_BLOST237 = "无"
--ID:252
AUI_BATTLEFIELD_INTRODUCTION252 = "类型：合作，击杀首领\r难度：★★★\r等级：25+\r对阵：马超军 VS 西羌军（NPC）\r人数：4-6\r目标：40分钟内击败阎行\r剧情：\r    建安初年，中原陷入大乱。在偏远的凉州之地，马腾势力和韩遂势力表面上和平相处，背地里实则明争暗斗。某日马超探知韩遂送递秘密文书前往羌地。为了侦查韩遂的动向，马超和堂弟马岱、马铁带领一队勇士潜入羌营，打算窃走韩遂密书。故事就此展开……\r    为了调查韩遂和羌人是否有勾结，玩家跟随马超进入羌兵大营中密侦，但却陷入了羌兵们的埋伏，众人历经艰险突出重围之后，没想到却被韩遂军大将阎行截杀！同时羌王迷当大王也率领羌兵主力从后方追击而来。在这危急关头，锦马超能否大显神威？"
AUI_BATTLEFIELD_ANAME252 = "马超军"
AUI_BATTLEFIELD_BNAME252 = "西羌军"
AUI_BATTLEFIELD_AWIN252 = "击败阎行"
AUI_BATTLEFIELD_BWIN252 = "无"
AUI_BATTLEFIELD_ALOST252 = "马超战败"
AUI_BATTLEFIELD_BLOST252 = "无"
--ID:254
AUI_BATTLEFIELD_INTRODUCTION254 = "类型：合作，击杀首领\r难度：★★★★★★★\r等级：60+\r对阵：联合军 VS 董卓军（NPC）\r人数：6-6\r目标：120分钟内击败董卓\r剧情：\r    初平元年（公元189年），董卓专权，欺君害民。曹操自陈留起兵，召集十八镇诸侯，推举渤海太守袁绍为盟主，发矫诏于天下，统雄兵数十万，向洛阳进发。而挡在十八镇诸侯面前的是汜水和虎牢两座雄关。\r    汜水关由董卓帐下第一上将华雄把守，一夫当关，万夫莫近。董卓则亲率大军二十万坐镇有“锁天中枢，三秦咽喉”之称的虎牢关，命义子温侯吕布于关前扎寨，虎视眈眈等待诸侯联军的到来。武艺无双的温侯吕布如饿虎般磨利爪牙，准备要践踏天下武将的尊严和自信。而在联合军中，有三个默默无闻的无名下将，即将在千军万马前放射出夺目光芒……"
AUI_BATTLEFIELD_ANAME254 = "联合军"
AUI_BATTLEFIELD_BNAME254 = "董卓军"
AUI_BATTLEFIELD_AWIN254 = "击败董卓"
AUI_BATTLEFIELD_BWIN254 = "无"
AUI_BATTLEFIELD_ALOST254 = "无"
AUI_BATTLEFIELD_BLOST254 = "无"
--ID:253曹操传
AUI_BATTLEFIELD_INTRODUCTION253 = "类型：合作，击杀首领\r难度：★★★★\r等级：58+\r对阵：曹操军 VS 未知军队（NPC）\r人数：1-3\r目标：40分钟内击败僵尸梁孝王\r剧情：\r    天下三分，战事频仍，军资吃紧，曹操遂设摸金校尉一职，广召天下盗墓能士，意欲盗取前代王墓以扩军饷。初阵便由曹操亲率摸金校尉盗取梁孝王陵。前鬼挡路，后鬼啼哭，机关处处，盗墓迷城。\r    “人点烛，鬼吹灯”。机关处处，支线重重，每一个选择都可能触发新的险境，每一个意外都有可能终结冒险者的生命。"
AUI_BATTLEFIELD_ANAME253 = "曹操军"
AUI_BATTLEFIELD_BNAME253 = "未知军队"
AUI_BATTLEFIELD_AWIN253 = "击败僵尸梁孝王"
AUI_BATTLEFIELD_BWIN253 = "无"
AUI_BATTLEFIELD_ALOST253 = "蜡烛熄灭"
AUI_BATTLEFIELD_BLOST253 = "无"
--ID:255刘备传
AUI_BATTLEFIELD_INTRODUCTION255 = "^fffd44根据电信一区——东风——筱月迦罗提供的剧本改编。\r^ffffff类型：合作，击杀首领\r难度：★★★★\r等级：58+\r对阵：刘备军 VS 曹操军（NPC）\r人数：1-3\r目标：40分钟内击败曹操\r剧情：\r    新野一战后，刘备败走，曹操乘胜追击。眼看那兵强马壮的曹操大军就要压上，要保得刘备一行逃脱此劫，需要的决不仅仅是超人的勇气和傲世的武功，还需要过人的智慧、谋略。\r    刘备之行道路艰险，夏侯恩、曹洪一一上场，然而，这都不是最可怕的敌人，因为，你将直接面对三国枭雄——曹操！\r    面对千军万马，玄德能否全身而退？关羽、张飞将与你并肩作战，诸葛孔明就是你的幕后军师。现在就尝尝以一敌百的爽快，万马千军之中，你就是那杀出一条血路的伟岸身影！"
AUI_BATTLEFIELD_ANAME255 = "刘备军"
AUI_BATTLEFIELD_BNAME255 = "曹操军"
AUI_BATTLEFIELD_AWIN255 = "击败曹操"
AUI_BATTLEFIELD_BWIN255 = "无"
AUI_BATTLEFIELD_ALOST255 = "刘备战败"
AUI_BATTLEFIELD_BLOST255 = "无"
--ID:256濮阳之战（积分）
AUI_BATTLEFIELD_INTRODUCTION256 = "类型：对抗，获取积分\r难度：★★★★\r等级：60+\r对阵：曹操军 VS 吕布军\r人数：24-30\r目标：率先达到积分目标\r剧情：\r    兴平元年（西元194年），兖州牧曹操打起为父报仇的白旗，发兵讨伐徐州牧陶谦。正当曹军在徐州节节取胜之际，曹操的根据地兖州突然发生了巨变。曹操部下张邈、陈宫引吕布所部的流浪军进入兖州，举起叛旗！战神吕布的虎狼之师迅速席卷兖州大地，曹操闻讯立即与徐州刘备军讲和，撤军返回兖州，在濮阳与吕布军展开了持续一年多的长期激战。"
AUI_BATTLEFIELD_ANAME256 = "曹操军"
AUI_BATTLEFIELD_BNAME256 = "吕布军"
AUI_BATTLEFIELD_AWIN256 = ""
AUI_BATTLEFIELD_BWIN256 = ""
AUI_BATTLEFIELD_ALOST256 = ""
AUI_BATTLEFIELD_BLOST256 = ""
--ID:266典韦传
AUI_BATTLEFIELD_INTRODUCTION266 = "^fffd44根据电信二区——风云——飞天猪侠提供的剧本改编。\r^ffffff类型：合作，击杀首领\r难度：★★★★\r等级：58+\r对阵：曹操军 VS 张绣军\r人数：2-4\r目标：40分钟内击败张绣\r剧情：\r    建安二年（公元197年），曹操南征宛城张绣，张绣率众降服于曹操军门之下。但曹操贪图张济之妻邹氏美色，吩咐典韦护卫，日日与邹氏取乐。张绣为之大怒，遂于贾诩谋操。\r    被称为“古之恶来”的盖世猛将典韦，即将迎来最悲壮的命运之刻！"
AUI_BATTLEFIELD_ANAME266 = "曹操军"
AUI_BATTLEFIELD_BNAME266 = "张绣军"
AUI_BATTLEFIELD_AWIN266 = "击败张绣"
AUI_BATTLEFIELD_BWIN266 = "无"
AUI_BATTLEFIELD_ALOST266 = "曹操战败"
AUI_BATTLEFIELD_BLOST266 = "无"
--ID:268荆襄撤退战
AUI_BATTLEFIELD_INTRODUCTION268 = "类型：合作，护送\r难度：★★★★★★\r等级：50+\r对阵：刘备军 VS 曹操军\r人数：9-12\r目标：合作护送，保护刘备和逃难百姓到达终点\r剧情：\r    建安十三年（公元208年）七月，曹操调集五十万大军，对荆州开始大规模南征。荆州牧刘表命令客将刘备率军从新野撤往樊城，准备联合发动迎击。就在这临战关头，刘表突发重病而死，荆州内部顿时陷入刘琮、刘琦二公子争立的混乱局势。蔡瑁、张允、蒯越等荆州重臣拥戴刘琮为州牧，向曹操投降。驻守樊城的刘备军陷入腹背受敌的死地。\r    时为建安十三年九月，刘备军保护着十余万自愿跟随的荆州百姓，开始了三国历史上最悲壮的荆襄撤退战。"
AUI_BATTLEFIELD_ANAME268 = "刘备军"
AUI_BATTLEFIELD_BNAME268 = "曹操军"
AUI_BATTLEFIELD_AWIN268 = "保护刘备和百姓，击退曹军"
AUI_BATTLEFIELD_BWIN268 = "无"
AUI_BATTLEFIELD_ALOST268 = "刘备战败或者百姓全部阵亡"
AUI_BATTLEFIELD_BLOST268 = "无"
--ID:241国战（积分）
AUI_BATTLEFIELD_INTRODUCTION241 = ""
AUI_BATTLEFIELD_ANAME241 = "攻城方"
AUI_BATTLEFIELD_BNAME241 = "守城方"
AUI_BATTLEFIELD_AWIN241 = ""
AUI_BATTLEFIELD_BWIN241 = ""
AUI_BATTLEFIELD_ALOST241 = ""
AUI_BATTLEFIELD_BLOST241 = ""
--ID:267定军山
AUI_BATTLEFIELD_INTRODUCTION267 = "类型：合作，护送\r难度：★★★★★★\r等级：60+\r对阵：刘备军 VS 曹操军\r人数：6-12\r目标：随同黄忠攻下定军山\r剧情：\r    建安二十四年（公元219年），刘备军与曹操军在汉中之地的漫长战事已持续超过一年。\r    正月，刘备军从阳平关前南渡汉水，在定军山前安营。曹军主帅夏侯渊也率兵在此安营，与刘备军展开了激烈的争夺战。一方是名列五虎上将的老将黄忠与不亚于诸葛亮的军师法正，一方是曹军独当一面的宿将夏侯渊与河北出身的名将张颌。然而，在这场激烈的定军山攻防战幕后，却隐藏着不为人知的秘密……"
AUI_BATTLEFIELD_ANAME267 = "刘备军"
AUI_BATTLEFIELD_BNAME267 = "曹操军"
AUI_BATTLEFIELD_AWIN267 = "无"
AUI_BATTLEFIELD_BWIN267 = "无"
AUI_BATTLEFIELD_ALOST267 = "无"
AUI_BATTLEFIELD_BLOST267 = "无"
--ID:275赵云传
AUI_BATTLEFIELD_INTRODUCTION275 = "^fffd44根据电信一区——北斗——北苑观雪提供的剧本改编。\r^ffffff类型：合作，护送\r难度：★★★★★\r等级：58+\r对阵：刘备军 VS 曹操军\r人数：2-4\r目标：掩护赵云通过长坂桥\r剧情：\r    建安十三年（公元208年），曹操举五十万大军南征荆州，荆州牧刘表突发重病而死，荆州重臣蔡瑁、张允奉刘表之子刘琮向曹操投降。驻守樊城的刘备军保护十余万百姓向南撤退。但是，在当阳长坂刘备军和百姓被曹军主力追上，失散殆尽。为了找回主母糜夫人和小主人阿斗，赵云七进七出奔波往返于数十万曹军阵中，留下了一段脍炙人口的千古传奇。"
AUI_BATTLEFIELD_ANAME275 = "刘备军"
AUI_BATTLEFIELD_BNAME275 = "曹操军"
AUI_BATTLEFIELD_AWIN275 = "赵云救主通过长坂桥"
AUI_BATTLEFIELD_BWIN275 = "无"
AUI_BATTLEFIELD_ALOST275 = "赵云战败"
AUI_BATTLEFIELD_BLOST275 = "无"
--ID:265孙权传
AUI_BATTLEFIELD_INTRODUCTION265 = "^fffd44根据电信一区——天下——╄糊涂╄颖提供的剧本改编。\r^ffffff类型：资源收集\r难度：★★★\r等级：58+\r对阵：孙权军 VS 山寨军\r人数：1-3\r目标：帮助孙权收集造铁葫芦所需材料\r剧情：\r    建安十三年，十三万曹军挥师南下，意欲一统南北。为求万全，吴蜀联合抗曹；明为盟友，实则各怀鬼胎。双方尽知，所谓霸主，天下只得一人。逐鹿之事，需见兵戎；兵戎相见，一则先发制人，一则知己知彼。孔明意欲借造葫芦之事一探东吴虚实。权明知是计，却也望借铸造之难而挞伐之，以此震慑西蜀野心。奈何事过半月有余，铸造之事仍未见起色。正当苦恼之际，来了三个臭皮匠……"
AUI_BATTLEFIELD_ANAME265 = "孙权军"
AUI_BATTLEFIELD_BNAME265 = "山寨军"
AUI_BATTLEFIELD_AWIN265 = "无"
AUI_BATTLEFIELD_BWIN265 = "无"
AUI_BATTLEFIELD_ALOST265 = "无"
AUI_BATTLEFIELD_BLOST265 = "无"
--ID:279竞技场12人（积分）
AUI_BATTLEFIELD_INTRODUCTION279 = "类型：夺旗\r等级：不限\r人数：12（观战人数上限为100）\r目标：夺取竞技场大旗"
AUI_BATTLEFIELD_ANAME279 = "红方"
AUI_BATTLEFIELD_BNAME279 = "绿方"
AUI_BATTLEFIELD_AWIN279 = ""
AUI_BATTLEFIELD_BWIN279 = ""
AUI_BATTLEFIELD_ALOST279 = ""
AUI_BATTLEFIELD_BLOST279 = ""
--ID:280竞技场1人（积分）
AUI_BATTLEFIELD_INTRODUCTION280 = "类型：夺旗\r等级：\r人数：\r目标："
AUI_BATTLEFIELD_ANAME280 = "红方"
AUI_BATTLEFIELD_BNAME280 = "绿方"
AUI_BATTLEFIELD_AWIN280 = "无"
AUI_BATTLEFIELD_BWIN280 = "无"
AUI_BATTLEFIELD_ALOST280 = "无"
AUI_BATTLEFIELD_BLOST280 = "无"
--ID:281蒋干盗书
AUI_BATTLEFIELD_INTRODUCTION281 = "^fffd44根据电信二区——霸王——龙族￠名酒提供的剧本改编。\r^ffffff类型：其他\r难度：★★★ / ★★★★★★\r等级：48+ / 60+\r对阵：曹操军 VS 孙权军\r人数：1-3人 / 3人\r目标：夺取机密文书\r剧情：\r    时为建安十三年冬，曹操大军与东吴大都督周瑜军在赤壁对峙，陷入僵持局面。曹操军谋士蒋干献策前往说降周瑜。但劝降遭到周瑜拒绝，蒋干担忧空手而归，于是决定盗窃吴军机密文书返回献功。一场惊心动魄的窃密暗战，就此展开。"
AUI_BATTLEFIELD_ANAME281 = "曹操军"
AUI_BATTLEFIELD_BNAME281 = "孙权军"
AUI_BATTLEFIELD_AWIN281 = "保护蒋干盗取文书并返回乌林大营"
AUI_BATTLEFIELD_BWIN281 = "无"
AUI_BATTLEFIELD_ALOST281 = "三十分钟内未盗得文书"
AUI_BATTLEFIELD_BLOST281 = "无"

--组队提示消息
TEXT_TEAM_INVITE = "%s 邀请您加入队伍，是否同意？";
TEXT_TEAM_INVITE_REJECT = "%s 拒绝了您的组队邀请。";
TEXT_TEAM_REQUEST = "%s 请求加入您的队伍，是否同意？";
TEXT_TEAM_REQUEST_REJECT = "%s 拒绝了您的入队请求。";
TEXT_TEAM_MEMBER_JOIN = "%s 加入了您所在的队伍。";
TEXT_TEAM_MEMBER_LEAVE = "%s 离开了队伍。";
TEXT_TEAM_DISCARD = "%s 解散了队伍。";
TEXT_TEAM_SELF_JOIN = "你加入了一个队伍。";
TEXT_TEAM_SELF_LEAVE = "你离开了队伍。";
TEXT_TEAM_CHANGE_LEADER = "%s 成为了新的队长。";
TEXT_TEAM_MEMBER_LOGIN = "%s 进入了游戏。";
TEXT_TEAM_MEMBER_LOGOUT = "%s 离开了游戏。";
TEXT_TEAM_CHANGELOOT_FREE = "组队分配方式更换成为 %s。";
TEXT_TEAM_CHANGELOOT_TEAM = "组队分配方式更换成为 %s，最低投票品质为 %s。";

--组队分配
GNR_LOOTRULE_FREE = "自由拾取";
GNR_LOOTRULE_TEAM = "队伍分配";
GNR_ROLLLEVEL_2 = "良品";
GNR_ROLLLEVEL_3 = "珍品";
GNR_ROLLLEVEL_4 = "绝品";

--地图名称
GNR_MAP_NAME1 = "河北"
GNR_MAP_NAME2 = "西凉"
GNR_MAP_NAME3 = "巴蜀"
GNR_MAP_NAME4 = "南蛮"
GNR_MAP_NAME5 = "江南"
GNR_MAP_NAME6 = "荆襄"
GNR_MAP_NAME7 = "长安"

--主副兵种升级提示
AUI_CHARACTER_PROFHELP = "  可到%s处升级"
AUI_CHARACTER_PROFMAXHELP = "  您的兵种已经满级"
AUI_CHARACTER_PROFNILHELP = "  您尚未选择兵种"

--生产技能升级提示
AUI_PRODUCESKILL_TIP = "您可以在%d级时到%s%%s处学习%s的%s技能。"
TEXT_PRODUCESKILL_SKILLTYPE1 = "驯养"
TEXT_PRODUCESKILL_SKILLTYPE2 = "烹饪"
TEXT_PRODUCESKILL_SKILLTYPE3 = "铁匠"
TEXT_PRODUCESKILL_SKILLTYPE4 = "裁缝"
TEXT_PRODUCESKILL_SKILLTYPE5 = "巧匠"
TEXT_PRODUCESKILL_SKILLTYPE6 = "药师"
TEXT_PRODUCESKILL_SKILLTYPE7 = "急救"
TEXT_PRODUCESKILL_SKILLTYPE8 = "工匠"
TEXT_PRODUCESKILL_SKILLLEVELTYPE1 = "初级"
TEXT_PRODUCESKILL_SKILLLEVELTYPE2 = "中级"
TEXT_PRODUCESKILL_SKILLLEVELTYPE3 = "高级"
TEXT_PRODUCESKILL_SKILLLEVELTYPE4 = "特级"
TEXT_PRODUCESKILL_SKILLLEVELTYPE5 = "大师"
TEXT_PRODUCESKILL_SKILLLEVELTYPE6 = "神匠"
TEXT_PRODUCESKILL_NPCNAME1 = "韩黎"
TEXT_PRODUCESKILL_NPCNAME2 = "张邈"
TEXT_PRODUCESKILL_NPCNAME3 = "蒲元"
TEXT_PRODUCESKILL_NPCNAME4 = "虞娟之"
TEXT_PRODUCESKILL_NPCNAME5 = "虞少君"
TEXT_PRODUCESKILL_NPCNAME6 = "唐虞"
TEXT_PRODUCESKILL_NPCNAME7 = "李当之"
TEXT_PRODUCESKILL_NPCNAME8 = "郑浑"
TEXT_PRODUCESKILL_NOTE1 = "升级坐骑。"
TEXT_PRODUCESKILL_NOTE2 = "制造食物、美酒和茶饮。"
TEXT_PRODUCESKILL_NOTE3 = "打造武器。"
TEXT_PRODUCESKILL_NOTE4 = "打造防具。"
TEXT_PRODUCESKILL_NOTE5 = "制造强化材料，合成元石和符玉。"
TEXT_PRODUCESKILL_NOTE6 = "制造立即回复生命值的药丸。"
TEXT_PRODUCESKILL_NOTE7 = "制造可在战斗中使用的药膏。"
TEXT_PRODUCESKILL_NOTE8 = "制造宝物，点化秘文灵珠。"

--LevelHelpString
--1兵种
TEXT_PROFHELP_TITLE1 = "1. 兵种升级提示："
TEXT_PROFHELP_TITLE2 = "\r2. 技能学习提示："
TEXT_PROFHELP_TITLE3 = "\r3. 专精点数提示："

TEXT_PROFHELP_NOWMAINPROF = "你的主兵种当前等级为^ff9090%s%s^ffffff。"
TEXT_PROFHELP_NOWSUBPROF = "你的副兵种当前等级为^ff9090%s%s^ffffff。"
TEXT_PROFHELP_MAINPROFNIL = "你尚未选择主兵种，可以到#%d#处选择要修习的主兵种。"
TEXT_PROFHELP_SUBPROFNIL1 = "你尚未选择副兵种，可以到#%d#处选择要修习的副兵种。"
TEXT_PROFHELP_SUBPROFNIL2 = "你尚未修习副兵种。当你的主兵种等级达到^ff9090%s%s^ffffff之后，才可以修习副兵种。"
TEXT_PROFHELP_SUBPROFNIL3 = "你尚未修习副兵种。"
TEXT_PROFHELP_MAINPROFMAX = "主兵种已经满级，暂时不能再提升。"
TEXT_PROFHELP_SUBPROFMAX = "副兵种已经满级，暂时不能再提升。"
TEXT_PROFHELP_MAINSUGGEST1 = "建议你把主兵种等级升至^ff9090%s%s^ffffff，升级时会消耗历练值。"
TEXT_PROFHELP_MAINSUGGEST2 = "你需要到#%d#处完成兵种任务，才能将主兵种等级提升到下一阶段：^ff9090%s%s^ffffff。"
TEXT_PROFHELP_SUBSUGGEST = "你需要到#%d#处完成兵种任务，才能将副兵种等级提升到下一阶段：^ff9090%s%s^ffffff。"
TEXT_PROFHELP_SUGGEST = "建议你优先提升主兵种的等级，因为如果你的主兵种等级低于副兵种等级，在提升主兵种级别时会消耗更多的历练值。"

TEXT_PROFHELP_LEARNNIL = "本级别没有可以学习的战斗技能。"
TEXT_PROFHELP_LEARNSKILL = "你可以到#%d#处学习新的战斗技能。"
TEXT_PROFHELP_LEARNRIDE = "当你达到20级后，可以到#%d#处学习骑术。"

TEXT_PROFHELP_MAINDOWERNIL = "你尚未选择主兵种，没有可用的专精点。"
TEXT_PROFHELP_MAINDOWER1 = "你当前拥有的主兵种专精总点数为%d。"
TEXT_PROFHELP_MAINDOWER2 = "主兵种等级每提升一级可以获得一点专精点数。"
TEXT_PROFHELP_SUBDOWERNIL = "你尚未选择副兵种，没有可用的专精点。"
TEXT_PROFHELP_SUBDOWER1 = "你当前拥有的副兵种专精总点数为%d。"
TEXT_PROFHELP_SUBDOWER2 = "副兵种等级每提升一级可以获得一点专精点数。"
TEXT_PROFHELP_SUBDOWER3 = "你需要把副兵种等级升到^ff9090%s%s^ffffff，才可以获得专精点数。之后副兵种等级每提升一级可以获得一点专精点数。"

GNR_PROFRANK_NAME0 = ""
GNR_PROFRANK_NAME1 = "一段"
GNR_PROFRANK_NAME2 = "二段"
GNR_PROFRANK_NAME3 = "三段"
GNR_PROFRANK_NAME4 = "四段"
GNR_PROFRANK_NAME5 = "五段"
GNR_PROFRANK_NAME6 = "六段"
GNR_PROFRANK_NAME7 = "七段"
GNR_PROFRANK_NAME8 = "八段"
GNR_PROFRANK_NAME9 = "九段"

GNR_PROFLEVEL_NAME1_0 = "习刀者"
GNR_PROFLEVEL_NAME1_1 = "刀兵"
GNR_PROFLEVEL_NAME1_2 = "刀骑"
GNR_PROFLEVEL_NAME1_3 = "刀尉"
GNR_PROFLEVEL_NAME1_4 = "刀将"
GNR_PROFLEVEL_NAME1_5 = "刀圣"
GNR_PROFLEVEL_NAME1_6 = "刀神"
GNR_PROFLEVEL_NAME1_7 = "风刀使"
GNR_PROFLEVEL_NAME1_8 = "待定2"
GNR_PROFLEVEL_NAME1_9 = "待定3"

GNR_PROFLEVEL_NAME2_0 = "习枪者"	
GNR_PROFLEVEL_NAME2_1 = "枪兵"
GNR_PROFLEVEL_NAME2_2 = "枪骑"
GNR_PROFLEVEL_NAME2_3 = "枪尉"
GNR_PROFLEVEL_NAME2_4 = "枪将"
GNR_PROFLEVEL_NAME2_5 = "枪王"
GNR_PROFLEVEL_NAME2_6 = "枪神"	
GNR_PROFLEVEL_NAME2_7 = "圣枪使"
GNR_PROFLEVEL_NAME2_8 = "待定2"
GNR_PROFLEVEL_NAME2_9 = "待定3"

GNR_PROFLEVEL_NAME3_0 = "习戟者"	
GNR_PROFLEVEL_NAME3_1 = "戟兵"
GNR_PROFLEVEL_NAME3_2 = "戟骑"
GNR_PROFLEVEL_NAME3_3 = "戟尉"
GNR_PROFLEVEL_NAME3_4 = "戟将"
GNR_PROFLEVEL_NAME3_5 = "戟圣"
GNR_PROFLEVEL_NAME3_6 = "戟神"	
GNR_PROFLEVEL_NAME3_7 = "炽戟使"
GNR_PROFLEVEL_NAME3_8 = "待定2"
GNR_PROFLEVEL_NAME3_9 = "待定3"

GNR_PROFLEVEL_NAME4_0 = "习钺者"	
GNR_PROFLEVEL_NAME4_1 = "钺兵"
GNR_PROFLEVEL_NAME4_2 = "钺骑"
GNR_PROFLEVEL_NAME4_3 = "钺尉"
GNR_PROFLEVEL_NAME4_4 = "钺将"
GNR_PROFLEVEL_NAME4_5 = "钺圣"
GNR_PROFLEVEL_NAME4_6 = "钺神"	
GNR_PROFLEVEL_NAME4_7 = "皇钺使"
GNR_PROFLEVEL_NAME4_8 = "待定2"
GNR_PROFLEVEL_NAME4_9 = "待定3"

GNR_PROFLEVEL_NAME5_0 = "习镗者"	
GNR_PROFLEVEL_NAME5_1 = "镗兵"
GNR_PROFLEVEL_NAME5_2 = "镗骑"
GNR_PROFLEVEL_NAME5_3 = "镗尉"
GNR_PROFLEVEL_NAME5_4 = "镗将"
GNR_PROFLEVEL_NAME5_5 = "镗圣"
GNR_PROFLEVEL_NAME5_6 = "镗神"	
GNR_PROFLEVEL_NAME5_7 = "霸镗使"
GNR_PROFLEVEL_NAME5_8 = "待定2"
GNR_PROFLEVEL_NAME5_9 = "待定3"

GNR_PROFLEVEL_NAME6_0 = "习棍者"	
GNR_PROFLEVEL_NAME6_1 = "棍兵"
GNR_PROFLEVEL_NAME6_2 = "棍骑"
GNR_PROFLEVEL_NAME6_3 = "棍尉"
GNR_PROFLEVEL_NAME6_4 = "棍将"
GNR_PROFLEVEL_NAME6_5 = "棍王"
GNR_PROFLEVEL_NAME6_6 = "棍仙"	
GNR_PROFLEVEL_NAME6_7 = "巧棍使"
GNR_PROFLEVEL_NAME6_8 = "待定2"
GNR_PROFLEVEL_NAME6_9 = "待定3"

GNR_PROFLEVEL_NAME7_0 = "习剑者"	
GNR_PROFLEVEL_NAME7_1 = "剑客"
GNR_PROFLEVEL_NAME7_2 = "剑士"
GNR_PROFLEVEL_NAME7_3 = "剑侠"
GNR_PROFLEVEL_NAME7_4 = "剑豪"
GNR_PROFLEVEL_NAME7_5 = "剑圣"
GNR_PROFLEVEL_NAME7_6 = "剑仙"	
GNR_PROFLEVEL_NAME7_7 = "傲剑使"
GNR_PROFLEVEL_NAME7_8 = "待定2"
GNR_PROFLEVEL_NAME7_9 = "待定3"

GNR_PROFLEVEL_NAME8_0 = "习斧者"	
GNR_PROFLEVEL_NAME8_1 = "斧兵"
GNR_PROFLEVEL_NAME8_2 = "斧骑"
GNR_PROFLEVEL_NAME8_3 = "斧尉"
GNR_PROFLEVEL_NAME8_4 = "斧将"
GNR_PROFLEVEL_NAME8_5 = "斧王"
GNR_PROFLEVEL_NAME8_6 = "斧神"	
GNR_PROFLEVEL_NAME8_7 = "狂斧使"
GNR_PROFLEVEL_NAME8_8 = "待定2"
GNR_PROFLEVEL_NAME8_9 = "待定3"

GNR_PROFLEVEL_NAME9_0 = "习钩者"	
GNR_PROFLEVEL_NAME9_1 = "钩客"
GNR_PROFLEVEL_NAME9_2 = "钩士"
GNR_PROFLEVEL_NAME9_3 = "钩侠"
GNR_PROFLEVEL_NAME9_4 = "钩豪"
GNR_PROFLEVEL_NAME9_5 = "钩王"
GNR_PROFLEVEL_NAME9_6 = "钩神"	
GNR_PROFLEVEL_NAME9_7 = "疾钩使"
GNR_PROFLEVEL_NAME9_8 = "待定2"
GNR_PROFLEVEL_NAME9_9 = "待定3"

GNR_PROFLEVEL_NAME10_0 = "习锏者"	
GNR_PROFLEVEL_NAME10_1 = "锏客"
GNR_PROFLEVEL_NAME10_2 = "锏士"
GNR_PROFLEVEL_NAME10_3 = "锏侠"
GNR_PROFLEVEL_NAME10_4 = "锏豪"
GNR_PROFLEVEL_NAME10_5 = "锏圣"
GNR_PROFLEVEL_NAME10_6 = "锏神"	
GNR_PROFLEVEL_NAME10_7 = "烈锏使"
GNR_PROFLEVEL_NAME10_8 = "待定2"
GNR_PROFLEVEL_NAME10_9 = "待定3"

GNR_PROFLEVEL_NAME11_0 = "习锤者"	
GNR_PROFLEVEL_NAME11_1 = "锤兵"
GNR_PROFLEVEL_NAME11_2 = "锤骑"
GNR_PROFLEVEL_NAME11_3 = "锤尉"
GNR_PROFLEVEL_NAME11_4 = "锤将"
GNR_PROFLEVEL_NAME11_5 = "锤圣"
GNR_PROFLEVEL_NAME11_6 = "锤神"	
GNR_PROFLEVEL_NAME11_7 = "轰锤使"
GNR_PROFLEVEL_NAME11_8 = "待定2"
GNR_PROFLEVEL_NAME11_9 = "待定3"

GNR_PROFLEVEL_NAME12_0 = "习爪者"
GNR_PROFLEVEL_NAME12_1 = "爪客"
GNR_PROFLEVEL_NAME12_2 = "爪士"
GNR_PROFLEVEL_NAME12_3 = "爪侠"
GNR_PROFLEVEL_NAME12_4 = "爪豪"
GNR_PROFLEVEL_NAME12_5 = "爪圣"
GNR_PROFLEVEL_NAME12_6 = "爪神"
GNR_PROFLEVEL_NAME12_7 = "雷爪使"
GNR_PROFLEVEL_NAME12_8 = "待定2"
GNR_PROFLEVEL_NAME12_9 = "待定3"

GNR_PROFLEVEL_NAME13_0 = "习盾者"	
GNR_PROFLEVEL_NAME13_1 = "盾兵"
GNR_PROFLEVEL_NAME13_2 = "盾骑"
GNR_PROFLEVEL_NAME13_3 = "盾尉"
GNR_PROFLEVEL_NAME13_4 = "盾将"
GNR_PROFLEVEL_NAME13_5 = "盾王"
GNR_PROFLEVEL_NAME13_6 = "盾仙"	
GNR_PROFLEVEL_NAME13_7 = "坚盾使"
GNR_PROFLEVEL_NAME13_8 = "待定2"
GNR_PROFLEVEL_NAME13_9 = "待定3"

GNR_PROFLEVEL_NAME14_0 = "习环者"	
GNR_PROFLEVEL_NAME14_1 = "环手"
GNR_PROFLEVEL_NAME14_2 = "环士"
GNR_PROFLEVEL_NAME14_3 = "环侠"
GNR_PROFLEVEL_NAME14_4 = "环将"
GNR_PROFLEVEL_NAME14_5 = "环圣"
GNR_PROFLEVEL_NAME14_6 = "环仙"	
GNR_PROFLEVEL_NAME14_7 = "灵环使"
GNR_PROFLEVEL_NAME14_8 = "待定2"
GNR_PROFLEVEL_NAME14_9 = "待定3"

GNR_PROFLEVEL_NAME15_0 = "习杖者"	
GNR_PROFLEVEL_NAME15_1 = "杖客"
GNR_PROFLEVEL_NAME15_2 = "杖士"
GNR_PROFLEVEL_NAME15_3 = "杖侠"
GNR_PROFLEVEL_NAME15_4 = "杖将"
GNR_PROFLEVEL_NAME15_5 = "杖王"
GNR_PROFLEVEL_NAME15_6 = "杖仙"	
GNR_PROFLEVEL_NAME15_7 = "豪杖使"
GNR_PROFLEVEL_NAME15_8 = "待定2"
GNR_PROFLEVEL_NAME15_9 = "待定3"

GNR_PROFLEVEL_NAME16_0 = "习舞者"
GNR_PROFLEVEL_NAME16_1 = "舞者"
GNR_PROFLEVEL_NAME16_2 = "舞士"
GNR_PROFLEVEL_NAME16_3 = "舞师"
GNR_PROFLEVEL_NAME16_4 = "舞豪"
GNR_PROFLEVEL_NAME16_5 = "舞王"
GNR_PROFLEVEL_NAME16_6 = "舞仙"
GNR_PROFLEVEL_NAME16_7 = "妙舞使"
GNR_PROFLEVEL_NAME16_8 = "待定2"
GNR_PROFLEVEL_NAME16_9 = "待定3"

GNR_PROFLEVEL_NAME17_0 = "习扇者"	
GNR_PROFLEVEL_NAME17_1 = "扇生"
GNR_PROFLEVEL_NAME17_2 = "扇士"
GNR_PROFLEVEL_NAME17_3 = "扇侠"
GNR_PROFLEVEL_NAME17_4 = "扇将"
GNR_PROFLEVEL_NAME17_5 = "扇王"
GNR_PROFLEVEL_NAME17_6 = "扇仙"	
GNR_PROFLEVEL_NAME17_7 = "逸扇使"
GNR_PROFLEVEL_NAME17_8 = "待定2"
GNR_PROFLEVEL_NAME17_9 = "待定3"

GNR_PROFLEVEL_NAME18_0 = "习弓者"	
GNR_PROFLEVEL_NAME18_1 = "弓手"
GNR_PROFLEVEL_NAME18_2 = "弓骑"
GNR_PROFLEVEL_NAME18_3 = "弓尉"
GNR_PROFLEVEL_NAME18_4 = "弓将"
GNR_PROFLEVEL_NAME18_5 = "弓王"
GNR_PROFLEVEL_NAME18_6 = "弓神"	
GNR_PROFLEVEL_NAME18_7 = "天弓使"
GNR_PROFLEVEL_NAME18_8 = "待定2"
GNR_PROFLEVEL_NAME18_9 = "待定3"

--2装备
TEXT_EQUIPHELP_CANCHANGE = "当前等级可更换新装备的部位：%s"
TEXT_EQUIPHELP_NOWEQUIP = "可装备的^ff9090%s^ffffff为：%s。"
TEXT_EQUIPHELP_NEXTEQUIP = "下一阶%s需要%s级才可装备。"

GNR_EQUIPLEVEL_NAME0 = "初阶"
GNR_EQUIPLEVEL_NAME1 = "一阶"
GNR_EQUIPLEVEL_NAME2 = "二阶"
GNR_EQUIPLEVEL_NAME3 = "三阶"
GNR_EQUIPLEVEL_NAME4 = "四阶"
GNR_EQUIPLEVEL_NAME5 = "五阶"
GNR_EQUIPLEVEL_NAME6 = "六阶"
GNR_EQUIPLEVEL_NAME7 = "七阶"
GNR_EQUIPLEVEL_NAME8 = "八阶"
GNR_EQUIPLEVEL_NAME9 = "九阶"
GNR_EQUIPLEVEL_NAME10 = "十阶"

GNR_EQUIPGRID_NAME1 = "武器"
GNR_EQUIPGRID_NAME2 = "衣服"
GNR_EQUIPGRID_NAME3 = "护肩"
GNR_EQUIPGRID_NAME4 = "护腿"
GNR_EQUIPGRID_NAME5 = "鞋"
GNR_EQUIPGRID_NAME6 = "腰带"
GNR_EQUIPGRID_NAME7 = "护腕"

--4活动
TEXT_MEETHELP_CONTENT1 = "^ff9090%s^ffffff：%s"
TEXT_MEETHELP_CONTENT2 = "你可以与#%d#对话参与该活动。"
TEXT_MEETHELP_NIL = "目前没有你可以参与的日常活动。"

TEXT_MEET_NAME1 = "舌战群儒"
TEXT_MEET_NAME2 = "千里追凶"
TEXT_MEET_NAME3 = "仁义任务"
TEXT_MEET_NAME4 = "每日寻宝"
TEXT_MEET_NAME5 = "每日钓鱼"
TEXT_MEET_NAME6 = "周末钓鱼大赛"
TEXT_MEET_NAME7 = "乐府采风"
TEXT_MEET_NAME8 = "五丈原争夺战"

TEXT_MEET_NOTE1 = "每日的19:30开始，在线即可收到邀请。"
TEXT_MEET_NOTE2 = "每日从0点开始，每隔2小时开始一次。"
TEXT_MEET_NOTE3 = "全天开放。"
TEXT_MEET_NOTE4 = "每天一次。"
TEXT_MEET_NOTE5 = "全天开放。"
TEXT_MEET_NOTE6 = "每周日的19:00-22:00。"
TEXT_MEET_NOTE7 = "每天一次。"
TEXT_MEET_NOTE8 = "必须加入魏、蜀、吴三个阵营中的任意一个。"

--5生产
TEXT_PRODUCEHELP_SKILLINFO = "^ff9090%s^ffffff：%s%s"
TEXT_PRODUCEHELP_FIRSTINFO = "需要到%d级才可学习。"
TEXT_PRODUCEHELP_LEARNINFO = "\r            目前可学习级别：%s，学习NPC：#%d#。"

--6战场
TEXT_BATTLEHELP_TITLE = "^ff9090适合你当前等级的战场^ffffff："
TEXT_BATTLEHELP_BATTLETYPE1 = "征战"
TEXT_BATTLEHELP_BATTLETYPE2 = "演义"
TEXT_BATTLEHELP_BATTLETYPE3 = "无双"
TEXT_BATTLEHELP_BATTLETYPE4 = "外传"
TEXT_BATTLEHELP_BATTLEINFO = "    %d级%s战场：%s。"
TEXT_BATTLEHELP_NIL = "目前没有适合你加入的战场。"

TEXT_BATTLE_NAME1 = "颍川之战"
TEXT_BATTLE_NAME2 = "濮阳之战"
TEXT_BATTLE_NAME3 = "汉军殿后战"
TEXT_BATTLE_NAME4 = "义兵积粮战"
TEXT_BATTLE_NAME5 = "落凤坡之战"
TEXT_BATTLE_NAME6 = "荆襄撤退战"
TEXT_BATTLE_NAME7 = "张梁讨伐战"
TEXT_BATTLE_NAME8 = "西凉缭乱"
TEXT_BATTLE_NAME9 = "黄巾之乱"
TEXT_BATTLE_NAME10 = "虎牢关群英会"
TEXT_BATTLE_NAME11 = "尚香传·骑卷香风"
TEXT_BATTLE_NAME12 = "吕布传·飞将回天"
TEXT_BATTLE_NAME13 = "曹操传·王陵鬼影"
TEXT_BATTLE_NAME14 = "刘备传·虎口脱险"
TEXT_BATTLE_NAME15 = "典韦传·恶来咆哮"
TEXT_BATTLE_NAME16 = "孙权传·铁葫芦记"
TEXT_BATTLE_NAME17 = "赵云传·龙跃长坂"
TEXT_BATTLE_NAME18 = "蒋干传·吴营盗书"
TEXT_BATTLE_NAME19 = "暗袭定军山"

--7官职
GNR_POSITION_LEVEL0 = "普通"
GNR_POSITION_LEVEL1 = "九品"
GNR_POSITION_LEVEL2 = "八品"
GNR_POSITION_LEVEL3 = "七品"
GNR_POSITION_LEVEL4 = "六品"
GNR_POSITION_LEVEL5 = "五品"
GNR_POSITION_LEVEL6 = "从四品"
GNR_POSITION_LEVEL7 = "正四品"
GNR_POSITION_LEVEL8 = "从三品"
GNR_POSITION_LEVEL9 = "正三品"

GNR_POSITION_TYPE0 = "军职"
GNR_POSITION_TYPE1 = "文官"
GNR_POSITION_TYPE2 = "武官"

GNR_POSITION_EXPLOIT1 = "文勋"
GNR_POSITION_EXPLOIT2 = "武勋"

TEXT_POSITION_NAME1 = "新兵"
TEXT_POSITION_NAME2 = "兵卒"
TEXT_POSITION_NAME3 = "兵长"
TEXT_POSITION_NAME4 = "军侯"
TEXT_POSITION_NAME5 = "校尉"
TEXT_POSITION_NAME6 = "都尉"
TEXT_POSITION_NAME7 = "裨将"
TEXT_POSITION_NAME8 = "偏将"
TEXT_POSITION_NAME9 = "鹰扬将军"
TEXT_POSITION_NAME10 = "伏波将军"
TEXT_POSITION_NAME11 = "讨虏将军"
TEXT_POSITION_NAME12 = "横野将军"
TEXT_POSITION_NAME13 = "典军中郎将"
TEXT_POSITION_NAME14 = "抚军中郎将"
TEXT_POSITION_NAME15 = "荡寇中郎将"
TEXT_POSITION_NAME16 = "建威中郎将"
TEXT_POSITION_NAME17 = "武卫中郎将"
TEXT_POSITION_NAME18 = "羽林中郎将"
TEXT_POSITION_NAME19 = "虎贲中郎将"
TEXT_POSITION_NAME20 = "五官中郎将"
TEXT_POSITION_NAME21 = "前将军"
TEXT_POSITION_NAME22 = "后将军"
TEXT_POSITION_NAME23 = "左将军"
TEXT_POSITION_NAME24 = "右将军"
TEXT_POSITION_NAME25 = "平东将军"
TEXT_POSITION_NAME26 = "平南将军"
TEXT_POSITION_NAME27 = "平西将军"
TEXT_POSITION_NAME28 = "平北将军"
TEXT_POSITION_NAME29 = "书佐"
TEXT_POSITION_NAME30 = "功曹"
TEXT_POSITION_NAME31 = "主簿"
TEXT_POSITION_NAME32 = "别驾"
TEXT_POSITION_NAME33 = "长史"
TEXT_POSITION_NAME34 = "太乐令"
TEXT_POSITION_NAME35 = "太史令"
TEXT_POSITION_NAME36 = "太医令"
TEXT_POSITION_NAME37 = "太仓令"
TEXT_POSITION_NAME38 = "谒者仆射"
TEXT_POSITION_NAME39 = "谏议大夫"
TEXT_POSITION_NAME40 = "太子洗马"
TEXT_POSITION_NAME41 = "散骑常侍"
TEXT_POSITION_NAME42 = "中散大夫"
TEXT_POSITION_NAME43 = "太中大夫"
TEXT_POSITION_NAME44 = "尚书仆射"
TEXT_POSITION_NAME45 = "御史中丞"
TEXT_POSITION_NAME46 = "太子少傅"
TEXT_POSITION_NAME47 = "中书令"
TEXT_POSITION_NAME48 = "尚书令"
TEXT_POSITION_NAME49 = "侍中"
TEXT_POSITION_NAME50 = "太子太傅"
TEXT_POSITION_NAME51 = "执金吾"
TEXT_POSITION_NAME52 = "将作大匠"
TEXT_POSITION_NAME53 = "水衡都尉"

TEXT_POSITIONHELP_INFO = "%s%s：^ff9090%s^ffffff\r（%s%s%s）\r"
TEXT_POSITIONHELP_NEEDEXPLOIT = "需要%s值%d，"
TEXT_POSITIONHELP_USEEXPLOIT = "消耗功勋%d，"
TEXT_POSITIONHELP_NPCINFO = "官职NPC：#%d#"
TEXT_POSITIONHELP_NIL = "目前没有适合你加入的战场。"

--游戏已开放信息--
--等级上限
Max_Level = 60
--职业等级上限
Max_ProfLevel = 61
--可以选副职业的最低主职业等级
SelSubLv = 52	
--开始获得专精点数的最低副职业等级
DowerSubLv = 37	
--已开放装备为几阶（0为初阶，1为一阶）
Max_EquipLevel = 6
--已开放官品的level（参考position_desc.lua，军队为0，九品为1）
Max_PositionLevel = 9

--未整理文本
TEXT_ENTERWAIT = "您正在进入赤壁……请稍候";  


