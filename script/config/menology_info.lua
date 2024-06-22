------------------------------Menology event definition-----------------------------

-- id:		本文档内容每一项独立id
-- iconpath1: 图标路径1
-- iconpath2: 图标路径2
-- backgroud1: 背景路径1(日历日期背景边框)
-- backgroud2: 背景路径2(日历日期背景底图)
-- rewardtype:	类别掩码(二进制位表示奖励类型，最后边2位修为，接下来二位金钱，然后是物品，0-没有此类奖励，1，2，3-低，中，高奖励)
-- name: 名称-显示名称
-- maskinfo:	相关配置掩码：可策划定义（是否login提示、是否特殊任务...）
-- ismendisplay: 是否日历的对应日期显示此活动
-- mendisplaylevel: 在日历界面的显示优先级1,2,3...
-- taskid:	如果不是任务，填0
-- validtime:时间段
-- levelreq: 等级要求
-- needreborn:是否要求飞升
-- permitcount:次数限制
-- cond:条件
-- volidday: 活动时间,周几
-- line: 线路
-- npc: 相关NPC
-- istaskaward: 是否读取任务id对应的任务奖励
-- awardiconpath1: 奖励内容1
-- awarddesc1: 奖励内容1文字描述
-- awardiconpath2: 奖励内容2
-- awarddesc2: 奖励内容2文字描述
-- awardiconpath3: 奖励内容3
-- awarddesc3: 奖励内容3文字描述
-- commendlevel: 推荐等级,预留
-- award_type：奖励类型（1经验，2属性，3属性道具，4活跃度，5荣誉，6载具，7预留1，8预留2）
-- reborn_judge：飞升限制（-1不限制，0限制为未飞升，1限制为飞升后）

-- istasknpc: 相关NPC处是否读取taskid对应的任务NPC:0,1
-- descnpc:	如果不读取任务npc,手动填写描述
-- descmapid: 如果不读取任务npc,手动填写寻径地图id
-- descpos: 如果不读取任务npc,手动填写寻径坐标
-- istransport: 是否使用飞天传送,是则读取task的传送功能
-- desc:内容描述

-- monsterlevel: 怪物等级
-- reborncycle: 刷新周期
-- relacontroler: 关联控制器id
-- needrolenumber: 需要人数
-- ecmpath: 怪物3D形象路径 

MenologyRecommend = {}
--[[
MenologyRecommend['Trục Ba Thánh Linh'] = 
			{ 
				id=3, iconpath1="逐波圣灵.dds", iconpath2="逐波圣灵大.dds", iconpath3="", 
				rewardtype=203, maskinfo=0, name="Trục Ba Thánh Linh", ismendisplay=false, mendisplaylevel=3,
				validtime="11:50-12:00", levelreq="45-160", needreborn=false, permitcount=1, cond="^ffcb4a10金", 
				validday="1,2,3,4,5,6,7", line="Kênh 15", npc="Thượng Cổ Kỳ Nhân", istaskaward=false, taskid="14607",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffThông thường nhận được ^ffcb4a20 Thái Cực Kim Đan\r^ffffffNếu thắng thì nhận được thêm ^ffcb4a100 Thái Cực Kim Đan^ffffff。"}, 
					{awardid=21345, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aTạo Hóa Châu\r\r^ffffffNếu thắng nhận được 200 Tạo Hóa Châu^ffffff。"}, 
				}, 
				commendlevel=4, istasknpc=false, descnpc="Thượng Cổ Kỳ Nhân", descmapid=401, descpos="433, 481, 389", istransport=true, 
				desc="^ffffff       Hàng ngày 11：50 tại Hà Dương Thành ^ffcb4a Thượng Cổ Kỳ Nhân ^ffffff Tiêu Phí ^ffcb4a10 Vàng^ffffff mua Thần Thú Lệnh Bài，mua Thần Thú Lệnh Bài, truyền tống tới đáy biển Lưu Ba xem đua thần thú.Hoạt động kết thúc tới chỗ thần thú đạt quán quân nhận ^ffcb4a20 Thái Cực Kim Đan^ffffffNếu lệnh bài đã mua chính là thần thú quán quân thì sẽ được thần thú tặng ^ffcb4a100 Thái Cực Kim Đan^ffffff，^ffcb4a200 Tạo Hóa Châu^ffffff。\r"
			}
						--]]
MenologyRecommend['Thi Câu Cá']=
			{ 
				id=4, iconpath1="钓鱼大赛.dds", iconpath2="钓鱼大赛大.dds", iconpath3="", 
				rewardtype=103, maskinfo=0, name="Thi Câu Cá", ismendisplay=false, mendisplaylevel=4, 
				validtime="18:00-19:00", levelreq="45-160", needreborn=false, permitcount=1, cond="^ffcb4aPhiếu Đăng Ký", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-5", npc="Vân Du Tứ Hải Ngư Phu", istaskaward=false, taskid="5556", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffCăn cứ vào vật phẩm câu được để hoàn thành nhiệm vụ \rtương ứng sẽ nhận được các phần thưởng kim đan khác nhau."}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aDanh hiệu đặc biệt\r\r^fCăn cứ vào vật phẩm câu được để hoàn thành nhiệm vụ \rtương ứng sẽ nhận được các danh hiệu khác nhau."}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Vân Du Tứ Hải Ngư Phu", descmapid=401, descpos="401, 480, 457", istransport=true, 
				desc="^ffffff       Tại Lưu Ba tổ chức Thi Câu Cá, người chơi hãy dùng Phiếu Báo Danh tới chỗ Vân Du Tứ Hải Ngư Phu đổi lấy ^ffcb4amồi câu^ffffff, sau đó mau chóng tới Lưu Ba tham gia cuộc thi."
			}
MenologyRecommend['Lệ Khí Nguy Cơ']=
			{ 
				id=5, iconpath1="戾气危机.dds", iconpath2="戾气危机大.dds", iconpath3="", 
				rewardtype=002, maskinfo=0, name="Lệ Khí Nguy Cơ", ismendisplay=false, mendisplaylevel=5, 
				validtime="18:00-20:00", levelreq="75-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Lục Tuyết Kỳ", istaskaward=false, taskid="12717", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi。\r Đơn số：25"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Lục Tuyết Kỳ", descmapid=2, descpos="403, 75, -192", istransport=true, 
				desc="^ffffff       Phía Thanh Vân Sơn đột nhiên xuất hiện dị tượng, từ chỗ ^ffcb4aThanh Vân Lục Tuyết Kỳ^ffffff được biết, Tổ sư từ đường ở Thanh Vân hậu sơn đặt ^ffcb4a3 Trận Pháp Thạch Trụ^ffffff để trấn áp lệ khí. Hiện giờ Thạch Trụ bị tổn hại nhiều, trận pháp dần dần mất hiệu quả. Mong mọi người giúp tu bổ 3 Thạch Trụ, khôi phục sức mạnh của trận pháp, sẽ nhận được  ^ffcb4a25 Thái Cực Kim Đan^ffffff。"
			}
--[[
MenologyRecommend['Tuyết Nhân Tổng Động Viên']=
			{ 
				id=6, iconpath1="雪人总动员.dds", iconpath2="雪人总动员大.dds", iconpath3="icon\\menology_snowman.tga", 
				rewardtype=200, maskinfo=0, name="Tuyết Nhân Tổng Động Viên", ismendisplay=true, mendisplaylevel=6, 
				validtime="18:45-21:45", levelreq="60-160", needreborn=false, permitcount=1, cond=" ", 
				validday="7", line="Kênh 15", npc="Côn Luân Tiên Tử", istaskaward=false, taskid="10595", 
				award=
				{
					{awardid=16385, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aThiên thượng thiên hạ, thông tồn thông \rthủ. Có thể tới chỗ Thanh Viên Thương Khố \rLão Bản Tiền Đa Đa hoặc \rTuần Thiên Hữu Đô Úy đổi lấy các \rphần thưởng phong phú"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Côn Luân Tiên Tử", descmapid=10, descpos="-194, 123, 355", istransport=true, 
				desc="^ffffff       Từ chỗ ^ffcb4aCôn Luân Tiên Tử^ffffff nhận nhiệm vụ, có thể chọn tùy 1 Tuyết Nhân để đánh cược, nếu thắng sẽ nhận được ^ffcb4aCàn Khôn Thông Bảo^ffffff với số lượng tương ứng."
			}
			--]]
MenologyRecommend['Tân Khoa Thí Luyện']=
			{ 
				id=7, iconpath1="新科试炼.dds", iconpath2="新科试炼大.dds", iconpath3="", 
				rewardtype=203, maskinfo=0, name="Tân Khoa Thí Luyện", ismendisplay=false, mendisplaylevel=7, 
				validtime="19:00-19:15", levelreq="1-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Hệ thống định giờ khởi động", istaskaward=false, taskid="12868", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao kinh nghiệm\rĐơn số: Trả lời câu hỏi, mỗi 10 Điểm 5 kim đan"}, 
					{awardid=19252, awardiconpath="", awarddesc=""}, 
					{awardid=19253, awardiconpath="", awarddesc=""}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Hệ thống định giờ khởi động", descmapid=-1, descpos="9999, 0, 9999", istransport=false, 
				desc="^ffffff       Mỗi ngày đúng ^ffcb4a19:00^ffffff, người chơi sẽ nhận được lời mời của hoạt động ^ffcb4a“Tân Khoa Thí Luyện”^ffffff. Tiếp nhận lời mời, tham dự thí luyện để nhận được nhiều kinh nghiệm và kiến thức.\r       ^ffcb4aTop 10^ffffff Tân Khoa Thí Luyện sẽ nhận được ^ffcb4aHiên Viên Thông Bảo^ffffff và các danh hiệu hiếm có."
			}
--[[			
MenologyRecommend['Tu Chân Tổng Động Viên']=
			{ 
				id=8, iconpath1="修真总动员.dds", iconpath2="修真总动员大.dds", iconpath3="icon\\menology_allcele.tga", 
				rewardtype=200, maskinfo=0, name="Tu Chân Tổng Động Viên", ismendisplay=true, mendisplaylevel=8, 
				validtime="19:00-22:00", levelreq="80-160", needreborn=false, permitcount=1, cond=" ", 
				validday="6", line="Kênh 1-15", npc="A Phúc", istaskaward=false, taskid="11339", 
				award=
				{
					{awardid=16385, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aThiên thượng thiên hạ, thông tồn thông \rthủ. Có thể tới chỗ Thanh Viên Thương Khố \rLão Bản Tiền Đa Đa hoặc \rTuần Thiên Hữu Đô Úy đổi lấy các \rphần thưởng phong phú"}, 
					{awardid=19253, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aThiên thượng thiên hạ, thông tồn thông \rthủ. Có thể tới chỗ Thanh Viên Thương Khố \rLão Bản Tiền Đa Đa hoặc \rTuần Thiên Hữu Đô Úy đổi lấy các \rphần thưởng phong phú"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="A Phúc", descmapid=2, descpos="179, 0, 108", istransport=true, 
				desc="^ffffff       Tại ^ffcb4aThanh Vân A Phúc^ffffff nhận nhiệm vụ, hoàn thành nhiệm vụ cần 5 Hồ Lô Ngào Đường đổi từ ^ffcb4aHổ Phách Băng Tinh^ffffff, nếu thành công nhận được phần thưởng 200 ^ffcb4aHiên Viên Thông Bảo^ffffff"
			}
--]]			
--[[
MenologyRecommend['Truy Phong Thánh Linh']=
			{ 
				id=9, iconpath1="追风圣灵.dds", iconpath2="追风圣灵大.dds", iconpath3="", 
				rewardtype=203, maskinfo=0, name="Truy Phong Thánh Linh", ismendisplay=false, mendisplaylevel=9, 
				validtime="19:20-19:30", levelreq="90-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", line="Kênh 15", npc="Thượng Cổ Kỳ Nhân", istaskaward=false, taskid="14989", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffThông thường nhận được ^ffcb4a20 Thái Cực Kim Đan\r^ffffffNếu thắng thì nhận được thêm ^ffcb4a100 Thái Cực Kim Đan^ffffff。"}, 
					{awardid=21345, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aTạo Hóa Châu\r\r^ffffffNếu thắng nhận được 200 Tạo Hóa Châu^ffffff。"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Thượng Cổ Kỳ Nhân", descmapid=401, descpos="433, 481, 389", istransport=true, 
				desc="^ffffff       Hàng ngày vào lúc 19:20 tại Hà Dương ^ffcb4aThượng Cổ Kỳ Nhân^ffffff tiêu phí ^ffcb4a10 Vàng^ffffff mua Thần Thú Lệnh Bài, truyền tống tới Phần Hương Cốc xem đua Thần Thú. Hoạt động kết thúc, có thể nhận được từ chỗ Thần Thú Vô Địch ^ffcb4a20 Thái Cực Kim Đan ^ffffff. Nếu Lệnh Bài may mắn là Thần Thú Vô Địch thì sẽ được Thần Thú tặng ^ffcb4a100 Thái Cực Kim Đan^ffffff, ^ffcb4a200 Tạo Hóa Châu ^ffffff.\r       ^ff0000Chú ý: Trong quá trình Thần Thú đua, cần phải quan sát toàn bộ, nếu không có thể phát sinh sự cố Thần Thú đi mất.^ffffff"
			}
						--]]
MenologyRecommend['Thiên Hạ Hội Võ']=
			{ 
				id=10, iconpath1="天下会武.dds", iconpath2="天下会武大.dds", iconpath3="icon\\menology_huiwu.tga", 
				rewardtype=003, maskinfo=0, name="Thiên Hạ Hội Võ", ismendisplay=true, mendisplaylevel=10, 
				validtime="19:30-21:10", levelreq="90-134", needreborn=false, permitcount=1, cond=" ", 
				validday="2, 3", line="Kênh 1-15", npc="Tử Vi Đạo Quang Nguyên Soái", istaskaward=false, taskid="9620, 9629, 10529, 9638, 9647, 10530", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="Hoàn thành Hội Võ sẽ nhận được phần thưởng kinh nghiệm phong phú"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Tử Vi Đạo Quang Nguyên Soái", descmapid=-1, descpos="535, 476, 405", istransport=false, 
				desc="^ffffff       Tại ^ffcb4aHà Dương Tử Vi Đế Quân^ffffff nhận nhiệm vụ Thiên Hạ Hội Võ, sử dụng ^ffcb4aLục Đạo Pháp Liên^ffffff có thể tự do lựa chọn trận doanh.\r       Hoàn thành hội võ sẽ nhận được rất nhiều kinh nghiệm"
			}
MenologyRecommend['Kim Đan Chi Thuật']=
			{ 
				id=11, iconpath1="金丹之术.dds", iconpath2="金丹之术大.dds", iconpath3="", 
				rewardtype=202, maskinfo=0, name="Kim Đan Chi Thuật", ismendisplay=false, mendisplaylevel=11, 
				validtime="19:30-21:30", levelreq="80-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Bão Phác Tử", istaskaward=false, taskid="13091", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\rSau khi nhận được tự động nâng cao kinh nghiệm.\rSố lượng: 25"}, 
					{awardid=21510, awardiconpath="item1.dds", awarddesc=""}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Bão Phác Tử", descmapid=2, descpos="96, 64, 203", istransport=true, 
				desc="^ffffff       Tại Thanh Vân tổ chức hoạt động luyện đơn quy mô lớn, người chơi chỗ ^ffcb4aThanh Vân Bão Phác Tử^ffffff nhận nhiệm vụ.\r       Hoàn thành nhiệm vụ có thể nhận được ^ffcb4aToái Tuyết Tinh Mang^ffffff và ^ffcb4aThái Cực Kim Đan^ffffff.\r       50 Toái Tuyết Tinh Manh có thể tới chỗ Lục Tuyết Kỳ đổi đạo cụ ^ffcb4aTuyết Chi Tinh^ffffff, có tác dụng cường hóa hạng liên (Thiên Tội, Long Khiếu, Long Tương, Thần Đạo, Thần Phạt, Thần Tàng)."
			}
--[[MenologyRecommend['Thú Yêu Tổng Động Viên']=
			{ 
				id=12, iconpath1="兽妖总动员.dds", iconpath2="兽妖总动员大.dds", iconpath3="icon\\menology_monsterattack.tga", 
				rewardtype=200, maskinfo=0, name="Thú Yêu Tổng Động Viên", ismendisplay=true, mendisplaylevel=12, 
				validtime="19:45-21:00", levelreq="60-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1", line="Kênh 1-15", npc="Pháp Giác", istaskaward=false, taskid="11262", 
				award=
				{
					{awardid=16385, awardiconpath="", awarddesc=""}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Pháp Giác", descmapid=3, descpos="-121, 0, -123", istransport=true, 
				desc="^ffffff       Bảo vệ Thiên Âm Thiên Phật Tháp, Trấn Yêu Tháp, thành công ngăn chặn 3 đợt tấn công sẽ nhận được giải thưởng 60 ^ffcb4aCàn Khôn Thông Bảo^ffffff, ^ffcb4aHuyết Ngọc^ffffff rơi ra từ quái vật cũng có thể đổi lấy 1 lượng Thông Bảo nhất định."
			}--]]
MenologyRecommend['Tinh Tú Bắc Đẩu']=
			{ 
				id=13, iconpath1="星宿北斗.dds", iconpath2="星宿北斗大.dds", iconpath3="icon\\menology_star.tga", 
				rewardtype=003, maskinfo=0, name="Tinh Tú Bắc Đẩu", ismendisplay=true, mendisplaylevel=13, 
				validtime="20:30-22:30", levelreq="30-160", needreborn=false, permitcount=1, cond=" ", 
				validday="4, 5, 7", line="Kênh 1-15", npc="Tinh Tú Khiêu Chiến Sứ Giả", istaskaward=false, taskid="5469, 5470, 5471, 5472, 9046, 9047, 9048", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều kinh nghiệm\r\r^ffffffSau khi hoàn thành nhiệm vụ sẽ nhận được lượng lớn kinh nghiệm"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Tinh Tú Khiêu Chiến Sứ Giả", descmapid=401, descpos="500, 485, 382", istransport=true, 
				desc="^ffffff       Tại bản đồ tương ứng với các khoảng cấp độ, tìm Khiêu Chiến Sứ Giả nhận nhiệm vụ đi tiêu diệt các Tinh Túc Quái theo yêu cầu, tiêu diệt 7 Tinh Túc Quái sẽ nhận được giải thưởng cao nhất。"
			}
MenologyRecommend['Bát Cực Chiến Hồn']=
			{ 
				id=14, iconpath1="八极战魂.dds", iconpath2="八极战魂大.dds", iconpath3="", 
				rewardtype=202, maskinfo=0, name="Bát Cực Chiến Hồn", ismendisplay=false, mendisplaylevel=14, 
				validtime="0:00-24:00", levelreq="1-160", needreborn=false, permitcount=-1, cond=" ", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Phong Ấn Thạch", istaskaward=false, taskid="22314", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
					{awardid=21345, awardiconpath="item1.dds", awarddesc=""}, 
					{awardid=21154, awardiconpath="item1.dds", awarddesc=""}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Phong Ấn Thạch", descmapid=2, descpos="93, 64, 208", istransport=true, 
				desc="^ffffff       Hoàn thành nhiệm vụ ^ffcb4aQuốc Gia Bảo Tàng^ffffff hoặc ^ffcb4aThiên Tru Dự Lệnh^ffffff có cơ hội nhận được đạo cụ nhiệm vụ ^ffcb4aKhởi Huyền Ấn^ffffff, có thể dùng để giải trừ phong ấn của Thanh Vân, ^ffcb4aBát Cực Trấn Thạch^ffffff, và đổi được ^ffcb4aBát Cực Nguyên Châu^ffffff, khi Phong Ấn Thạch thu thập đủ số lượng  ^ffcb4aKhải Huyền Ấn^ffffff thì hiệu quả phong ấn biến mất, có thể triệu hoán chiến hồn trong Phong Ấn Thạch.\r       Sau khi chiến hồn bị tiêu diệt thì có thể tới chỗ ^ffcb4aThanh Vân Hỗn Nguyên Chân Quân^ffffff dùng ^ffcb4aBát Cực Nguyên Châu^ffffff lĩnh thưởng."
			}--]]
MenologyRecommend['Thiên Hành Giả']=
			{ 
				id=15, iconpath1="天行者.dds", iconpath2="天行者大.dds", iconpath3="", 
				rewardtype=003, maskinfo=0, name="Thiên Hành Giả", ismendisplay=false, mendisplaylevel=15, 
				validtime="0:00-24:00", levelreq="45-160", needreborn=false, permitcount=1, cond="^ffcb4a飞剑", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Thiên Hành Giả", istaskaward=false, taskid="12193", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Thiên Hành Giả", descmapid=401, descpos="437, 526, 607", istransport=true, 
				desc="^ffffff       Hà Dương ^ffcb4aThiên Hành Giả^ffffff ban tặng cơ hội hiếm cố để nhận được lượng lớn kinh nghiệm.\r       Ngự giá ^ffcb4aPhi Kiếm^ffffff tìm gặp Phi Hành Giả trên bầu trời trong xanh."
			}
MenologyRecommend['Hành Thiên']=
			{ 
				id=16, iconpath1="行天.dds", iconpath2="行天大.dds", iconpath3="", 
				rewardtype=003, maskinfo=0, name="Hành Thiên", ismendisplay=false, mendisplaylevel=16, 
				validtime="0:00-24:00", levelreq="80-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Thiên Hành Giả", istaskaward=false, taskid="12844", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Thiên Hành Giả", descmapid=401, descpos="437, 526, 607", istransport=true, 
				desc="^ffffff       Hàng ngày sau khi hoàn thành nhiệm vụ Thiên Hành Giả, sẽ nhận được đạo cụ ^ffcb4a“Hành Thiên Chi Chứng”^ffffff, dựa vào “Hành Thiên Chi Chứng” và giao nộp ^ffcb4a25 vàng^ffffff có thể ở chỗ Phi Hành Giả nhận nhiệm vụ tiếp theo với giải thưởng kinh nghiệm lớn ^ffcb4a“Hành Thiên”^ffffff.\r       Hoàn thành nhiệm vụ có thể nhận được phần thưởng kinh nghiệm của ^ffcb4a50 Thái Cực Kim Đan^ffffff."
			}
MenologyRecommend['Trung Liệt Bia']=
			{ 
				id=17, iconpath1="忠烈碑.dds", iconpath2="忠烈碑大.dds", iconpath3="", 
				rewardtype=002, maskinfo=0, name="Trung Liệt Bia", ismendisplay=false, mendisplaylevel=17, 
				validtime="0:00-24:00", levelreq="50-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Trung Liệt Bia", istaskaward=false, taskid="2237, 2276, 2277, 6204, 6205, 7464, 7465", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều kinh nghiệm\r\r^ffffffSau khi hoàn thành nhiệm vụ sẽ nhận được lượng lớn kinh nghiệm"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Trung Liệt Bia", descmapid=4, descpos="154, 0, 369", istransport=true, 
				desc="^ffffff       Mỗi ngày có thể tới Lưu Ba ^ffcb4aTrung Liệt Bia^ffffff tiến hành tế điện.\r       Mỗi lần cần 2 slot kì trân, hoàn thành nhiệm vụ nhận được lượng lớn kinh nghiệm"
			}
MenologyRecommend['Cảnh Ngưỡng Tiên Hiền']=
			{ 
				id=18, iconpath1="景仰先贤.dds", iconpath2="景仰先贤大.dds", iconpath3="", 
				rewardtype=002, maskinfo=0, name="Cảnh Ngưỡng Tiên Hiền", ismendisplay=false, mendisplaylevel=18, 
				validtime="0:00-24:00", levelreq="120-160", needreborn=false, permitcount=1, cond="^ffcb4a15 Vàng", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Thẩm Mặc Nho", istaskaward=false, taskid="12847", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi。\r Đơn số：25"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Thẩm Mặc Nho", descmapid=401, descpos="418, 487, 386", istransport=true, 
				desc="^ffffff       Mỗi ngày có thể tới chỗ ^ffcb4aHà Dương Thẩm Mặc Nho^ffffff giao nộp ^ffcb4a15 vàng ^ffffff để lĩnh nhiệm vụ có phần thưởng kinh nghiệm cao là ^ffcb4a“Cảnh Ngưỡng Tiên Hiền”^ffffff.\r       Hoàn Thành nhiệm có thể nhận được giải thưởng kinh nghiệm của ^ffcb4a25 Thái Cực Kim Đan^ffffff"
			}
MenologyRecommend['Triệt Dạ Bất Miên']=
			{ 
				id=19, iconpath1="彻夜不眠.dds", iconpath2="彻夜不眠大.dds", iconpath3="", 
				rewardtype=003, maskinfo=0, name="Triệt Dạ Bất Miên", ismendisplay=false, mendisplaylevel=19, 
				validtime="0:00-24:00", levelreq="60-150", needreborn=false, permitcount=-1, cond=" ", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Danh Y các nơi cấp 60 trở lên", istaskaward=false, taskid="11586, 11588, 11590, 11592, 11595, 11598, 11501, 11618, 11635, 11638, 11647, 11654, 11674, 11678, 11681, 11739, 11746, 11754, 11783, 11791, 11794, 11796, 11798, 11800", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP\r\r^ffffffCưn cứ vào số lượng quái giết được để nhận exp."}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Danh Y các nơi cấp 60 trở lên", descmapid=-1, descpos="9999, 0, 9999", istransport=false, 
				desc="^ffffff       Sau cấp 60, có thể tới Y Sư ở mỗi bản đồ lĩnh nhiệm vụ ^ffcb4aCả Đêm Không Ngủ^ffffff tương ứng với cấp độ.\r       Nhiệm vụ có hình thức tính thời gian, căn cứ vào số lượng giết quái để tính kinh nghiệm.\r       Khi thời gian chưa kết thúc có thể trực tiếp trả nhiệm vụ để nhận kinh nghiệm, hoặc đợi thời gian nhiệm vụ kết thúc thì tự động nhận được phần thưởng kinh nghiệm tương ứng."
			}
MenologyRecommend['Sư Môn Anh Hùng Thiếp']=
			{ 
				id=20, iconpath1="师门英雄帖.dds", iconpath2="师门英雄帖大.dds", iconpath3="", 
				rewardtype=002, maskinfo=0, name="Sư Môn Anh Hùng Thiếp", ismendisplay=false, mendisplaylevel=20, 
				validtime="0:00-24:00", levelreq="30-160", needreborn=false, permitcount=-1, cond="^ffcb4a英雄帖", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Sứ Giả Môn Phái", istaskaward=false, taskid="3162, 3159, 3165, 3168, 11682, 3174, 3171, 3177, 3180, 11689, 3186, 3183, 3189, 3192, 11696, 3858, 3855, 3861, 3865, 11703, 5628, 5538, 5625, 5631, 11710, 5652, 5634, 5637, 5655, 11717, 7614, 7611, 7617, 7620, 11724, 7660, 7657, 7663, 7666, 11734", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao kinh nghiệm."}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Sứ Giả Môn Phái", descmapid=-1, descpos="9999, 0, 9999", istransport=false, 
				desc="^ffffff       Bắt đầu từ Thiên Âm, khi điểm cống hiến bản môn của bạn đủ cao thì có thể tới chỗ Môn Phái Sứ Giả của bản môn để Anh Hùng Thiếp với các cấp độ khác nhau.\r       Hoàn thành nhiệm vụ trên Anh Hùng Thiếp sẽ nhận được Phát Quang Anh Hùng Thiếp. Mang tới chỗ Môn Phái Sứ Giả để đổi lấy phần thưởng kinh nghiệm. (Chỉ cần trên người có Kim Tự Anh Hùng Thiếp, hàng ngày có thể hoàn thành nhiệm vụ nhiều lần)"
			}
MenologyRecommend['Phá Hung Chú']=
			{ 
				id=21, iconpath1="破凶咒.dds", iconpath2="破凶咒大.dds", iconpath3="", 
				rewardtype=003, maskinfo=0, name="Phá Hung Chú", ismendisplay=false, mendisplaylevel=21, 
				validtime="0:00-24:00", levelreq="30-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Truyền Công Sứ Giả", istaskaward=false, taskid="8667, 8669, 5182, 5184, 8668, 5183, 5181, 8670", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aSau khi hoàn thành nhận được phần thưởng kinh nghiệm lớn."}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Truyền Công Sứ Giả", descmapid=401, descpos="500, 485, 367", istransport=true, 
				desc="^ffffff       Nhiệm vụ trừ hung chú của Truyền Công Sứ Giả. \r       Tiêu diệt  ^ffcb4aHung Chú Quái^ffffff trên các bản đồ để nhận được phần thưởng kinh nghiệm lớn."
			}
MenologyRecommend['Kiến Công Lập Sự']=
			{ 
				id=22, iconpath1="建功立事.dds", iconpath2="建功立事大.dds", iconpath3="", 
				rewardtype=002, maskinfo=0, name="Kiến Công Lập Sự", ismendisplay=false, mendisplaylevel=22, 
				validtime="0:00-24:00", levelreq="50-160", needreborn=false, permitcount=1, cond="^ffcb4a20 Vàng", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Quản Lý Bang Hội", istaskaward=false, taskid="12856", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Quản Lý Bang Hội", descmapid=401, descpos="428, 485, 264", istransport=true, 
				desc="^ffffff       Các thành viên đã gia nhập bang phái có thể tới Hà Dương ^ffcb4aSứ Giả Bang Hội Phương Hải Bình ^ffffff tiêu phí ^ffcb4a20 vàng^ffffff để nhận nhiệm vụ.\r       Hoàn thành chuỗi ủy thác. Cuối cùng sẽ nhận được phần thưởng kinh nghiệm của ^ffcb4a40 Thái Cực Kim Đan^ffffff."
			}
MenologyRecommend['Bảo Vật']=
			{ 
				id=23, iconpath1="宝物.dds", iconpath2="宝物大.dds", iconpath3="", 
				rewardtype=002, maskinfo=0, name="Bảo Vật", ismendisplay=false, mendisplaylevel=23, 
				validtime="0:00-24:00", levelreq="110-160", needreborn=false, permitcount=1, cond="^ffcb4a15 Vàng", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Ngô Dân Tài", istaskaward=false, taskid="12862", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Ngô Dân Tài", descmapid=401, descpos="402, 487, 366", istransport=true, 
				desc="^ffffff       Tới chỗ Hà Dương Ngô Dân Tài nhận nhiệm vụ ủy thác, cần trả ^ffcb4a15 vàng^ffffff.\r       Hoàn thành nhiệm vụ nhận được phần thưởng kinh nghiệm của ^ffcb4a30 Thái Cực Kim Đan^ffffff."
			}
---MenologyRecommend['Kim Đan Hữu Giá']=
---			{ 
---				id=24, iconpath1="金丹有价.dds", iconpath2="金丹有价大.dds", iconpath3="", 
---				rewardtype=002, maskinfo=0, name="Kim Đan Hữu Giá", ismendisplay=false, mendisplaylevel=24, 
---				validtime="0:00-24:00", levelreq="100-160", needreborn=false, permitcount=1, cond="^ffcb4a20 Vàng", 
---				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Hà Long Nghiêu", istaskaward=false, taskid="12861", 
---				award=
---				{
---					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
---				}, 
---				commendlevel=3, istasknpc=false, descnpc="Hà Long Nghiêu", descmapid=401, descpos="383, 484, 294", istransport=true, 
---				desc="^ffffff       在河阳的Hà long nghiêu处领取委托任务，需要支付^ffcb4a20金^ffffff。\r       完成任务后获得^ffcb4a50个Thái cực kim đan^ffffff的经验奖励。"
---			}
MenologyRecommend['Quốc Gia Bảo Tàng']=
			{ 
				id=25, iconpath1="国家宝藏.dds", iconpath2="国家宝藏大.dds", iconpath3="", 
				rewardtype=030, maskinfo=0, name="Quốc Gia Bảo Tàng", ismendisplay=false, mendisplaylevel=25, 
				validtime="0:00-24:00", levelreq="60-160", needreborn=false, permitcount=3, cond=" ", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Thiên Hành Giả", istaskaward=false, taskid="12310, 12311, 12312, 12313, 12314, 12315", 
				award=
				{
					{awardid=0, awardiconpath="金钱类奖励.dds", awarddesc="^ffcb4aVàng\r\rHoàn thành nhiệm vụ và hồi báo Thiên Hành Giả\r để nhận lượng tiền lớn."}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Thiên Hành Giả", descmapid=401, descpos="437, 526, 607", istransport=true, 
				desc="^ffffff       Theo yêu cầu của Thiên Hành Giả tiêu diệt Vân Du Thiên Tướng.\r       Hồi báo Thiên Hành Giả để nhận được lượng tiền lớn."
			}
MenologyRecommend['Tạo Hóa Chi Ngộ']=
			{ 
				id=26, iconpath1="造化之悟.dds", iconpath2="造化之悟大.dds", iconpath3="", 
				rewardtype=003, maskinfo=0, name="Tạo Hóa Chi Ngộ", ismendisplay=false, mendisplaylevel=26, 
				validtime="0:00-24:00", levelreq="135-160", needreborn=false, permitcount=-1, cond="^ffcb4a50 Vàng", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Hiên Viên Tổ Sư", istaskaward=false, taskid="19260", 
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm tạo hóa\r\r^ffffffDùng để tu luyện Tiên Ma Phật Tạo Hóa Kỹ Năng."}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Hiên Viên Tổ Sư", descmapid=2, descpos="41, 45, -433", istransport=true, 
				desc="^ffffff       Tới chỗ Thanh Vân^ffcb4a Hiên Viên Tổ Sư^ffffff tiến hành tu luyện ^ffcb4aĐạo Tâm^ffffff, ^ffcb4aPhật Duyên^ffffff, ^ffcb4aMa Tính^ffffff, cần tiêu hao 50 vàng, tiêu diệt quái vật lấy phần thưởng tạo hóa, nhiệm vụ này cần phải hoàn thành trong 24h."
			}
--[[			
MenologyRecommend['Thụy Tuyết Giai Niên']=
			{ 
				id=27, iconpath1="雪人总动员.dds", iconpath2="雪人总动员大.dds", iconpath3="", 
				rewardtype=203, maskinfo=0, name="Thụy Tuyết Giai Niên", ismendisplay=false, mendisplaylevel=27, 
				validtime="0:00-24:00", levelreq="60-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Tuyết Quốc Sứ Giả", istaskaward=false, taskid="22494", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
					{awardid=21345, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
					{awardid=32934, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
				}, 
				periods=
				{
					{starttime="2010-12-18", endtime="2010-12-25"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Tuyết Quốc Sứ Giả", descmapid=401, descpos="191, 164, 88", istransport=true, 
				desc="^ffffff       Mùa đông lạnh giá, tuyết trắng bay bay, Tuyết Quốc Sứ Giả xuất hiện tại Hà Dương Thành, nguyên lai ông ta tới đón lũ tiểu thỏ mà năm ngoái tặng cho Bích Dao về Tuyết Quốc, nhưng Tuyết Quốc Sứ Giả không cẩn thận để lũ thỏ chạy mất, các hiệp sĩ ở Hà Dương Thành hãy tới giúp Tuyết Quốc Sứ Giả đáng thương tìm về những chú thỏ con."
			
			}
--]]			

--[[			
MenologyRecommend['Thiên Trì Huyền Băng']=
			{ 
				id=28, iconpath1="雪人总动员.dds", iconpath2="雪人总动员大.dds", iconpath3="", 
				rewardtype=203, maskinfo=0, name="Thiên Trì Huyền Băng", ismendisplay=false, mendisplaylevel=27, 
				validtime="0:00-24:00", levelreq="60-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Tuyết Quốc Sứ Giả", istaskaward=false, taskid="22490", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
					{awardid=21345, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
				}, 
				periods=
				{
					{starttime="2010-12-18", endtime="2010-12-25"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Tuyết Quốc Sứ Giả", descmapid=401, descpos="191, 164, 88", istransport=true, 
				desc="^ffffff       Đối với vị sứ giả tới từ thế giới băng tuyết mà nói, Hà Dương Thành thật quá ư nóng nực. Tuyết Quốc Sứ Giả đáng thương sắp tan chảy ra rồi, hãy mau giúp Tuyết Quốc Sứ Giả tới Thiên Trì ở Côn Luân lấy 1 ít Côn Luân Huyền Băng để ông ta mát mẻ hơn. \r^ffcb4a       Phần thưởng: Nhận được 1 Tuyết Oa Oa thời hạn 1 ngày và 50 Thái Cực Kim Đan, 150 Tạo Hóa Châu. (Có tỷ lệ nhận được Tuyết Oa Oa vĩnh cửu)"
			}
--]]			
--[[			
MenologyRecommend['Tâm Nguyện Giáng Sinh']=
			{ 
				id=29, iconpath1="雪人总动员.dds", iconpath2="雪人总动员大.dds", iconpath3="", 
				rewardtype=300, maskinfo=0, name="Tâm Nguyện Giáng Sinh", ismendisplay=false, mendisplaylevel=27, 
				validtime="0:00-24:00", levelreq="60-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Tuyết Quốc Sứ Giả", istaskaward=false, taskid="22489", 
				award=
				{
					{awardid=22299, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
				}, 
				periods=
				{
					{starttime="2010-12-17", endtime="2010-12-24"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Tuyết Quốc Sứ Giả", descmapid=401, descpos="191, 164, 88", istransport=true, 
				desc="^ffffff       Tuyết Quốc Sứ Giả lo rằng lũ thỏ con chạy ra ngoài thành sẽ bị dã lang ăn thịt, hãy mau tới giúp ông ta."
			}
--]]						
--[[			
MenologyRecommend['ƯớcNguyện Giáng Sinh']=
			{ 
				id=30, iconpath1="雪人总动员.dds", iconpath2="雪人总动员大.dds", iconpath3="", 
				rewardtype=300, maskinfo=0, name="ƯớcNguyện Giáng Sinh", ismendisplay=false, mendisplaylevel=27, 
				validtime="0:00-24:00", levelreq="60-160", needreborn=false, permitcount=1, cond="^ffcb4a圣诞袜子", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Tuyết Quốc Sứ Giả", istaskaward=false, taskid="22488", 
				award=
				{
					{awardid=22307, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
				}, 
				periods=
				{
					{starttime="2010-12-17", endtime="2010-12-24"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Tuyết Quốc Sứ Giả", descmapid=401, descpos="191, 164, 88", istransport=true, 
				desc="^ffffff       Hãy mau đem những chiếc tất Noel treo lên cây thông Noel dễ thương trong Hà Dương Thành, tới đêm bình an, ông già Noel sẽ nhẹ nhàng đem bỏ 1 món quà bí mật vào trong chiếc tất, bên trong có gì? Tới đêm Noel chúng ta sẽ biết a."
			}
--]]			
--[[			
MenologyRecommend['Quà của Ông già Noel']=
			{ 
				id=31, iconpath1="雪人总动员.dds", iconpath2="雪人总动员大.dds", iconpath3="", 
				rewardtype=303, maskinfo=0, name="Quà của Ông già Noel", ismendisplay=false, mendisplaylevel=27, 
				validtime="0:00-24:00", levelreq="60-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Tuyết Quốc Sứ Giả", istaskaward=false, taskid="13658", 
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aBí mật"}, 
				}, 
				periods=
				{
					{starttime="2010-12-25", endtime="2010-12-25"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Tuyết Quốc Sứ Giả", descmapid=401, descpos="191, 164, 88", istransport=true, 
				desc="^ffffff       Merry X-Mas ! Hồi hộp quá ! Không biết ông già Noel sẽ tặng ta quà gì nhỉ? Mau tới cây thông Noel hái xuống xem nào."
			}
--]]			
--[[			
MenologyRecommend['Phi Thành Vật Nhiễu']=
			{ 
				id=33, iconpath1="宠物使者的委托.dds", iconpath2="宠物使者的委托大.dds", iconpath3="", 
				rewardtype=303, maskinfo=0, name="Phi Thành Vật Nhiễu", ismendisplay=false, mendisplaylevel=29, 
				validtime="0:00-24:00", levelreq="30-160", needreborn=false, permitcount=3, cond=" ", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Hà Dương Nguyệt Lão", istaskaward=false, taskid="23304", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
					{awardid=21345, awardiconpath="特殊物品奖励.dds", awarddesc=""}, 
					{awardid=42809, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aBí mật"}, 
				}, 
				periods=
				{
					{starttime="2011-3-8", endtime="2011-3-21"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Hà Dương Nguyệt Lão", descmapid=401, descpos="438, 479, 417", istransport=true, 
				desc="^ffffff       Người chơi cấp 30 trở lên, trong thời gian sự kiện có thể tìm Nguyệt Lão để nhận nhiệm vụ “Phi Thành Vật Nhiễu”，được Nguyệt Lão tặng “Uyên Ương Thú”，“Uyên Ương Thú” sẽ tự động tìm người có duyên với bạn, sau đó, từ miệng “Uyên Ương Thú”sẽ nhả ra “Uyên Ương Châu” bên trong chứa vật phẩm Nguyệt Lão yêu cầu, đem giao cho Nguyệt Lão là hoàn thành nhiệm vụ."
			}
--]]			
--[[			
MenologyRecommend['Linh Vận Tiên Thụ']=
			{ 
				id=34, iconpath1="天地宝库.dds", iconpath2="天地宝库大.dds", iconpath3="", 
				rewardtype=333, maskinfo=0, name="Linh Vận Tiên Thụ", ismendisplay=false, mendisplaylevel=29, 
				validtime="0:00-24:00", levelreq="30-160", needreborn=false, permitcount=3, cond=" ", 
				validday="1,2,3,4,5,6,7", line="Kênh 15", npc="Ti Linh Vận", istaskaward=false, taskid="20400", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
					{awardid=43345, awardiconpath="特殊物品奖励.dds", awarddesc=""}, 
					{awardid=21345, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aBí mật"}, 
				}, 
				periods=
				{
					{starttime="2011-4-26", endtime="2011-5-14"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Ti Linh Vận", descmapid=401, descpos="119, 164, -314", istransport=true, 
				desc="^ffffff       Tết Lao Động vui vẻ ! Ti Linh Vận (Hà Dương Tương Tư Thụ phụ cận) nhận được 1 mầm cây Thiên Giới, hi vọng bạn có thể giúp cô ấy trồng nó. (Thời gian khai mở sự kiện: 12:02 26/4, 23:55 14/5 )"
			}
--]]			
--[[			
MenologyRecommend['Sự Kiên Thánh Đản']=
			{ 
				id=35, iconpath1="雪人总动员.dds", iconpath2="雪人总动员大.dds", iconpath3="", 
				rewardtype=303, maskinfo=0, name="Sự Kiên Thánh Đản", ismendisplay=false, mendisplaylevel=30, 
				validtime="0:00-24:00", levelreq="30-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Thánh Đản Lão Nhân", istaskaward=false, taskid="25349, 25297", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
					{awardid=50913, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
					{awardid=50914, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
					{awardid=50912, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
					{awardid=50911, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
					{awardid=41171, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
				}, 
				periods=
				{
					{starttime="2011-12-18", endtime="2011-12-25"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Thánh Đản Lão Nhân", descmapid=401, descpos="180, 164, 125", istransport=true, 
				desc="^ffffff       Mùa đông lạnh giá, tuyết trắng bay bay, Tuyết Quốc Sứ Giả xuất hiện tại Hà Dương Thành, nguyên lai ông ta tới đón lũ tiểu thỏ mà năm ngoái tặng cho Bích Dao về Tuyết Quốc, nhưng Tuyết Quốc Sứ Giả không cẩn thận để lũ thỏ chạy mất, các hiệp sĩ ở Hà Dương Thành hãy tới giúp Tuyết Quốc Sứ Giả đáng thương tìm về những chú thỏ con."
			}
--]]			
--[[			
MenologyRecommend['Tết Nguyên Đán']=
			{ 
				id=36, iconpath1="宝物.dds", iconpath2="宝物大.dds", iconpath3="", 
				rewardtype=302, maskinfo=0, name="Tết Nguyên Đán", ismendisplay=false, mendisplaylevel=31, 
				validtime="0:00-24:00", levelreq="30-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Tân Niên Sứ Giả", istaskaward=false, taskid="25291", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
					{awardid=44463, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
					{awardid=22343, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
				}, 
				periods=
				{
					{starttime="2012-1-1", endtime="2012-1-7"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Tân Niên Sứ Giả", descmapid=401, descpos="180, 164, 125", istransport=true, 
				desc="^ffffff       Sự kiện Tết Nguyên Đán, các tiết mục đặc sắc: \r^11ff11Tiếng chuông cầu phúc\r^11ff11Trứng vàng may mắn。"
			}
--]]			
--[[			
MenologyRecommend['Tết Nguyên Đán（Tổ đội）']=
			{ 
				id=37, iconpath1="宝物.dds", iconpath2="宝物大.dds", iconpath3="", 
				rewardtype=302, maskinfo=0, name="Tết Nguyên Đán", ismendisplay=false, mendisplaylevel=32, 
				validtime="0:00-24:00", levelreq="30-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Tân Niên Sứ Giả", istaskaward=false, taskid="25292", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
					{awardid=44463, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
					{awardid=22343, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
				}, 
				periods=
				{
					{starttime="2012-1-1", endtime="2012-1-7"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Tân Niên Sứ Giả", descmapid=401, descpos="180, 164, 125", istransport=true, 
				desc="^ffffff       Sự kiện Tết Nguyên Đán, các tiết mục đặc sắc: \r^11ff11Tiếng chuông cầu phúc\r^11ff11Trứng vàng may mắn。"
			}
--]]			
--[[
MenologyRecommend['Bạch Sắc Tình Nhân']=
			{ 
				id=38, iconpath1="宠物使者的委托.dds", iconpath2="宠物使者的委托大.dds", iconpath3="", 
				rewardtype=302, maskinfo=0, name="Bạch Sắc Tình Nhân", ismendisplay=false, mendisplaylevel=33, 
				validtime="0:00-24:00", levelreq="30-160", needreborn=false, permitcount=3, cond=" ", 
				validday="1,2,3,4,5,6,7", line="Kênh 1-15", npc="Hồng Nương", istaskaward=false, taskid="23304, 23303", 
				award=
				{
					{awardid=13425, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
					{awardid=41668, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
					{awardid=22343, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
					{awardid=51274, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
				}, 
				periods=
				{
					{starttime="2012-3-14", endtime="2012-3-20"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Hồng Nương", descmapid=401, descpos="175, 163, 104", istransport=true, 
				desc="^ffffff      Valentine Trắng lại tới rồi，những người chơi cấp 30 trở lên hãy tới tìm ^11ff11Hà Dương Nguyệt Lão^ffffffnhận nhiệm vụ“Phi Thành Vật Nhiễu”，được Nguyệt Lão tặng “Uyên Ương Thú”，“Uyên Ương Thú” sẽ tự động tìm người có duyên với bạn, sau đó, từ miệng “Uyên Ương Thú” sẽ nhả ra “Uyên Ương Châu” bên trong chứa vật phẩm Nguyệt Lão yêu cầu, đem giao cho Nguyệt Lão là sẽ nhận được phần thưởng phong phú"
			}
--]]
function MenologyRecommend:GetSelf()
	return self;
end

MenologyWeekly={}
MenologyWeekly['Trục Ba Thánh Linh']=
			{ 
				id=101, iconpath1="逐波圣灵.dds", iconpath2="逐波圣灵大.dds", 
				rewardtype=203, maskinfo=0, name="Trục Ba Thánh Linh", ismendisplay=false, 
				validtime="11:50-12:00", levelreq="45-160", needreborn=false, permitcount=1, cond="^ffcb4a10 Vàng", 
				validday="1,2,3,4,5,6,7", displayday="周一-周日", line="Kênh 15", npc="Thượng Cổ Kỳ Nhân", istaskaward=false, taskid="14607", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffThông thường nhận được ^ffcb4a20 Thái Cực Kim Đan\r^ffffffNếu thắng thì nhận được thêm ^ffcb4a100 Thái Cực Kim Đan^ffffff。"}, 
					{awardid=21345, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aTạo Hóa Châu\r\r^ffffffNếu thắng nhận được 200 Tạo Hóa Châu^ffffff。"}, 
				}, 
				commendlevel=4, istasknpc=false, descnpc="Thượng Cổ Kỳ Nhân", descmapid=401, descpos="433, 481, 389", istransport=true, 
				desc="^ffffff       Hàng ngày 11：50 tại Hà Dương Thành ^ffcb4a Thượng Cổ Kỳ Nhân ^ffffff Tiêu Phí ^ffcb4a10 Vàng^ffffff mua Thần Thú Lệnh Bài，mua Thần Thú Lệnh Bài, truyền tống tới đáy biển Lưu Ba xem đua thần thú.Hoạt động kết thúc tới chỗ thần thú đạt quán quân nhận ^ffcb4a20 Thái Cực Kim Đan^ffffffNếu lệnh bài đã mua chính là thần thú quán quân thì sẽ được thần thú tặng ^ffcb4a100 Thái Cực Kim Đan^ffffff，^ffcb4a200 Tạo Hóa Châu^ffffff。\r"
			}

MenologyWeekly['Thi Câu Cá']=
			{ 
				id=102, iconpath1="钓鱼大赛.dds", iconpath2="钓鱼大赛大.dds", 
				rewardtype=103, maskinfo=0, name="Thi Câu Cá", ismendisplay=false, 
				validtime="18:00-19:00", levelreq="45-160", needreborn=false, permitcount=1, cond="^ffcb4aPhiếu Đăng Ký", 
				validday="1,2,3,4,5,6,7", displayday="周一-周日", line="Kênh 1-5", npc="Vân Du Tứ Hải Ngư Phu", istaskaward=false, taskid="1", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffCăn cứ vào vật phẩm câu được để hoàn thành nhiệm vụ \rtương ứng sẽ nhận được các phần thưởng kim đan khác nhau."}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aDanh hiệu đặc biệt\r\r^fCăn cứ vào vật phẩm câu được để hoàn thành nhiệm vụ \rtương ứng sẽ nhận được các danh hiệu khác nhau."}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Vân Du Tứ Hải Ngư Phu", descmapid=401, descpos="401, 480, 457", istransport=true, 
				desc="^ffffff       Tại Lưu Ba tổ chức Thi Câu Cá, người chơi hãy dùng Phiếu Báo Danh tới chỗ Vân Du Tứ Hải Ngư Phu đổi lấy ^ffcb4amồi câu^ffffff, sau đó mau chóng tới Lưu Ba tham gia cuộc thi."
			}
MenologyWeekly['Lệ Khí Nguy Cơ']=
			{ 
				id=103, iconpath1="戾气危机.dds", iconpath2="戾气危机大.dds", 
				rewardtype=002, maskinfo=0, name="Lệ Khí Nguy Cơ", ismendisplay=false, 
				validtime="18:00-20:00", levelreq="75-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", displayday="周一-周日", line="Kênh 1-15", npc="Lục Tuyết Kỳ", istaskaward=false, taskid="12717", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi。\r Đơn số：25"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Lục Tuyết Kỳ", descmapid=2, descpos="403, 75, -192", istransport=true, 
				desc="^ffffff       Phía Thanh Vân Sơn đột nhiên xuất hiện dị tượng, từ chỗ ^ffcb4aThanh Vân Lục Tuyết Kỳ^ffffff được biết, Tổ sư từ đường ở Thanh Vân hậu sơn đặt ^ffcb4a3 Trận Pháp Thạch Trụ^ffffff để trấn áp lệ khí. Hiện giờ Thạch Trụ bị tổn hại nhiều, trận pháp dần dần mất hiệu quả. Mong mọi người giúp tu bổ 3 Thạch Trụ, khôi phục sức mạnh của trận pháp, sẽ nhận được  ^ffcb4a25 Thái Cực Kim Đan^ffffff。"
			}
--[[MenologyWeekly['Tuyết Nhân Tổng Động Viên']=
			{ 
				id=104, iconpath1="雪人总动员.dds", iconpath2="雪人总动员大.dds", 
				rewardtype=200, maskinfo=0, name="Tuyết Nhân Tổng Động Viên", ismendisplay=false, 
				validtime="18:45-21:45", levelreq="60-160", needreborn=false, permitcount=1, cond=" ", 
				validday="7", displayday="周六", line="Kênh 15", npc="Côn Luân Tiên Tử", istaskaward=false, taskid="10595", 
				award=
				{
					{awardid=16385, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aThiên thượng thiên hạ, thông tồn thông \rthủ. Có thể tới chỗ Thanh Viên Thương Khố \rLão Bản Tiền Đa Đa hoặc \rTuần Thiên Hữu Đô Úy đổi lấy các \rphần thưởng phong phú"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Côn Luân Tiên Tử", descmapid=10, descpos="-194, 123, 355", istransport=true, 
				desc="^ffffff       Từ chỗ ^ffcb4aCôn Luân Tiên Tử^ffffff nhận nhiệm vụ, có thể chọn tùy 1 Tuyết Nhân để đánh cược, nếu thắng sẽ nhận được ^ffcb4aCàn Khôn Thông Bảo^ffffff với số lượng tương ứng."
			}--]]
MenologyWeekly['Tân Khoa Thí Luyện']=
			{ 
				id=105, iconpath1="新科试炼.dds", iconpath2="新科试炼大.dds", 
				rewardtype=203, maskinfo=0, name="Tân Khoa Thí Luyện", ismendisplay=false, 
				validtime="19:00-19:15", levelreq="1-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", displayday="周一-周日", line="Kênh 1-15", npc="Hệ thống định giờ khởi động", istaskaward=false, taskid="12868", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao kinh nghiệm\rĐơn số: Trả lời câu hỏi, mỗi 10 Điểm 5 kim đan"}, 
					{awardid=19252, awardiconpath="", awarddesc=""}, 
					{awardid=19253, awardiconpath="", awarddesc=""}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Hệ thống định giờ khởi động", descmapid=-1, descpos="9999, 0, 9999", istransport=false, 
				desc="^ffffff       Mỗi ngày đúng ^ffcb4a19:00^ffffff, người chơi sẽ nhận được lời mời của hoạt động ^ffcb4a“Tân Khoa Thí Luyện”^ffffff. Tiếp nhận lời mời, tham dự thí luyện để nhận được nhiều kinh nghiệm và kiến thức.\r       ^ffcb4aTop 10^ffffff Tân Khoa Thí Luyện sẽ nhận được ^ffcb4aHiên Viên Thông Bảo^ffffff và các danh hiệu hiếm có."
			}
MenologyWeekly['Tu Chân Tổng Động Viên']=
			{ 
				id=106, iconpath1="修真总动员.dds", iconpath2="修真总动员大.dds", 
				rewardtype=200, maskinfo=0, name="Tu Chân Tổng Động Viên", ismendisplay=false, 
				validtime="19:00-22:00", levelreq="80-160", needreborn=false, permitcount=1, cond=" ", 
				validday="6", displayday="周五", line="Kênh 1-15", npc="A Phúc", istaskaward=false, taskid="11339", 
				award=
				{
					{awardid=16385, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aThiên thượng thiên hạ, thông tồn thông \rthủ. Có thể tới chỗ Thanh Viên Thương Khố \rLão Bản Tiền Đa Đa hoặc \rTuần Thiên Hữu Đô Úy đổi lấy các \rphần thưởng phong phú"}, 
					{awardid=19253, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aThiên thượng thiên hạ, thông tồn thông \rthủ. Có thể tới chỗ Thanh Viên Thương Khố \rLão Bản Tiền Đa Đa hoặc \rTuần Thiên Hữu Đô Úy đổi lấy các \rphần thưởng phong phú"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="A Phúc", descmapid=2, descpos="179, 0, 108", istransport=true, 
				desc="^ffffff       Tại ^ffcb4aThanh Vân A Phúc^ffffff nhận nhiệm vụ, hoàn thành nhiệm vụ cần 5 Hồ Lô Ngào Đường đổi từ ^ffcb4aHổ Phách Băng Tinh^ffffff, nếu thành công nhận được phần thưởng 200 ^ffcb4aHiên Viên Thông Bảo^ffffff"
			}
MenologyWeekly['Truy Phong Thánh Linh']=
			{ 
				id=107, iconpath1="追风圣灵.dds", iconpath2="追风圣灵大.dds", 
				rewardtype=203, maskinfo=0, name="Truy Phong Thánh Linh", ismendisplay=false, 
				validtime="19:20-19:30", levelreq="90-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", displayday="周一-周日", line="Kênh 15", npc="Thượng Cổ Kỳ Nhân", istaskaward=false, taskid="14989", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffThông thường nhận được ^ffcb4a20 Thái Cực Kim Đan\r^ffffffNếu thắng thì nhận được thêm ^ffcb4a100 Thái Cực Kim Đan^ffffff。"}, 
					{awardid=21345, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aTạo Hóa Châu\r\r^ffffffNếu thắng nhận được 200 Tạo Hóa Châu^ffffff。"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Thượng Cổ Kỳ Nhân", descmapid=401, descpos="433, 481, 389", istransport=true, 
				desc="^ffffff       Hàng ngày vào lúc 19:20 tại Hà Dương ^ffcb4aThượng Cổ Kỳ Nhân^ffffff tiêu phí ^ffcb4a10 Vàng^ffffff mua Thần Thú Lệnh Bài, truyền tống tới Phần Hương Cốc xem đua Thần Thú. Hoạt động kết thúc, có thể nhận được từ chỗ Thần Thú Vô Địch ^ffcb4a20 Thái Cực Kim Đan ^ffffff. Nếu Lệnh Bài may mắn là Thần Thú Vô Địch thì sẽ được Thần Thú tặng ^ffcb4a100 Thái Cực Kim Đan^ffffff, ^ffcb4a200 Tạo Hóa Châu ^ffffff.\r       ^ff0000Chú ý: Trong quá trình Thần Thú đua, cần phải quan sát toàn bộ, nếu không có thể phát sinh sự cố Thần Thú đi mất.^ffffff"
			}
MenologyWeekly['Thiên Hạ Hội Võ']=
			{ 
				id=108, iconpath1="天下会武.dds", iconpath2="天下会武大.dds", 
				rewardtype=003, maskinfo=0, name="Thiên Hạ Hội Võ", ismendisplay=true, 
				validtime="19:30-21:10", levelreq="90-134", needreborn=false, permitcount=1, cond=" ", 
				validday="2, 3", displayday="周一、二", line="Kênh 1-15", npc="Tử Vi Đạo Quang Nguyên Soái", istaskaward=false, taskid="9620, 9629, 10529, 9638, 9647, 10530", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="Hoàn thành Hội Võ sẽ nhận được phần thưởng kinh nghiệm phong phú"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Tử Vi Đạo Quang Nguyên Soái", descmapid=-1, descpos="185, 0, 140", istransport=false, 
				desc="^ffffff       Tại ^ffcb4aHà Dương Tử Vi Đế Quân^ffffff nhận nhiệm vụ Thiên Hạ Hội Võ, sử dụng ^ffcb4aLục Đạo Pháp Liên^ffffff có thể tự do lựa chọn trận doanh.\r       Hoàn thành hội võ sẽ nhận được rất nhiều kinh nghiệm"
			}
MenologyWeekly['Kim Đan Chi Thuật']=
			{ 
				id=109, iconpath1="金丹之术.dds", iconpath2="金丹之术大.dds", 
				rewardtype=202, maskinfo=0, name="Kim Đan Chi Thuật", ismendisplay=false, 
				validtime="19:30-21:30", levelreq="80-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", displayday="周一-周日", line="Kênh 1-15", npc="Bão Phác Tử", istaskaward=false, taskid="13091", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao kinh nghiệm."}, 
					{awardid=21510, awardiconpath="item1.dds", awarddesc=""}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Bão Phác Tử", descmapid=2, descpos="96, 64, 203", istransport=true, 
				desc="^ffffff       Tại Thanh Vân tổ chức hoạt động luyện đơn quy mô lớn, người chơi chỗ ^ffcb4aThanh Vân Bão Phác Tử^ffffff nhận nhiệm vụ.\r       Hoàn thành nhiệm vụ có thể nhận được ^ffcb4aToái Tuyết Tinh Mang^ffffff và ^ffcb4aThái Cực Kim Đan^ffffff.\r       50 Toái Tuyết Tinh Manh có thể tới chỗ Lục Tuyết Kỳ đổi đạo cụ ^ffcb4aTuyết Chi Tinh^ffffff, có tác dụng cường hóa hạng liên (Thiên Tội, Long Khiếu, Long Tương, Thần Đạo, Thần Phạt, Thần Tàng)."
			}
--[[MenologyWeekly['Thú Yêu Tổng Động Viên']=
			{ 
				id=110, iconpath1="兽妖总动员.dds", iconpath2="兽妖总动员大.dds", 
				rewardtype=200, maskinfo=0, name="Thú Yêu Tổng Động Viên", ismendisplay=false, 
				validtime="19:45-21:00", levelreq="60-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1", displayday="周日", line="Kênh 1-15", npc="Pháp Giác", istaskaward=false, taskid="11262", 
				award=
				{
					{awardid=16385, awardiconpath="", awarddesc=""}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Pháp Giác", descmapid=3, descpos="-121, 0, -123", istransport=true, 
				desc="^ffffff       Bảo vệ Thiên Âm Thiên Phật Tháp, Trấn Yêu Tháp, thành công ngăn chặn 3 đợt tấn công sẽ nhận được giải thưởng 60 ^ffcb4aCàn Khôn Thông Bảo^ffffff, ^ffcb4aHuyết Ngọc^ffffff rơi ra từ quái vật cũng có thể đổi lấy 1 lượng Thông Bảo nhất định."
			}--]]
MenologyWeekly['Tinh Tú Bắc Đẩu']=
			{ 
				id=111, iconpath1="星宿北斗.dds", iconpath2="星宿北斗大.dds", 
				rewardtype=003, maskinfo=0, name="Tinh Tú Bắc Đẩu", ismendisplay=false, 
				validtime="20:30-22:30", levelreq="30-160", needreborn=false, permitcount=1, cond=" ", 
				validday="4, 5, 7", displayday="周三四六", line="Kênh 1-15", npc="Tinh Tú Khiêu Chiến Sứ Giả", istaskaward=false, taskid="5469, 5470, 5471, 5472, 9046, 9047, 9048", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều kinh nghiệm\r\r^ffffffSau khi hoàn thành nhiệm vụ sẽ nhận được lượng lớn kinh nghiệm"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Tinh Tú Khiêu Chiến Sứ Giả", descmapid=401, descpos="500, 485, 382", istransport=true, 
				desc="^ffffff       Tại bản đồ tương ứng với các khoảng cấp độ, tìm Khiêu Chiến Sứ Giả nhận nhiệm vụ đi tiêu diệt các Tinh Túc Quái theo yêu cầu, tiêu diệt 7 Tinh Túc Quái sẽ nhận được giải thưởng cao nhất。"
			}
MenologyWeekly['Bát Cực Chiến Hồn']=
			{ 
				id=112, iconpath1="八极战魂.dds", iconpath2="八极战魂大.dds", 
				rewardtype=202, maskinfo=0, name="Bát Cực Chiến Hồn", ismendisplay=false, 
				validtime="0:00-24:00", levelreq="1-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", displayday="周一-周日", line="Kênh 1-15", npc="Phong Ấn Thạch", istaskaward=false, taskid="22314", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
					{awardid=21345, awardiconpath="item1.dds", awarddesc=""}, 
					{awardid=21154, awardiconpath="item1.dds", awarddesc=""}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Phong Ấn Thạch", descmapid=2, descpos="93, 64, 208", istransport=true, 
				desc="^ffffff       Hoàn thành nhiệm vụ ^ffcb4aQuốc Gia Bảo Tàng^ffffff hoặc ^ffcb4aThiên Tru Dự Lệnh^ffffff có cơ hội nhận được đạo cụ nhiệm vụ ^ffcb4aKhởi Huyền Ấn^ffffff, có thể dùng để giải trừ phong ấn của Thanh Vân, ^ffcb4aBát Cực Trấn Thạch^ffffff, và đổi được ^ffcb4aBát Cực Nguyên Châu^ffffff, khi Phong Ấn Thạch thu thập đủ số lượng  ^ffcb4aKhải Huyền Ấn^ffffff thì hiệu quả phong ấn biến mất, có thể triệu hoán chiến hồn trong Phong Ấn Thạch.\r       Sau khi chiến hồn bị tiêu diệt thì có thể tới chỗ ^ffcb4aThanh Vân Hỗn Nguyên Chân Quân^ffffff dùng ^ffcb4aBát Cực Nguyên Châu^ffffff lĩnh thưởng."
			}
MenologyWeekly['Thiên Hành Giả']=
			{ 
				id=113, iconpath1="天行者.dds", iconpath2="天行者大.dds", 
				rewardtype=003, maskinfo=0, name="Thiên Hành Giả", ismendisplay=false, 
				validtime="0:00-24:00", levelreq="45-160", needreborn=false, permitcount=1, cond="^ffcb4a飞剑", 
				validday="1,2,3,4,5,6,7", displayday="周一-周日", line="Kênh 1-15", npc="Thiên Hành Giả", istaskaward=false, taskid="12193", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Thiên Hành Giả", descmapid=401, descpos="430, 509, 402", istransport=true, 
				desc="^ffffff       Hà Dương ^ffcb4aThiên Hành Giả^ffffff ban tặng cơ hội hiếm cố để nhận được lượng lớn kinh nghiệm.\r       Ngự giá ^ffcb4aPhi Kiếm^ffffff tìm gặp Phi Hành Giả trên bầu trời trong xanh."
			}
MenologyWeekly['Hành Thiên']=
			{ 
				id=114, iconpath1="行天.dds", iconpath2="行天大.dds", 
				rewardtype=003, maskinfo=0, name="Hành Thiên", ismendisplay=false, 
				validtime="0:00-24:00", levelreq="80-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", displayday="周一-周日", line="Kênh 1-15", npc="Thiên Hành Giả", istaskaward=false, taskid="12844", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Thiên Hành Giả", descmapid=401, descpos="430, 509, 402", istransport=true, 
				desc="^ffffff       Hàng ngày sau khi hoàn thành nhiệm vụ Thiên Hành Giả, sẽ nhận được đạo cụ ^ffcb4a“Hành Thiên Chi Chứng”^ffffff, dựa vào “Hành Thiên Chi Chứng” và giao nộp ^ffcb4a25 vàng^ffffff có thể ở chỗ Phi Hành Giả nhận nhiệm vụ tiếp theo với giải thưởng kinh nghiệm lớn ^ffcb4a“Hành Thiên”^ffffff.\r       Hoàn thành nhiệm vụ có thể nhận được phần thưởng kinh nghiệm của ^ffcb4a50 Thái Cực Kim Đan^ffffff."
			}
MenologyWeekly['Trung Liệt Bia']=
			{ 
				id=115, iconpath1="忠烈碑.dds", iconpath2="忠烈碑大.dds", 
				rewardtype=002, maskinfo=0, name="Trung Liệt Bia", ismendisplay=false, 
				validtime="0:00-24:00", levelreq="50-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", displayday="周一-周日", line="Kênh 1-15", npc="Trung Liệt Bia", istaskaward=false, taskid="2237, 2276, 2277, 6204, 6205, 7464, 7465", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều kinh nghiệm\r\r^ffffffSau khi hoàn thành nhiệm vụ sẽ nhận được lượng lớn kinh nghiệm"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Trung Liệt Bia", descmapid=4, descpos="154, 0, 369", istransport=true, 
				desc="^ffffff       Mỗi ngày có thể tới Lưu Ba ^ffcb4aTrung Liệt Bia^ffffff tiến hành tế điện.\r       Mỗi lần cần 2 slot kì trân, hoàn thành nhiệm vụ nhận được lượng lớn kinh nghiệm"
			}
MenologyWeekly['Cảnh Ngưỡng Tiên Hiền']=
			{ 
				id=116, iconpath1="景仰先贤.dds", iconpath2="景仰先贤大.dds", 
				rewardtype=002, maskinfo=0, name="Cảnh Ngưỡng Tiên Hiền", ismendisplay=false, 
				validtime="0:00-24:00", levelreq="120-160", needreborn=false, permitcount=1, cond="^ffcb4a15 Vàng", 
				validday="1,2,3,4,5,6,7", displayday="周一-周日", line="Kênh 1-15", npc="Thẩm Mặc Nho", istaskaward=false, taskid="12847", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi。\r Đơn số：25"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Thẩm Mặc Nho", descmapid=401, descpos="389, 481, 353", istransport=true, 
				desc="^ffffff       Mỗi ngày có thể tới chỗ ^ffcb4aHà Dương Thẩm Mặc Nho^ffffff giao nộp ^ffcb4a15 vàng ^ffffff để lĩnh nhiệm vụ có phần thưởng kinh nghiệm cao là ^ffcb4a“Cảnh Ngưỡng Tiên Hiền”^ffffff.\r       Hoàn Thành nhiệm có thể nhận được giải thưởng kinh nghiệm của ^ffcb4a25 Thái Cực Kim Đan^ffffff"
			}
MenologyWeekly['Triệt Dạ Bất Miên']=
			{ 
				id=117, iconpath1="彻夜不眠.dds", iconpath2="彻夜不眠大.dds", 
				rewardtype=003, maskinfo=0, name="Triệt Dạ Bất Miên", ismendisplay=false, 
				validtime="0:00-24:00", levelreq="60-150", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", displayday="周一-周日", line="Kênh 1-15", npc="Danh Y các nơi cấp 60 trở lên", istaskaward=false, taskid="11586, 11588, 11590, 11592, 11595, 11598, 11501, 11618, 11635, 11638, 11647, 11654, 11674, 11678, 11681, 11739, 11746, 11754, 11783, 11791, 11794, 11796, 11798, 11800", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP\r\r^ffffffCưn cứ vào số lượng quái giết được để nhận exp."}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Danh Y các nơi cấp 60 trở lên", descmapid=-1, descpos="9999, 0, 9999", istransport=false, 
				desc="^ffffff       Sau cấp 60, có thể tới Y Sư ở mỗi bản đồ lĩnh nhiệm vụ ^ffcb4aCả Đêm Không Ngủ^ffffff tương ứng với cấp độ.\r       Nhiệm vụ có hình thức tính thời gian, căn cứ vào số lượng giết quái để tính kinh nghiệm.\r       Khi thời gian chưa kết thúc có thể trực tiếp trả nhiệm vụ để nhận kinh nghiệm, hoặc đợi thời gian nhiệm vụ kết thúc thì tự động nhận được phần thưởng kinh nghiệm tương ứng."
			}
MenologyWeekly['Sư Môn Anh Hùng Thiếp']=
			{ 
				id=118, iconpath1="师门英雄帖.dds", iconpath2="师门英雄帖大.dds", 
				rewardtype=002, maskinfo=0, name="Sư Môn Anh Hùng Thiếp", ismendisplay=false, 
				validtime="0:00-24:00", levelreq="30-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", displayday="周一-周日", line="Kênh 1-15", npc="Sứ Giả Môn Phái", istaskaward=false, taskid="3162, 3159, 3165, 3168, 11682, 3174, 3171, 3177, 3180, 11689, 3186, 3183, 3189, 3192, 11696, 3858, 3855, 3861, 3865, 11703, 5628, 5538, 5625, 5631, 11710, 5652, 5634, 5637, 5655, 11717, 7614, 7611, 7617, 7620, 11724, 7660, 7657, 7663, 7666, 11734", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao kinh nghiệm."}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Sứ Giả Môn Phái", descmapid=-1, descpos="9999, 0, 9999", istransport=false, 
				desc="^ffffff       Bắt đầu từ Thiên Âm, khi điểm cống hiến bản môn của bạn đủ cao thì có thể tới chỗ Môn Phái Sứ Giả của bản môn để Anh Hùng Thiếp với các cấp độ khác nhau.\r       Hoàn thành nhiệm vụ trên Anh Hùng Thiếp sẽ nhận được Phát Quang Anh Hùng Thiếp. Mang tới chỗ Môn Phái Sứ Giả để đổi lấy phần thưởng kinh nghiệm. (Chỉ cần trên người có Kim Tự Anh Hùng Thiếp, hàng ngày có thể hoàn thành nhiệm vụ nhiều lần)"
			}
MenologyWeekly['Phá Hung Chú']=
			{ 
				id=119, iconpath1="破凶咒.dds", iconpath2="破凶咒大.dds", 
				rewardtype=003, maskinfo=0, name="Phá Hung Chú", ismendisplay=false, 
				validtime="0:00-24:00", levelreq="30-160", needreborn=false, permitcount=1, cond=" ", 
				validday="1,2,3,4,5,6,7", displayday="周一-周日", line="Kênh 1-15", npc="Truyền Công Sứ Giả", istaskaward=false, taskid="8667, 8669, 5182, 5184, 8668, 5183, 5181, 8670", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aSau khi hoàn thành nhận được phần thưởng kinh nghiệm lớn."}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Truyền Công Sứ Giả", descmapid=401, descpos="500, 485, 367", istransport=true, 
				desc="^ffffff       Nhiệm vụ trừ hung chú của Truyền Công Sứ Giả. \r       Tiêu diệt  ^ffcb4aHung Chú Quái^ffffff trên các bản đồ để nhận được phần thưởng kinh nghiệm lớn."
			}
MenologyWeekly['Kiến Công Lập Sự']=
			{ 
				id=120, iconpath1="建功立事.dds", iconpath2="建功立事大.dds", 
				rewardtype=002, maskinfo=0, name="Kiến Công Lập Sự", ismendisplay=false, 
				validtime="0:00-24:00", levelreq="50-160", needreborn=false, permitcount=1, cond="^ffcb4a20 Vàng", 
				validday="1,2,3,4,5,6,7", displayday="周一-周日", line="Kênh 1-15", npc="Quản Lý Bang Hội", istaskaward=false, taskid="12856", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Quản Lý Bang Hội", descmapid=401, descpos="496, 493, 342", istransport=true, 
				desc="^ffffff       Các thành viên đã gia nhập bang phái có thể tới Hà Dương ^ffcb4aSứ Giả Bang Hội Phương Hải Bình ^ffffff tiêu phí ^ffcb4a20 vàng^ffffff để nhận nhiệm vụ.\r       Hoàn thành chuỗi ủy thác. Cuối cùng sẽ nhận được phần thưởng kinh nghiệm của ^ffcb4a40 Thái Cực Kim Đan^ffffff."
			}
MenologyWeekly['Bảo Vật']=
			{ 
				id=121, iconpath1="宝物.dds", iconpath2="宝物大.dds", 
				rewardtype=002, maskinfo=0, name="Bảo Vật", ismendisplay=false, 
				validtime="0:00-24:00", levelreq="110-160", needreborn=false, permitcount=1, cond="^ffcb4a15 Vàng", 
				validday="1,2,3,4,5,6,7", displayday="周一-周日", line="Kênh 1-15", npc="Ngô Dân Tài", istaskaward=false, taskid="12862", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Ngô Dân Tài", descmapid=401, descpos="382, 484, 316", istransport=true, 
				desc="^ffffff       Tới chỗ Hà Dương Ngô Dân Tài nhận nhiệm vụ ủy thác, cần trả ^ffcb4a15 vàng^ffffff.\r       Hoàn thành nhiệm vụ nhận được phần thưởng kinh nghiệm của ^ffcb4a30 Thái Cực Kim Đan^ffffff."
			}
MenologyWeekly['Kim Đan Hữu Giá']=
			{ 
				id=122, iconpath1="金丹有价.dds", iconpath2="金丹有价大.dds", 
				rewardtype=002, maskinfo=0, name="Kim Đan Hữu Giá", ismendisplay=false, 
				validtime="0:00-24:00", levelreq="100-160", needreborn=false, permitcount=1, cond="^ffcb4a20 Vàng", 
				validday="1,2,3,4,5,6,7", displayday="周一-周日", line="Kênh 1-15", npc="Hà Long Nghiêu", istaskaward=false, taskid="12861", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi.\rĐơn số: 50"}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Hà Long Nghiêu", descmapid=401, descpos="383, 484, 294", istransport=true, 
				desc="^ffffff       在河阳的Hà long nghiêu处领取委托任务，需要支付^ffcb4a20金^ffffff。\r       完成任务后获得^ffcb4a50个Thái cực kim đan^ffffff的经验奖励。"
			}
MenologyWeekly['Quốc Gia Bảo Tàng']=
			{ 
				id=123, iconpath1="国家宝藏.dds", iconpath2="国家宝藏大.dds", 
				rewardtype=030, maskinfo=0, name="Quốc Gia Bảo Tàng", ismendisplay=false, 
				validtime="0:00-24:00", levelreq="60-160", needreborn=false, permitcount=3, cond=" ", 
				validday="1,2,3,4,5,6,7", displayday="周一-周日", line="Kênh 1-15", npc="Thiên Hành Giả", istaskaward=false, taskid="12310, 12311, 12312, 12313, 12314, 12315", 
				award=
				{
					{awardid=0, awardiconpath="金钱类奖励.dds", awarddesc="^ffcb4aVàng\r\rHoàn thành nhiệm vụ và hồi báo Thiên Hành Giả\r để nhận lượng tiền lớn."}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Thiên Hành Giả", descmapid=401, descpos="430, 509, 402", istransport=true, 
				desc="^ffffff       Theo yêu cầu của Thiên Hành Giả tiêu diệt Vân Du Thiên Tướng.\r       Hồi báo Thiên Hành Giả để nhận được lượng tiền lớn."
			}
MenologyWeekly['Tạo Hóa Chi Ngộ']=
			{ 
				id=124, iconpath1="造化之悟.dds", iconpath2="造化之悟大.dds", 
				rewardtype=003, maskinfo=0, name="Tạo Hóa Chi Ngộ", ismendisplay=false, 
				validtime="0:00-24:00", levelreq="135-160", needreborn=false, permitcount=1, cond="^ffcb4a50 Vàng", 
				validday="1,2,3,4,5,6,7", displayday="周一-周日", line="Kênh 1-15", npc="Hiên Viên Tổ Sư", istaskaward=false, taskid="19260", 
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm tạo hóa\r\r^ffffffDùng để tu luyện Tiên Ma Phật Tạo Hóa Kỹ Năng."}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Hiên Viên Tổ Sư", descmapid=2, descpos="41, 45, -433", istransport=true, 
				desc="^ffffff       Tới chỗ Thanh Vân^ffcb4a Hiên Viên Tổ Sư^ffffff tiến hành tu luyện ^ffcb4aĐạo Tâm^ffffff, ^ffcb4aPhật Duyên^ffffff, ^ffcb4aMa Tính^ffffff, cần tiêu hao 50 vàng, tiêu diệt quái vật lấy phần thưởng tạo hóa, nhiệm vụ này cần phải hoàn thành trong 24h."
			}
			
function MenologyWeekly:GetSelf()
	return self;
end

MenologyBattleField={}
MenologyBattleField['Hán Sở Quân Hồn'] 	=
			{ 
				id=202, iconpath1="楚汉军魂.dds", iconpath2="楚汉军魂大.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="Hán Sở Quân Hồn", ismendisplay=false, mendisplaylevel=150, 
				validtime="13:00-14:30", levelreq="15-160", needreborn=true, permitcount=1, cond="", 
				validday="1, 7", displayday="周六、日", line="Kênh 10", npc="Thái Hư Huyễn Cảnh Tiên Quan", istaskaward=false, taskid="1", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r^ffffffSau khi nhận được tự động nâng cao kinh nghiệm."}, 
					{awardid=24708, awardiconpath="item1.dds", awarddesc="^ffcb4aHán Sở Thanh Tiền\r\r Dùng để đổi đạo cụ trang bị hệ Ly."}, 
				}, 
				commendlevel=2, istasknpc=false, descnpc="", descmapid=401, descpos="488, 493, 326", istransport=true, 
				desc="^ffffff       Cửu Lý Sơn Cai Hạ Cổ chiến trường, bạn sẽ phò tá Hán Vương Lưu Bang, cứu trợ thiên hạ, sáng lập cơ nghiệp trăm năm, hay cứu viện Sở Vương Hạng Vũ, xoay chuyển tình thế, trở thành bá vương thế gian? Vấn đỉnh càn khôn, đợi bạn quyết định ... (Yêu cầu nhân vật phi thăng)"
			}
---MenologyBattleField['Diễn Võ Trận']=
---			{ 
---				id=203, iconpath1="演武阵.dds", iconpath2="演武阵大.dds", iconpath3="icon\\Menology_huiwu.tga", 
---				rewardtype=0, maskinfo=0, name="Diễn Võ Trận" , ismendisplay=false, mendisplaylevel=149, 
---				validtime="19:00-22:00", levelreq="90-160", needreborn=false, permitcount=1, cond="", 
---				validday="1", displayday="周日", line="Kênh 14", npc="vũ tôn thần   lưu nhạc", istaskaward=false, taskid="1", 
---				award=
---				{
---					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r^ffffffSau khi nhận được tự động nâng cao kinh nghiệm."}, 
---					{awardid=34183, awardiconpath="item1.dds", awarddesc="12345"}, 
---				}, 
---				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="170, 0, 176", istransport=true, 
---				desc="^ffffff       演武大阵，数名高手共同竞技，不仅需要有以一敌百的实力，更考验在危机中的生存能力，最终决出唯一的胜利者，体验唯我独尊的畅快与喜悦。（要求未飞升角色）"
---			}
---MenologyBattleField['Huyễn Thế Diễn Võ Trận']=
---			{ 
---				id=204, iconpath1="幻世演武阵.dds", iconpath2="幻世演武阵大.dds", iconpath3="icon\\Menology_huiwu.tga", 
---				rewardtype=0, maskinfo=0, name="Huyễn Thế Diễn Võ Trận" , ismendisplay=false, mendisplaylevel=148, 
---				validtime="19:00-22:00", levelreq="90-160", needreborn=true, permitcount=1, cond="", 
---				validday="1", displayday="周日", line="Kênh 15", npc="vũ tôn thần   lưu nhạc", istaskaward=false, taskid="1", 
---				award=
---				{
---					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r^ffffffSau khi nhận được tự động nâng cao kinh nghiệm."}, 
---					{awardid=31282, awardiconpath="", awarddesc=""}, 
---				}, 
---				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="170, 0, 176", istransport=true, 
---				desc="^ffffff       演武大阵，数名高手共同竞技，不仅需要有以一敌百的实力，更考验在危机中的生存能力，最终决出唯一的胜利者，体验唯我独尊的畅快与喜悦。（要求飞升角色）"
---			}
MenologyBattleField['Viêm Ngục']=
			{ 
				id=205, iconpath1="炎狱.dds", iconpath2="炎狱大.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="Viêm Ngục" , ismendisplay=false, mendisplaylevel=147, 
				validtime="0:00-24:00", levelreq="90-104", needreborn=false, permitcount=10, cond="", 
				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Tru Tiên Chiến Thần", istaskaward=false, taskid="1", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
					{awardid=10537, awardiconpath="", awarddesc=""}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="519, 493, 344", istransport=true, 
				desc="^ffffff       Nơi Ẩn Tiên Các và Dật Long Hiên, định kỳ tổ chức Thiên Hạ Hội Võ, nơi này liệt hỏa hừng hực, tiến nhập vào, thân thể sẽ chịu sự khổ ải của sức nóng, rèn luyện trong đó sẽ nâng cao tu vi bản thân. (Yêu cầu nhân vật chưa phi thăng)"
			}
MenologyBattleField['Võ Vi']=
			{ 
				id=206, iconpath1="武围.dds", iconpath2="武围大.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="Võ Vi" , ismendisplay=false, mendisplaylevel=146, 
				validtime="0:00-24:00", levelreq="105-119", needreborn=false, permitcount=10, cond="", 
				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Tru Tiên Chiến Thần", istaskaward=false, taskid="1", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
					{awardid=10537, awardiconpath="", awarddesc=""}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="519, 493, 344", istransport=true, 
				desc="^ffffff       Nơi Ẩn Tiên Các và Dật Long Hiên, định kỳ tổ chức Thiên Hạ Hội Võ, nơi này đất dữ, nguy cơ trùng trùng, rèn luyện trong đó sẽ nâng cao tu vi bản thân. (Yêu cầu nhân vật chưa phi thăng)"
			}
MenologyBattleField['Giới Hà']=
			{ 
				id=207, iconpath1="界河.dds", iconpath2="界河大.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="Giới Hà" , ismendisplay=false, mendisplaylevel=145, 
				validtime="0:00-24:00", levelreq="120-134", needreborn=false, permitcount=10, cond="", 
				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Tru Tiên Chiến Thần", istaskaward=false, taskid="1", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
					{awardid=10537, awardiconpath="", awarddesc=""}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="519, 493, 344", istransport=true, 
				desc="^ffffff       Nơi Ẩn Tiên Các và Dật Long Hiên, định kỳ tổ chức Thiên Hạ Hội Võ, hai bên lấy sông làm biên giới, đấu trí đấu dũng, rèn luyện trong đó sẽ nâng cao tu vi bản thân. (Yêu cầu nhân vật chưa phi thăng)"
			}
MenologyBattleField['Thiên Dịch']=
			{ 
				id=208, iconpath1="天弈.dds", iconpath2="天弈大.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="Thiên Dịch" , ismendisplay=false, mendisplaylevel=144, 
				validtime="0:00-24:00", levelreq="135-150", needreborn=false, permitcount=10, cond="", 
				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Tru Tiên Chiến Thần", istaskaward=false, taskid="1", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
					{awardid=10537, awardiconpath="", awarddesc=""}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="519, 493, 344", istransport=true, 
				desc="^ffffff       Nơi Ẩn Tiên Các và Dật Long Hiên, định kỳ tổ chức Thiên Hạ Hội Võ, bên trong thế như bàn cờ, mỗi bước đi đều đáng sợ, rèn luyện trong đó sẽ nâng cao tu vi bản thân. (Yêu cầu nhân vật chưa phi thăng)"
			}
MenologyBattleField['Huyễn Thế Viêm Ngục']=
			{ 
				id=209, iconpath1="幻世炎狱.dds", iconpath2="幻世炎狱大.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="Huyễn Thế Viêm Ngục" , ismendisplay=false, mendisplaylevel=143, 
				validtime="12:00-24:00", levelreq="90-104", needreborn=true, permitcount=10, cond="", 
				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Tru Tiên Chiến Thần", istaskaward=false, taskid="1", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
					{awardid=23858, awardiconpath="", awarddesc=""}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="519, 493, 344", istransport=true, 
				desc="^ffffff       Nơi Ẩn Tiên Các và Dật Long Hiên, định kỳ tổ chức Thiên Hạ Hội Võ, nơi này liệt hỏa hừng hực, tiến nhập vào, thân thể sẽ chịu sự khổ ải của sức nóng, rèn luyện trong đó sẽ nâng cao tu vi bản thân. (Yêu cầu nhân vật phi thăng)"
			}
MenologyBattleField['Huyễn Thế Võ Vi']=
			{ 
				id=210, iconpath1="幻世武围.dds", iconpath2="幻世武围大.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="Huyễn Thế Võ Vi" , ismendisplay=false, mendisplaylevel=142, 
				validtime="12:00-24:00", levelreq="105-119", needreborn=true, permitcount=10, cond="", 
				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Tru Tiên Chiến Thần", istaskaward=false, taskid="1", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
					{awardid=23858, awardiconpath="", awarddesc=""}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="519, 493, 344", istransport=true, 
				desc="^ffffff       Nơi Ẩn Tiên Các và Dật Long Hiên, định kỳ tổ chức Thiên Hạ Hội Võ, nơi này đất dữ, nguy cơ trùng trùng, rèn luyện trong đó sẽ nâng cao tu vi bản thân. (Yêu cầu nhân vật phi thăng)"
			}
MenologyBattleField['Huyễn Thế Giới Hà']=
			{ 
				id=211, iconpath1="幻世界河.dds", iconpath2="幻世界河大.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="Huyễn Thế Giới Hà" , ismendisplay=false, mendisplaylevel=141, 
				validtime="12:00-24:00", levelreq="120-134", needreborn=true, permitcount=10, cond="", 
				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Tru Tiên Chiến Thần", istaskaward=false, taskid="1", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
					{awardid=23858, awardiconpath="", awarddesc=""}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="519, 493, 344", istransport=true, 
				desc="^ffffff       Nơi Ẩn Tiên Các và Dật Long Hiên, định kỳ tổ chức Thiên Hạ Hội Võ, hai bên lấy sông làm biên giới, đấu trí đấu dũng, rèn luyện trong đó sẽ nâng cao tu vi bản thân. (Yêu cầu nhân vật phi thăng)"
			}
MenologyBattleField['Huyễn Thế Thiên Dịch']=
			{  
				id=212, iconpath1="幻世天弈.dds", iconpath2="幻世天弈大.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="Huyễn Thế Thiên Dịch" , ismendisplay=false, mendisplaylevel=140, 
				validtime="12:00-24:00", levelreq="135-155", needreborn=true, permitcount=10, cond="", 
				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Tru Tiên Chiến Thần", istaskaward=false, taskid="1", 
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
					{awardid=23858, awardiconpath="", awarddesc=""}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="519, 493, 344", istransport=true, 
				desc="^ffffff       Nơi Ẩn Tiên Các và Dật Long Hiên, định kỳ tổ chức Thiên Hạ Hội Võ, bên trong thế như bàn cờ, mỗi bước đi đều đáng sợ, rèn luyện trong đó sẽ nâng cao tu vi bản thân. (Yêu cầu nhân vật phi thăng)"
			}
MenologyBattleField['Thảo Miếu Thôn']=
			{ 
				id=213, tmplid=1038, iconpath1="草庙村.dds", iconpath2="草庙村大.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="草庙村" , ismendisplay=false, mendisplaylevel=121, 
				validtime="0:00-24:00", levelreq="30-89", needreborn=false, permitcount=1, cond="", 
				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Thời Không Huyễn Cảnh Quản Lý Viên", istaskaward=false, taskid="1", 
				award=
				{
					{awardid=70662, awardiconpath="item1.dds", awarddesc="12345"},
					{awardid=4180, awardiconpath="item1.dds", awarddesc="12345"},
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
				},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="491,493,330", istransport=true, 
				desc="^ffffff       Thảo Miếu Thôn phong vân biến động, tất cả truyền thuyết đều bắt đầu tại đây. Bạn sẽ quay về nơi những giấc mộng bắt đầu, tìm lại những cảm giác đã qua. Mọi thứ bắt đầu từ nơi đây thì cũng phải kết thúc tại đây."
			}
MenologyBattleField['真武剑阁'] = 
			{ 
				id=214, tmplid=1039, iconpath1="真武剑阁.dds", iconpath2="真武剑阁大.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="真武剑阁" , ismendisplay=false, mendisplaylevel=122, 
				validtime="0:00-24:00", levelreq="90-119", needreborn=false, permitcount=1, cond="", 
				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Thời Không Huyễn Cảnh Quản Lý Viên", 	istaskaward=false, taskid="1", 
				award=
				{
					{awardid=70664, awardiconpath="item1.dds", awarddesc="12345"},
					{awardid=4180, awardiconpath="item1.dds", awarddesc="12345"},
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
				},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="491,493,330", istransport=true, 
				desc="^ffffff       Cung điện nơi Chân Võ Đại Đế cất giữ kiếm, tương truyền nơi đây có lưu lại nhiều Chân Võ Tâm Giải, và cũng có nhiều Thượng Cổ thần binh rơi rớt nơi đây, là bảo địa mà tu sĩ tam giới rèn luyện và tìm báu vật. "
			}
MenologyBattleField['Thiên Đế Bảo Khố']=
			{ 
				id=215, tmplid=1040, iconpath1="天地宝库.dds", iconpath2="天地宝库大.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="天帝宝库" , ismendisplay=false, mendisplaylevel=126, 
				validtime="0:00-24:00", levelreq="120-160", needreborn=true, permitcount=3, cond="", 
				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Quản Lý Viên", istaskaward=false, taskid="1", 
				award=
				{
					{awardid=34229, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
					{awardid=34029, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
				},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="491,493,330", istransport=true, 
				desc="^FFCB4A      Thiên Đế Bảo Khố có chứa nhiều thần vật, nhưng đang lúc cấm chế nặng nề, chưa kẻ nào có thể toàn mạng vượt qua, các hạ hãy thận trọng.(yêu cầu phi thăng)"
			}
MenologyBattleField['Gia Tộc Phó Bản']=
			{ 
				id=216, tmplid=1066, iconpath1="建功立事.dds", iconpath2="建功立事大.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="幻月洞府" , ismendisplay=false, mendisplaylevel=120, 
				validtime="0:00-24:00", levelreq="20-160", needreborn=false, permitcount=3, cond="", 
				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Quản Lý Viên", istaskaward=false, taskid="1", 
				award=
				{
					{awardid=21345, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aLượng lớn exp"},
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
				},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="491,493,330", istransport=true, 
				desc="^ffffff       Hoan Nguyệt Động là vùng Thanh Vân cấm địa，vị trí quan trọng，môn trung Tuyết Kỳ đang chiến đấu dũng cảm，bạn muốn giúp đỡ Tuyết Kỳ？（Yêu cầu cấp độ trên 20 và là thành viên trong gia tộc）"
			}
MenologyBattleField['Hồng Mông Thí Luyện'] = 
			{ 
				id=217, tmplid=1067, iconpath1="新草庙.dds", iconpath2="新草庙村大.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="鸿蒙试炼" , ismendisplay=false, mendisplaylevel=126, 
				validtime="0:00-24:00", levelreq="120-160", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="武德星君", istaskaward=false, taskid="1",
				award=
				{
					{awardid=21345, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
					{awardid=41668, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aTrang bị hệ Chấn^ffffffCấp độ thích hợp: Phi thăng 140"}, 
				},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="489,493,322", istransport=true, 
				desc="^ffffff       Hồng Mông, bí ẩn và không thể đoán trước, với một loạt các trang bị hiếm, có rất nhiều linh hồn ma quỷ bọn côn đồ, mang lại cho đồng đội của bạn, thách thức sức mạnh của riêng bạn! (Yêu cầu cấp độ > 120 Thăng Thiên, đề nghị tổ đội 4 người)"
			}
MenologyBattleField['Phụ bản Phần Hương Cốc'] = 
			{ 
				id=218, tmplid=484, iconpath1="焚香谷副本副本.dds", iconpath2="焚香谷副本副本大.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="Phụ bản Phần Hương Cốc" , ismendisplay=false, mendisplaylevel=124, 
				validtime="0:00-24:00", levelreq="120-160", needreborn=false, permitcount=1, cond="", 
				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Bát Hoang Lai Sứ", istaskaward=false, taskid="1", 
				award=
				{
					{awardid=21345, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
					{awardid=41668, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
					{awardid=49370, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aDanh hiệu thuộc tính đặc biệt\r^ffffff tỷ lệ bạo kích bên kia và giảm sát thượng bạo kích"}, 
				},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="486,490,289", istransport=true, 
				desc="^ffffff       Phụ bản Phần Hương Cốc gần đây xuất hiện trở lại thế gian. Huyền thoại người chơi nào có thể khám phá ra bí ẩn của ngọn lửa vinh quang, người đó sẽ có thể thống trị thế giới!Tổ đội hợp sức: Đi đến Ám Hương Các trong Phần Hương Cốc, tìm kiếm lịch sử ngọn lửa bí ẩn vinh quang! (Yêu cầu cấp > 120, đề nghị tổ đội > 10 người)"
			}
-- MenologyBattleField['Mộng Cảnh Hà Dương'] = 
-- 			{ 
-- 				id=219, tmplid=534, iconpath1="彻夜不眠.dds", iconpath2="彻夜不眠大.dds", iconpath3="icon\\Menology_huiwu.tga", 
-- 				rewardtype=0, maskinfo=0, name="梦境河阳城" , ismendisplay=false, mendisplaylevel=121, 
-- 				validtime="0:00-24:00", levelreq="30-160", needreborn=false, permitcount=1, cond="", 
-- 				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Tru Tiên Cổ Quyển", istaskaward=false, taskid="1", 
-- 				award=
-- 				{
-- 					{awardid=52238, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
-- 				}, 
-- 				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="215,164,110", istransport=true, 
-- 				desc="^ffffff       Mộng cảnh Hà Dương là song song với thế giới ngày nay những điều khác thời gian và không gian để khám phá. Tru Tiên Cổ Quyển nhận được rất nhiều phần thưởng. (Yêu cầu cấp độ >30, khuyến cáo rằng tổ đội 3 người hoặc nhiều hơn)"
-- 			}
MenologyBattleField['Thần Trấn Võ Tháp'] = 
			{ 
				id=220, tmplid=543, iconpath1="忠烈碑.dds", iconpath2="忠烈碑大.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="Thần Trấn Võ Tháp" , ismendisplay=false, mendisplaylevel=121, 
				validtime="0:00-24:00", levelreq="30-160", needreborn=false, permitcount=1, cond="", 
				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="三官大帝", istaskaward=false, taskid="1",
				award=
				{
					{awardid=21345, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
					{awardid=41668, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
					{awardid=52365, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
					{awardid=52376, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
					{awardid=52377, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="476, 490, 300", istransport=true, 
				desc="^ffffff       Nhân vật duy nhất có thể tham gia vào hơn 30 phụ bản trong Thần Vũ Trấn Nguyên Tháp, chỉ là cơ hội cho cuộc sống mới, vật nuôi tự động triệu tập. Thành công qua lần đầu tiên sẽ nhận được nhiều phần thưởng hàng ngày số lượng các trạm kiểm soát cũng sẽ cung cấp một phần thưởng rất lớn tích lũy."
			}
-- MenologyBattleField['Phụ bản Lăng Tiêu'] = 
-- 			{ 
-- 				id=221, tmplid=723, iconpath1="凌霄城副本.dds", iconpath2="凌霄城副本大.dds", iconpath3="icon\\Menology_huiwu.tga", 
-- 				rewardtype=0, maskinfo=0, name="凌霄城副本" , ismendisplay=false, mendisplaylevel=122, 
-- 				validtime="0:00-24:00", levelreq="90-160", needreborn=false, permitcount=1, cond="", 
-- 				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Lăng Tiêu Đặc Sứ", istaskaward=false, taskid="1", 
-- 				award=
-- 				{
-- 					{awardid=21153, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
-- 					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
-- 					{awardid=10876, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
-- 				}, 
-- 				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="478, 490, 298", istransport=true, 
-- 				desc="^ffffff       Lăng Tiêu Thành nổi trên cửu thiên, người đời không phận sự không thể mạo nhiên đi vào. Trong thành có nguyên giám của Tru Tiên Kiếm trấn thủ, kẻ mạo nhiên đi vào sẽ chịu nỗi khổ ngũ lôi xé xác. Giờ lệ khí ngang ngược Thần Châu, Thiên Đế mở rộng cửa Lăng Tiêu Thành, dụ lệnh chỉ phàm là người có thể chiến thắng Tru Tiên Nguyên Giám, sẽ ban cho pháp bảo vô thượng. "
-- 			}
-- MenologyBattleField['Hà Dương Kịch Biến'] = 
-- 			{ 
-- 				id=222, tmplid=821, iconpath1="河阳巨变.dds", iconpath2="河阳巨变大.dds", iconpath3="icon\\Menology_huiwu.tga", 
-- 				rewardtype=0, maskinfo=0, name="河阳剧变" , ismendisplay=false, mendisplaylevel=123, 
-- 				validtime="0:00-24:00", levelreq="105-160", needreborn=false, permitcount=1, cond="", 
-- 				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="A Dư", istaskaward=false, taskid="1", 
-- 				award=
-- 				{
-- 					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aThái Cực Kim Đan\r\r^ffffffSau khi nhận được tự động nâng cao tu vi."}, 
-- 					{awardid=21345, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
-- 					{awardid=53801, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
-- 					{awardid=53803, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
-- 					{awardid=62396, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
-- 				}, 
-- 				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="487, 490, 289", istransport=true, 
-- 				desc="^FFCB4A       Tà ma đương đạo, thiên nộ nhân oán. Vô sô dị biến kỳ lạ khiến thành Hà Dương ngày xưa nghiễm nhiên trở thành luyện ngục nhân gian. Oán tinh bàn sinh, chích ma hoành hành, bạch cốt doanh dã, phá toái hư không, các loại điềm báo như khiêu chiến chính đạo thế gian. Lúc này, các tộc và tinh anh môn phái tụ tập thành Hà Dương, muốn dưới sự thống lĩnh của 3 vị nhân vật linh hồn cứu chữa thương thế của mảnh đất Hà Dương, ngươi đã sẵn sàng chưa?"
-- 			}
-- MenologyBattleField['Phụ bản Thú Thần']=
-- 			{ 
-- 				id=223, tmplid=1064, iconpath1="剿杀兽神的叹息.dds", iconpath2="剿杀兽神的叹息大.dds", iconpath3="icon\\Menology_huiwu.tga", 
-- 				rewardtype=0, maskinfo=0, name="剿杀！兽神之叹息" , ismendisplay=false, mendisplaylevel=127, 
-- 				validtime="0:00-24:00", levelreq="150-160", needreborn=true, permitcount=1, cond="", 
-- 				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Nam Cương Đặc Sứ", istaskaward=false, taskid="1", 
-- 				award=
-- 				{
-- 					{awardid=65833, awardiconpath="衣服类.dds", awarddesc="^ffcb4aTứ Thánh Chi Thư\r^ffffff dùng cho thiên thư Giới Diện Chi Trung"}, 
-- 					{awardid=65931, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
-- 					{awardid=65937, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
-- 					{awardid=65943, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
-- 					{awardid=66739, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
-- 				}, 
-- 				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="492, 490, 293", istransport=true, 
-- 				desc="^FFCB4A       Thú Thần từ cuộc chiến Thanh Vân Sơn, dưới sự giúp đỡ của Thiên Niên Hồ Yêu Tiểu Bạch bại lui về Thập Vạn Đại Sơn, nhưng nơi nó ẩn thân đã bị lộ, vô số kẻ tu chân theo đến, muốn một đòn giết chết nó. Thập Vạn Đại Sơn yên tĩnh nghìn năm từ đó huyên náo không dứt, là trừ yêu vệ đạo để chứng chính nghĩa thế gian hay mộ danh bí thuật và bảo tàng Vu Tộc trong truyền thuyết, tất cả ở sự lựa chọn của ngươi.\r Đúng như cái gọi là núi hiểu người không hiểu, phân tranh không ngừng. Tự cho nghịch thiên phá đại đạo, hậu thế hãm phân tranh."
-- 			}
-- MenologyBattleField['Thiên quan tứ phúc [ tài thần ]'] = 
-- 			{ 
-- 				id=224, tmplid=789, iconpath1="财神副本.dds", iconpath2="财神副本大.dds", iconpath3="icon\\Menology_huiwu.tga", 
-- 				rewardtype=0, maskinfo=0, name="Thiên quan tứ phúc [ tài thần ]" , ismendisplay=false, mendisplaylevel=125, 
-- 				validtime="0:00-24:00", levelreq="90-160", needreborn=true, permitcount=3, cond="", 
-- 				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="巡游人间的仙官", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=58665, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
-- 					{awardid=58663, awardiconpath="衣服类.dds", awarddesc="^ffcb4aTrang bị phi thăng\r^ffffff Đẳng Cấp：Phi thăng 140"}, 
-- 					{awardid=58664, awardiconpath="衣服类.dds", awarddesc="^ffcb4aĐạo cụ thăng cấp\r^ffffff Thăng cấp trang bị"}, 
-- 					{awardid=14065, awardiconpath="衣服类.dds", awarddesc="^ffcb4aBằng chứng nhận thưởng\r^ffffffCó thể đổi Hỗn Nguyên Tinh（Cấp 9）hoặc Kim Tinh（Cấp 9）"}, 
-- 					{awardid=56030, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
-- 				}, 
-- 				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="479, 490, 307", istransport=true, 
-- 				desc="^FFCB4A       Đây là vùng đất thần bí hiếm có trong nhân gian. Nghe nói Thần Tài và Đồng Tử của hắn từng xuất hiện trong thời buổi loạn lạc này.\r Nhưng Thần Tiên rốt cuộc hết sức huyền ảo, tin thì là duyên, không tin cũng là duyeeen~ tiên hữu nếu có thể tìm được manh mối thì ta sẽ mở con đường cho ngươi vào đó.\r Nhưng nơi này hung hiểm dị thường, nhớ mời các tiên hữu đến đó, tuyệt đối không thể một mình mạo hiểm. Còn có tìm được tiên duyên hay không phải xem tạo hóa của ngươi."
-- 			}
-- MenologyBattleField['Thiên Quan Đồng Tử']=
-- 			{ 
-- 				id=225, tmplid=788, iconpath1="童子副本.dds", iconpath2="童子副本大.dds", iconpath3="icon\\Menology_huiwu.tga", 
-- 				rewardtype=0, maskinfo=0, name="天官赐福（童子）" , ismendisplay=false, mendisplaylevel=125, 
-- 				validtime="0:00-24:00", levelreq="90-160", needreborn=true, permitcount=3, cond="", 
-- 				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="金童", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=58663, awardiconpath="衣服类.dds", awarddesc="^ffcb4aTrang bị phi thăng\r^ffffff Đẳng Cấp：Phi thăng 140"}, 
-- 					{awardid=58664, awardiconpath="衣服类.dds", awarddesc="^ffcb4a升级模具\r^ffffff升级装备的必备道具。"},
-- 					{awardid=14065, awardiconpath="衣服类.dds", awarddesc="^ffcb4a领奖凭证\r^ffffff可凭此兑换混元天晶（9阶）或金精铁玉（9阶）"},
-- 					{awardid=56030, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aLượng lớn exp"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="479,490,307", istransport=true, 
-- 				desc="^FFCB4A       此乃人间罕至的神秘之地。据说财神及其座下童子曾现身这时光乱流之中。\r然而神仙之说毕竟玄乎其玄，信是缘、不信亦是缘～仙友若是能寻到蛛丝马迹，我便为你开启通道传入其中。\r然而此地凶险异常，切记邀请一丛仙友前往，万万不可孤身犯险。至于能否觅得仙缘，就要看你们的造化了。"
-- 			}
-- MenologyBattleField['Thập thần（150-155）'] = 
-- 			{ 
-- 				id=226, tmplid=837, iconpath1="十神宝窟副本1.dds", iconpath2="十神宝窟副本1大.dds", iconpath3="icon\\Menology_huiwu.tga", 
-- 				rewardtype=0, maskinfo=0, name="Thập thần（150-155）" , ismendisplay=false, mendisplaylevel=127, 
-- 				validtime="0:00-24:00", levelreq="150-155", needreborn=true, permitcount=1, cond="", 
-- 				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="问道灵君", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=60426, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=21345, awardiconpath="衣服类.dds", awarddesc="^ffcb4a升级模具\r^ffffff升级装备的必备道具。"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="484,490,291", istransport=true, 
-- 				desc="^FFCB4A       仙魔之界有一处禁地，曾有凡人误入却只一人逃出。据其言禁地中有十座神塔，光华炫目不能直视，塔下压有十神，唯有破其塔，塔下之神方能脱身。十神曾言若有仙侠能救其脱大难者，必有厚报。若你对自己有信心，可前往一试。"
-- 			}
-- MenologyBattleField['Thập thần（156-160）'] = 
-- 			{ 
-- 				id=227, tmplid=838, iconpath1="十神宝窟副本2.dds", iconpath2="十神宝窟副本2大.dds", iconpath3="icon\\Menology_huiwu.tga", 
-- 				rewardtype=0, maskinfo=0, name="Thập thần（156-160）" , ismendisplay=false, mendisplaylevel=128, 
-- 				validtime="0:00-24:00", levelreq="156-160", needreborn=true, permitcount=1, cond="", 
-- 				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="问道灵君", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=60430, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=21345, awardiconpath="衣服类.dds", awarddesc="^ffcb4a升级模具\r^ffffff升级装备的必备道具。"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="484,490,291", istransport=true, 
-- 				desc="^FFCB4A       仙魔之界有一处禁地，曾有凡人误入却只一人逃出。据其言禁地中有十座神塔，光华炫目不能直视，塔下压有十神，唯有破其塔，塔下之神方能脱身。十神曾言若有仙侠能救其脱大难者，必有厚报。若你对自己有信心，可前往一试。"
-- 			}
-- MenologyBattleField['Tứ Tượng Cung'] = 
-- 			{ 
-- 				id=228, tmplid=690, iconpath1="四象宫副本.dds", iconpath2="四象宫副本大.dds", iconpath3="icon\\Menology_huiwu.tga", 
-- 				rewardtype=0, maskinfo=0, name="Tứ Tượng Cung" , ismendisplay=false, mendisplaylevel=126, 
-- 				validtime="0:00-24:00", levelreq="120-160", needreborn=true, permitcount=1, cond="", 
-- 				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="四象真人", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=53550, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=21153, awardiconpath="衣服类.dds", awarddesc="^ffcb4a升级模具\r^ffffff升级装备的必备道具。"},
-- 					{awardid=21154, awardiconpath="衣服类.dds", awarddesc="^ffcb4a升级模具\r^ffffff升级装备的必备道具。"},
-- 					{awardid=21200, awardiconpath="衣服类.dds", awarddesc="^ffcb4a升级模具\r^ffffff升级装备的必备道具。"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="480,490,296", istransport=true, 
-- 				desc="^FFCB4A       四象宫，是洪荒大陆人宗弟子试炼之地。\r人宗弟子在宗门内修炼小成，需要通过四象宫试炼，才能获得在世间游历的资格。四象宫中以四象五行之力镇守，化为四象神兽，阴阳双子，寻常人难以通过。\r现人宗对外来修士开放此地，以期广纳福缘。\r各界修士可进入此地，修行历练，提升修为。"
-- 			}
MenologyBattleField['Thiên Cực Tháp'] = 
			{ 
				id=229, tmplid=1093, iconpath1="演武阵.dds", iconpath2="演武阵大.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="Thiên Cực Tháp" , ismendisplay=false, mendisplaylevel=121, 
				validtime="0:00-24:00", levelreq="30-160", needreborn=false, permitcount=3, cond="", 
				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Tam quan đại đế", istaskaward=false, taskid="1",
				award=
				{
					{awardid=66739, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
					{awardid=65940, awardiconpath="衣服类.dds", awarddesc="^ffcb4a升级模具\r^ffffff升级装备的必备道具。"},
					{awardid=57440, awardiconpath="衣服类.dds", awarddesc="^ffcb4a升级模具\r^ffffff升级装备的必备道具。"},
					{awardid=52399, awardiconpath="衣服类.dds", awarddesc="^ffcb4a升级模具\r^ffffff升级装备的必备道具。"},
					{awardid=22460, awardiconpath="衣服类.dds", awarddesc="^ffcb4a升级模具\r^ffffff升级装备的必备道具。"},
					{awardid=51713, awardiconpath="衣服类.dds", awarddesc="^ffcb4a升级模具\r^ffffff升级装备的必备道具。"},
				},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="476,490,300", istransport=true, 
				desc="^FFCB4A       Tại [ thần ma dị chí lục ] tàn hiệt trung, kí tái nhất phương canh vi thần bí đích thiên cực chi tháp, nghi đồng vi đốc thiên nguyên suất dĩ vô biên đại pháp lực thiết kiến, đãn kì khí thế chi hùng vĩ, khảo nghiệm chi hung hiểm khước thị thần vũ trấn nguyên tháp vô tòng bỉ nghĩ. Nguyên bổn nặc hình vu hạo hãn yên vân đích thử tháp, chung vu tại thiên địa động đãng chi tế tái hiện thế gian, vi tam quan đại đế sở phát hiện, tịnh tương kì trình hiện đáo tu chân giả đích diện tiền.\r thử tháp tuy tái vật vu vô cùng, khước hung hiểm vạn phân, thật nan do nhất nhân chi lực sở thắng nhâm, nhu kết bạn tiền vãng, phương khả bất hư thử hành。"
			}
-- MenologyBattleField['Linh Tộc Bí Khố'] = 
-- 			{ 
-- 				id=230, tmplid=722, iconpath1="演武阵.dds", iconpath2="演武阵大.dds", iconpath3="icon\\Menology_huiwu.tga", 
-- 				rewardtype=0, maskinfo=0, name="灵族秘库" , ismendisplay=false, mendisplaylevel=126, 
-- 				validtime="0:00-24:00", levelreq="135-160", needreborn=true, permitcount=1, cond="", 
-- 				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="霖琪", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=22343, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=62061, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=41668, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=23360, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=53802, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a神级饰品升级洗练道具\r^ffffff"}, 
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="", descmapid=44, descpos="224,280,449", istransport=true, 
-- 				desc="^FFCB4A       灵族秘库，乃是中州大陆的传说之地。中州灵气散逸，秘库之中的宝物也岌岌可危。灵族大长老决心开放秘库，凡大神通者均可前往挑战。入宝库可得混元天晶，以及各式神级魂石。"
-- 			}
MenologyBattleField['Thanh Nữ Mê Ca'] = 
			{ 
				id=231, tmplid=1319, iconpath1="秘藏青女的谜歌.dds", iconpath2="秘藏青女的谜歌大.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="Thanh Nữ Mê Ca" , ismendisplay=false, mendisplaylevel=127, 
				validtime="0:00-24:00", levelreq="155-160", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Đại hoang thánh mẫu", istaskaward=false, taskid="1",
				award=
				{
					{awardid=65937, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
					{awardid=65943, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
					{awardid=68823, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
					{awardid=68822, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
					{awardid=68824, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"}, 
				},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="492,490,295", istransport=true, 
				desc="^FFCB4A       西海之外，大荒之隅，有寒山覆雪成冰，终年不化，名曰西岭。\r    光阴混沌，数万载辗转而过，修真者的脚步轰然叩响世界尽头的大门，声震九霄，达于大荒，在冰雪中沉睡的传奇次第苏醒，誓要将号角吹响，传彻大地的每个角落。\r    最纯净的冰天雪地，最诡谲的变幻莫测，最畅快的修真探宝，最残忍的杀伐屠戮。\r    幸或不幸，无人能知。但，最丰盛的收获，一定伴随最艰难的探索。你，做好准备了吗？\r    正是：云渺三山射雪光，大荒寂寂覆参商。从来日月经时掩，西岭千秋青女霜。\r    大荒的世界，由此开始。"
			}
MenologyBattleField['Thánh Liên Tứ Phúc'] = 
			{ 
				id=232, tmplid=1406, iconpath1="圣莲赐福圣莲赐福.dds", iconpath2="圣莲赐福.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="圣莲赐福" , ismendisplay=false, mendisplaylevel=127, 
				validtime="0:00-24:00", levelreq="60-160", needreborn=false, permitcount=1, cond="", 
				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Đại hoang thánh mẫu", istaskaward=false, taskid="1",
				award=
				{
					{awardid=49143, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
					{awardid=49144, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
					{awardid=49145, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
					{awardid=70180, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
				},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="492,490,295", istransport=true, 
				desc="^FFCB4A       莲花有四德，一香、二净、三柔软、四可爱。\r圣莲为莲中圣品，千年 得花骨，万年方盛开。相传，得圣莲赐福者，可获无量修为，修真之路平步青云。\r如今圣莲即将绽放，灵气冲天，引得各路妖兽 蠢蠢欲动，意图抢得圣莲，为祸人间。\r善良的修真者，若能护莲之圣洁，圣莲必有厚报。"
			}
-- MenologyBattleField['Hắc Thạch Hỏa Long Động'] = 
-- 			{ 
-- 				id=233, tmplid=1478, iconpath1="圣莲赐福圣莲赐福.dds", iconpath2="圣莲赐福.dds", iconpath3="icon\\Menology_huiwu.tga", 
-- 				rewardtype=0, maskinfo=0, name="黑石火龙洞副本" , ismendisplay=false, mendisplaylevel=127, 
-- 				validtime="0:00-24:00", levelreq="120-134", needreborn=false, permitcount=1, cond="", 
-- 				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Đại hoang thánh mẫu", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=10872, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=21153, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=21154, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=41668, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=22343, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="492,490,295", istransport=true, 
-- 				desc="^80ffff推荐级别：^faf7be120-134级，飞升120-134级\r^80ffff人数限制：^faf7be1-6人\r^80ffff次数限制：^faf7be每人每天一次\r^80ffff副本持续时间：^faf7be1小时\r^80ffff背景介绍：^faf7be流波海上天不夜，黑石渊下玉无缺。\r原本风平浪静、与世无争的小池镇，近日屡屡传出妖孽横行的消息。镇上的居民纷纷告诫路过的旅人，千万不要涉足镇外的森林，那里不仅常年氤氲着不散的浓雾，夜里更是有可怖的咆哮声传来。小池镇的镇长猜测一切异象都源自森林里的一处名为黑石洞的地方，又有谁能来为民除害去黑石洞一探究竟呢？\r与此同时，焚香谷秘宝“玄火鉴”多年前已失踪的消息不胫而走，何等厉害的妖物能从玄火坛内盗走这天下至宝？而这一切又隐隐约约和这小池镇外的黑石洞息息相关，若是“玄火鉴”的秘密被魔教妖人掌握，势必掀起一股腥风血雨，正教安危系于一线！"
-- 			}
-- MenologyBattleField['Thủ Vệ Thanh Vân Phó Bản'] = 
-- 			{ 
-- 				id=234, tmplid=1605, iconpath1="演武阵.dds", iconpath2="演武阵大.dds", iconpath3="icon\\Menology_huiwu.tga", 
-- 				rewardtype=0, maskinfo=0, name="守卫青云副本" , ismendisplay=false, mendisplaylevel=127, 
-- 				validtime="0:00-24:00", levelreq="120-134", needreborn=false, permitcount=1, cond="", 
-- 				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Đại hoang thánh mẫu", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=74272, awardiconpath="白珠.dds", awarddesc="^ffcb4a可以前往守卫青云副本陆雪琪处换取一些好东西"},
-- 					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="492,490,295", istransport=true, 
-- 				desc="^ffffff       一向宁静平和的青云山风云色变，妖魔乱舞，青云圣物危在旦夕。道玄真人广邀天下正道英杰前往青云斩妖除魔，守卫青云圣物。快去助他一臂之力！"
-- 			}	
-- MenologyBattleField['Trấn Ma Cổ Động'] = 
-- 			{ 
-- 				id=235, tmplid=1681, iconpath1="圣莲赐福圣莲赐福.dds", iconpath2="圣莲赐福.dds", iconpath3="icon\\Menology_huiwu.tga", 
-- 				rewardtype=0, maskinfo=0, name="镇魔古洞副本" , ismendisplay=false, mendisplaylevel=127, 
-- 				validtime="0:00-24:00", levelreq="160-170", needreborn=true, permitcount=1, cond="", 
-- 				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Đại hoang thánh mẫu", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=13425, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=41171, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=41668, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=22343, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=21200, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"}, 
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="492,490,295", istransport=true, 
-- 				desc="^80ffff推荐级别：^faf7be135-150级，飞升135-150级\r^80ffff人数限制：^faf7be3-6人\r^80ffff次数限制：^faf7be每人每天一次\r^80ffff副本持续时间：^faf7be1小时\r^80ffff背景介绍：^faf7be兽神横空出世，率大批妖兽肆虐神州，一时间生灵涂炭，苍生谈之色变。欲究其来历而深入南疆腹地者，无不以消声灭迹告终。近日，更有传言提及兽神一事实则为南疆古巫族萧墙之变，而祸及神州也！幻世如泡影，浮生忍回顾。立即前往镇魔古洞，一探究竟！"
-- 			}
MenologyBattleField['Ngũ Độc Kỳ Công Xâm'] = 
			{ 
				id=236, tmplid=1745, iconpath1="圣莲赐福.dds", iconpath2="圣莲赐福.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="Ngũ Độc Kỳ Công Xâm" , ismendisplay=false, mendisplaylevel=127, 
				validtime="0:00-24:00", levelreq="160-170", needreborn=false, permitcount=1, cond="", 
				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Đại hoang thánh mẫu", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=65937, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
					{awardid=65943, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
					{awardid=75960, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
				},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="105,149,292", istransport=true, 
				desc="^FFCB4A       Hồng hoang chi cảnh, vu địa kì tây, hữu điện vũ tráng khoát cao tủng, âm sâm thảm nhiên, bất tri kì thâm kỉ hứa. Bổn danh yên diệt bất tri, nhân tương truyện hữu ma thần u cư kì trung, tà thần ngũ độc củng vệ tọa hạ, toại danh vi ma thần điện.\r cổ lai binh sát lệ khí, đa hối tập chí thử, nhân cận thử xử, mạc bất vi âm tà chi khí xâm nhiễu, hoặc tham, hoặc si, hoặc sân, hoặc oán, hoặc nghi, lục thần hào loạn, tâm ma đột sinh;\r truyện ngôn ma thần điện trung nhân tâm sở hoài âm tà chi niệm, tẫn vi ngũ độc sở dụng hóa vi ma quái, nhất niệm bất thận tiện vi ngũ độc sở thôn phệ. Hóa tác tây hoang cư dân thâm dĩ vi hại, ngôn đàm chi trung, tị kì danh húy: Kì úy như thử.\r đãn dã hữu nhân bất cụ ma thần uy thế, tiền vãng ma thần điện dữ ngũ độc trường chiến bất hưu, hoặc vi tuân tuần thần vương cổ đạo, tru lục ma thần, tự kiểm kì tâm;\r hoặc vi cầu đạo hành tăng trường, ngạo thị ngũ độc, dĩ thân chứng thành; Vô luận nguyên nhân như hà, đại đại tu chân chi nhân giai nhu lũ bại lũ chiến, bách chuyển thiên hồi, tài đắc tích thối tâm ma, chung thường sở nguyện. Đạp nhập tây hoang đích nhĩ, khả nguyện tiền vãng ma thần điện vũ, dữ ngũ độc trường chiến?\r thử nhất tiết: Ma điện nguy nguy xuất tây hoang, ngũ độc tiêu sát dẫn thương hoàng; Bách chiến hào ca tuyệt tình xử, ma đắc trường phong trảm tâm lang."
			}
MenologyBattleField['Gia Tộc Phủ Đệ'] = 
			{ 
				id=237, tmplid=1718, iconpath1="圣莲赐福.dds", iconpath2="圣莲赐福.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="Gia Tộc Phủ Đệ" , ismendisplay=false, mendisplaylevel=127, 
				validtime="0:00-24:00", levelreq="60-170", needreborn=false, permitcount=1, cond="", 
				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Đại hoang thánh mẫu", istaskaward=false, taskid="1",
				award=
				{
					{awardid=76465, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=76481, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
					{awardid=76478, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
					{awardid=76485, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
					{awardid=76490, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
					{awardid=76494, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
									},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="105,149,292", istransport=true, 
				desc="^FFCB4A       Gia tộc thành viên phân công hợp tác, hoàn thành gia tộc quản gia phát phóng đích lao động nhâm vụ, căn cư hoàn thành đích hoàn mĩ trình tự, kết thúc hậu hưởng dụng phong thịnh gia tộc yến tịch, đắc đáo đích tưởng lệ đề thăng gia tộc “Tiến giai kĩ năng” Thục luyện độ, đồng thì khả tăng gia tự thân gia tộc cống hiến độ。"
			}
MenologyBattleField['Thiên khư'] = 
			{ 
				id=238, tmplid=1973, iconpath1="圣莲赐福.dds", iconpath2="圣莲赐福.dds", iconpath3="icon\\Menology_huiwu.tga", 
				rewardtype=0, maskinfo=0, name="Thiên khư" , ismendisplay=false, mendisplaylevel=127, 
				validtime="0:00-24:00", levelreq="90-170", needreborn=false, permitcount=1, cond="", 
				validday="1,2,3,4,5,6,7", displayday="Mỗi ngày", line="Kênh 1-15", npc="Đại hoang thánh mẫu", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=66739, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
					{awardid=79745, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
					{awardid=79529, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
				},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="105,149,292", istransport=true, 
				desc="^FFCB4A       Bình dã vô mộc, thâm uyên vô ngư, thiên giai kí một, thượng hữu thông cù.\r thượng hữu thông cù, phong trì vân khu, hoang lưu hạo đãng, kì danh thiên khư.\r thiên khư nguyên xưng thiên giai không cảnh, nguyên thị thiên mạch phong thần tế điện, cố thử tối nghi ngự kiếm phi không; Kì giới tại thiên mạch, cảnh tiếp hồng hoang, sở dĩ hựu thị thiên mạch cố thổ vãng lai thần châu thế giới đích thông lộ. Thử cảnh tối sơ do thiên mạch lục tổ khai sang, bị thiên kiếp lôi cức băng hủy hậu, canh danh vi thiên khư, nguyên do họa ảnh tộc nhân thế đại chủ trì trấn thủ. Bất liêu thiên mạch đại địa biến cố đột sinh, kế kì tha thị tộc chi hậu, họa ảnh nhất tộc dã bất đắc bất kinh do thiên khư lục tục tị họa vu thần châu, tịnh lực đồ kích thối truy sát giả, phong bế thiên khư, dĩ tị kì phong。"
			}
function MenologyBattleField:GetSelf()
	return self;
end

MenologyMonster = {}
MenologyMonster['蛙王'] = 
			{ 
				id=632, iconpath1="蛙王.dds", iconpath2="Models\\NPCs\\怪物\\爬虫\\青蛙\\蛙王.ecm", 
				rewardtype=110101, maskinfo=0, name="蛙王", ismendisplay=false, mendisplaylevel=5,
				validtime="0:00-24:00", levelreq="1", needreborn=false, permitcount=1, cond="", 
				validday="1,2,3,4,5,6,7", line="2线", npc="蛙王", istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：10级"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：10级"},
				},
				commendlevel=4, istasknpc=false, descnpc="", descmapid=401, descpos="696,470,308", istransport=true, 
				npclv=11, refreshperiod="8小时", recommendlv="15", recommendplayernum="1", 
				desc="^ffffff       受兽妖妖气影响，变成了半妖的蛙类，通体红色，形态凶恶，以妖气将其附近的青蛙都制住，且不时出来伤人。"
			}
MenologyMonster['悍匪'] = 
			{ 
				id=633, iconpath1="悍匪.dds", iconpath2="Models\\NPCs\\怪物\\BOSS\\八荒火龙\\八荒火龙.ecm", 
				rewardtype=0, maskinfo=0, name="悍匪", ismendisplay=false, mendisplaylevel=6, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="7线", npc="悍匪", istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：10级"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：10级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="131,455,634", istransport=true, 
				npclv=15, refreshperiod="8小时", recommendlv="15", recommendplayernum="1", 
				desc="^ffffff       土匪小头目，原为名门子弟，因品行不端被逐出，从此加入土匪一列，其功力高于一般匪众，受命于匪首，时常前往恶虎岗巡视。"
			}
MenologyMonster['神火教长老'] = 
			{ 
				id=634, iconpath1="神火教长老.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="神火教长老", ismendisplay=false, mendisplaylevel=7, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="4线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：10级"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：10级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="740,451,165", istransport=true, 
				npclv=18, refreshperiod="8小时", recommendlv="25", recommendplayernum="1", 
				desc="^ffffff       神火教长老，其教义推崇火神，长老功力高强，在神火教中颇有威望，仅次于其教教主。护教之心甚笃，绝不放过任何闯入神火教坛的人。"
			}
MenologyMonster['金刚'] = 
			{ 
				id=635, iconpath1="金刚.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="金刚", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="8线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：25级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a散仙套装及武器\r^ffffff适合等级：30级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=2, descpos="-63,0,34", istransport=true, 
				npclv=23, refreshperiod="8小时", recommendlv="25", recommendplayernum="1", 
				desc="^ffffff       一只神奇的棕毛大猩猩，体高力大，长年长于山野，奔跑迅速，有着不为人知的往事。"
			}
MenologyMonster['神火魔祖'] = 
			{ 
				id=636, iconpath1="神火魔祖.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="神火魔祖", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="4线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：25级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a散仙套装及武器\r^ffffff适合等级：30级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=2, descpos="-445,0,-363", istransport=true, 
				npclv=34, refreshperiod="8小时", recommendlv="35", recommendplayernum="1", 
				desc="^ffffff       神火教教主，其教义推崇火神，教主功力非同一般，世人少有匹敌者，若有人闯入神火教圣坛被其发现，通常凶多吉少。"
			}
MenologyMonster['巨熊妖'] = 
			{ 
				id=637, iconpath1="巨熊妖.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="巨熊妖", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="8线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：40级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a散仙套装及武器\r^ffffff适合等级：45级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=3, descpos="-329,0,-24", istransport=true, 
				npclv=50, refreshperiod="8小时", recommendlv="50", recommendplayernum="1", 
				desc="^ffffff       棕色的熊妖，力大无穷，奔跑迅速，生性既猛且蠢，遇到人便穷追猛扑，一掌可将人畜拍成肉饼。"
			}
MenologyMonster['噬血恶僧'] = 
			{ 
				id=638, iconpath1="噬血恶僧.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="噬血恶僧", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="5线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：40级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a散仙套装及武器\r^ffffff适合等级：45级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=3, descpos="-293,312,304", istransport=true, 
				npclv=50, refreshperiod="8小时", recommendlv="50", recommendplayernum="1", 
				desc="^ffffff       遥远国度而来的邪教僧人，坚信只有食用人肉才能长生不老，平日躲藏在众僧人之间，唯有寻找活人食用时方现出真身，已有多名修真者欲将其除去反为其所害。"
			}
MenologyMonster['骷髅将军'] = 
			{ 
				id=639, iconpath1="骷髅将军.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="骷髅将军", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="10线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：40级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a散仙套装及武器\r^ffffff适合等级：45级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=3, descpos="125,0,346", istransport=true, 
				npclv=50, refreshperiod="8小时", recommendlv="50", recommendplayernum="1", 
				desc="^ffffff       此物生前本为修道之人，因死后葬身之处为妖气所腐蚀，并赋予其强烈的杀意，从此变为恶灵，统领众骷髅魔兵，祸害人间。"
			}
MenologyMonster['渔人蛛'] = 
			{ 
				id=640, iconpath1="渔人蛛.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="渔人蛛", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="6线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：60级"}, 
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：55级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：60级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=4, descpos="-159,0,394", istransport=true, 
				npclv=65, refreshperiod="8小时", recommendlv="65", recommendplayernum="1", 
				desc="^ffffff       凶残的水生蜘蛛，毒性巨大，爬行速度极快，擅长猎杀其他生物，即使不用毒液也能轻松捕获猎物。"
			}
MenologyMonster['海盗船长'] = 
			{ 
				id=641, iconpath1="海盗船长.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="海盗船长", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="2线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：60级"}, 
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：55级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：60级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=4, descpos="10,65,-229", istransport=true, 
				npclv=65, refreshperiod="8小时", recommendlv="65", recommendplayernum="1", 
				desc="^ffffff       长年漂泊在海上的海盗头目，疯狂的海上掠夺者，擅长水陆两栖作战，对财宝十分贪婪，偶尔会回到流波海域补给船只。"
			}
MenologyMonster['犀甲之王'] = 
			{ 
				id=642, iconpath1="犀甲之王.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="犀甲之王", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="7线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：60级"}, 
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：55级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：60级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=4, descpos="-418,0,-411", istransport=true, 
				npclv=65, refreshperiod="8小时", recommendlv="65", recommendplayernum="1", 
				desc="^ffffff       擅长战斗的犀甲人首领，身材高大威猛，能以一敌百，身上的犀甲可同时发挥进攻和防守的作用，穿在身上如虎添翼。"
			}
MenologyMonster['死泽鱼妖'] = 
			{ 
				id=643, iconpath1="死泽鱼妖.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="死泽鱼妖", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="3线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：75级"}, 
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：70级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：75级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=5, descpos="267,0,306", istransport=true, 
				npclv=80, refreshperiod="8小时", recommendlv="80", recommendplayernum="1", 
				desc="^ffffff       鱼人族中的精锐，武功高强，能说人语，还可以使用异族法术。常出现在阴冷幽暗的沼泽深处。"
			}
MenologyMonster['万虫之母'] = 
			{ 
				id=644, iconpath1="万虫之母.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="万虫之母", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="8线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：75级"}, 
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：70级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：75级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=5, descpos="371,0,55", istransport=true, 
				npclv=80, refreshperiod="8小时", recommendlv="80", recommendplayernum="1", 
				desc="^ffffff       沼泽中的毒虫之首，能大量繁殖毒虫，吞噬方圆十里之内的生物，人畜遇上无一幸免。"
			}
MenologyMonster['死泽厉鬼'] = 
			{ 
				id=645, iconpath1="死泽厉鬼.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="死泽厉鬼", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="4线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：75级"}, 
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：70级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：75级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=5, descpos="-148,0,144", istransport=true, 
				npclv=80, refreshperiod="8小时", recommendlv="80", recommendplayernum="1", 
				desc="^ffffff       误入死亡沼泽的修道中人，困死在幽暗的沼泽里，临死前的怨念与不甘成为戾气，使之难入轮回，化为厉鬼存于沼泽中。"
			}
MenologyMonster['金瞳妖蝠'] = 
			{ 
				id=673, iconpath1="金瞳妖蝠.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="金瞳妖蝠", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="6线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：75级"}, 
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：70级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：75级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=9, descpos="302,0,-416", istransport=false, 
				npclv=81, refreshperiod="8小时", recommendlv="85", recommendplayernum="1", 
				desc="^ffffff       蝙蝠之王，已修炼千年，双目呈金色，锐利的眼神夺人心智，双翼展开可达三米，阻挡一切敌人的退路。"
			}
MenologyMonster['炼血死士'] = 
			{ 
				id=674, iconpath1="炼血死士.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="炼血死士", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="2线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：75级"}, 
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：70级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：75级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=9, descpos="319,0,-262", istransport=false, 
				npclv=81, refreshperiod="8小时", recommendlv="85", recommendplayernum="1", 
				desc="^ffffff       练血堂的中坚力量，不惧生死，僵尸一般的存在，需吸食人畜之血维持生机。"
			}
MenologyMonster['黑水玄蛇'] = 
			{ 
				id=675, iconpath1="黑水玄蛇.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="黑水玄蛇", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="7线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：75级"}, 
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：70级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：75级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=9, descpos="-335,0,-431", istransport=false, 
				npclv=81, refreshperiod="8小时", recommendlv="85", recommendplayernum="1", 
				desc="^ffffff       上古魔兽，凶悍无比。蛇身粗逾四丈，长逾百丈。食神仙药而不死，寿过万年，非之天敌黄鸟不能除之。"
			}
MenologyMonster['大黑蛭'] = 
			{ 
				id=676, iconpath1="大黑蛭.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="大黑蛭", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="3线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：90级"}, 
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：85级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：90级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=12, descpos="-158,0,154", istransport=false, 
				npclv=96, refreshperiod="24小时", recommendlv="100", recommendplayernum="1", 
				desc="^ffffff       体型巨大的怪物，长年生活于地下，不见阳光，浑身长满触角，以触角吸引一切活物做食物，近其身绝不可活。出现在黑石洞地宫。"
			}
MenologyMonster['焰魔'] = 
			{ 
				id=677, iconpath1="焰魔.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="焰魔", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="2线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：90级"}, 
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：85级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：90级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=12, descpos="-339,0,264", istransport=false, 
				npclv=96, refreshperiod="8小时", recommendlv="100", recommendplayernum="1", 
				desc="^ffffff       火之守护兽，守护着万火之精，寻常水源无法扑灭，可焚烧天地万物。出现在黑石洞地宫。"
			}
MenologyMonster['洪荒兽王'] = 
			{ 
				id=681, iconpath1="洪荒兽王.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="洪荒兽王", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="9线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：90级"}, 
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：85级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：90级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=6, descpos="-306,0,-227", istransport=true, 
				npclv=95, refreshperiod="8小时", recommendlv="100", recommendplayernum="1", 
				desc="^ffffff       蛮荒之地特有的种族，身体高大，凶恶丑陋，但力大无穷，铜身铁臂，具有刀枪不入的体格。"
			}
MenologyMonster['血狮'] = 
			{ 
				id=647, iconpath1="血狮.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="血狮", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="5线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：90级"}, 
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：85级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：90级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=6, descpos="-336,0,-236", istransport=true, 
				npclv=95, refreshperiod="8小时", recommendlv="100", recommendplayernum="1", 
				desc="^ffffff       十三妖王之一的狮王，全身通红，似以鲜血浸染，凶残狡猾，并具备高强的妖法。"
			}
MenologyMonster['玄冥幽鬼'] = 
			{ 
				id=648, iconpath1="玄冥幽鬼.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="玄冥幽鬼", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="10线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：90级"}, 
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：85级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：90级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=6, descpos="-405,0,128", istransport=true, 
				npclv=95, refreshperiod="8小时", recommendlv="100", recommendplayernum="1", 
				desc="^ffffff       游荡并横行玄冥之界的鬼魂，怨灵的一种，不惧生死，不入轮回，对活人有着强烈的敌意。"
			}
MenologyMonster['熔岩之王'] = 
			{ 
				id=679, iconpath1="熔岩之王.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="熔岩之王", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="4线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：90级"}, 
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：85级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：90级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=12, descpos="243,0,-234", istransport=false, 
				npclv=96, refreshperiod="8小时", recommendlv="100", recommendplayernum="1", 
				desc="^ffffff       生活在熔岩之中的恐怖魔兽，擅长用熔岩的力量攻击其他一切生物，若离开熔岩，便失去所有力量。"
			}
MenologyMonster['咆哮之王'] = 
			{ 
				id=680, iconpath1="咆哮之王.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="咆哮之王", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="9线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：90级"}, 
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：85级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：90级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=12, descpos="-89,0,-212", istransport=false, 
				npclv=96, refreshperiod="8小时", recommendlv="100", recommendplayernum="1", 
				desc="^ffffff       性格残暴，声如厉雷的猛兽，生性既猛且蠢，空具一身蛮力，可智取不可强夺。"
			}
MenologyMonster['黄鸟'] = 
			{ 
				id=5592, iconpath1="黄鸟.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="黄鸟", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="10线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a兽神套装及武器\r^ffffff适合等级：90级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：90级"}, 
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：85级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=12, descpos="156,0,-265", istransport=false, 
				npclv=96, refreshperiod="24小时", recommendlv="100", recommendplayernum="1", 
				desc="^ffffff       四神兽之一的黄鸟，九天灵鸟，黑水玄蛇的天敌。"
			}
MenologyMonster['烛龙'] = 
			{ 
				id=5593, iconpath1="烛龙.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="烛龙", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="6线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a兽神套装及武器\r^ffffff适合等级：90级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：90级"}, 
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：85级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=12, descpos="460,0,-188", istransport=false, 
				npclv=96, refreshperiod="24小时", recommendlv="100", recommendplayernum="1", 
				desc="^ffffff       四神兽之一的烛龙，上古神兽，身长千里，神力烛照九泉。"
			}
MenologyMonster['夔牛'] = 
			{ 
				id=5594, iconpath1="夔牛.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="夔牛", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="2线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a兽神套装及武器\r^ffffff适合等级：90级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：90级"}, 
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：85级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=12, descpos="261,0,-96", istransport=false, 
				npclv=96, refreshperiod="24小时", recommendlv="100", recommendplayernum="1", 
				desc="^ffffff       四神兽之一的夔牛，入水即风雨，目光如日月，一足能走，其声如雷。"
			}
MenologyMonster['饕餮'] = 
			{ 
				id=5595, iconpath1="饕餮.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="饕餮", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="7线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a兽神套装及武器\r^ffffff适合等级：90级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：90级"}, 
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：85级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=12, descpos="115,0,-167", istransport=false, 
				npclv=96, refreshperiod="24小时", recommendlv="100", recommendplayernum="1", 
				desc="^ffffff       四神兽之一的饕餮，凶残好吃，见到什么吃什么，是兽妖的守护兽。"
			}
MenologyMonster['九命猫王'] = 
			{ 
				id=678, iconpath1="九命猫王.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="九命猫王", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="5线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：90级"}, 
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：85级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：90级"},
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=12, descpos="-223,0,-268", istransport=false, 
				npclv=96, refreshperiod="8小时", recommendlv="100", recommendplayernum="1", 
				desc="^ffffff       猫族的统治者，受妖气侵蚀，可使用妖法，具有不死之身。"
			}
MenologyMonster['鱼人王'] = 
			{ 
				id=5596, iconpath1="鱼人王.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="鱼人王", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="6线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff王道"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：85级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：105级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=7, descpos="357,113,355", istransport=true, 
				npclv=95, refreshperiod="8小时", recommendlv="100", recommendplayernum="1", 
				desc="^ffffff       鱼人族的统治者，武功高强，能说人语，会多种法术，身旁鱼人护卫众多，难以接近。"
			}
MenologyMonster['不死天尸'] = 
			{ 
				id=10491, iconpath1="不死天尸.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="不死天尸", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="2线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff龙啸"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：115级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：120级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：120级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=8, descpos="-378,0,289", istransport=true, 
				npclv=125, refreshperiod="8小时", recommendlv="100", recommendplayernum="1", 
				desc="^ffffff       传说中的千年古尸，一直出没于南疆万蛇殿中，汲取天地灵气补充法力。"
			}
MenologyMonster['八荒火龙'] = 
			{ 
				id=10492, iconpath1="八荒火龙.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="八荒火龙", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="8线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：115级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：120级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：120级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=14, descpos="-391,0,-101", istransport=false, 
				npclv=126, refreshperiod="8小时", recommendlv="100", recommendplayernum="1", 
				desc="^ffffff       “八荒玄火阵”的终极召唤灵物，南疆古老的巫族传说中，毁灭世间万物的可怕凶兽。"
			}
MenologyMonster['兽神'] = 
			{ 
				id=10493, iconpath1="兽神.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="兽神", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="不定", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：115级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a兽神套装及武器\r^ffffff适合等级：120级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：120级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=14, descpos="-358,0,356", istransport=false, 
				npclv=126, refreshperiod="不定", recommendlv="100", recommendplayernum="1", 
				desc="^ffffff       冷漠淡然的妖艳少年，为情而生，为爱而亡，与南疆巫女玲珑演绎了一场凄美的爱情神话。"
			}
MenologyMonster['玄冥鬼手'] = 
			{ 
				id=10487, iconpath1="玄冥鬼手.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="玄冥鬼手", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="4线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：115级"}, 
					{awardid=0, awardiconpath="武器类.dds", awarddesc="^ffcb4a真仙武器\r^ffffff适合等级：120级"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合等级：120级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=14, descpos="-386,0,235", istransport=false, 
				npclv=126, refreshperiod="8小时", recommendlv="100", recommendplayernum="1", 
				desc="^ffffff       天地浩劫产生的异物，戾气凝聚其上，具强大的杀气，被上古高人囚禁于镇魔古洞中。"
			}
MenologyMonster['昆仑奴'] = 
			{ 
				id=10669, iconpath1="昆仑奴.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="昆仑奴", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="7线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff神道"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a130级首饰"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：135级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a135级配方"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=10, descpos="-333,0,121", istransport=true, 
				npclv=135, refreshperiod="8.5小时", recommendlv="135", recommendplayernum="1", 
				desc="^ffffff       异族进贡的奴隶，本性情温良、踏实耿直，途中被妖兽所袭，沾染妖气，后于昆仑山胡乱修炼，汲取仙气，变成半妖半仙。"
			}
MenologyMonster['炼狱魔尊'] = 
			{ 
				id=15702, iconpath1="炼狱魔尊.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="炼狱魔尊", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="8线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff神道"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=0, awardiconpath="武器类.dds", awarddesc="^ffcb4a真仙武器\r^ffffff适合等级：148级"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合生产等级：10级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=17, descpos="-370,0,305", istransport=false, 
				npclv=155, refreshperiod="8小时", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       炼狱众魔之首，统率炼狱之中百鬼千魔，法力高强，凶猛残暴，可发毁天灭地之威。"
			}
MenologyMonster['妙翅鸟'] = 
			{ 
				id=15703, iconpath1="黄鸟.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="妙翅鸟", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="8线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff神道"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=0, awardiconpath="武器类.dds", awarddesc="^ffcb4a真仙武器\r^ffffff适合等级：148级"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合生产等级：10级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=17, descpos="-20,0,22", istransport=false, 
				npclv=155, refreshperiod="8小时", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       炼狱妙翅鸟蛋中孕育的神鸟，每当蛋壳破碎便可重生一次，为上古灵鸟之一。"
			}
MenologyMonster['黑心老人'] = 
			{ 
				id=13576, iconpath1="黑心老人.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="黑心老人", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="14线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff神道"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=0, awardiconpath="武器类.dds", awarddesc="^ffcb4a真仙武器\r^ffffff适合等级：148级"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合生产等级：10级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=16, descpos="-323,0,-52", istransport=false, 
				npclv=155, refreshperiod="不定", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       八百年前一统邪教的伟大人物，练成噬血珠，给人间带来极大祸害。"
			}
MenologyMonster['金铃夫人'] = 
			{ 
				id=13575, iconpath1="金铃夫人.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="金铃夫人", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="14线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff神道"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=0, awardiconpath="武器类.dds", awarddesc="^ffcb4a真仙武器\r^ffffff适合等级：148级"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合生产等级：10级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=16, descpos="-405,0,-221", istransport=false, 
				npclv=155, refreshperiod="不定", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       聪明绝顶，道行精深，对魔教经典天书有大悟于心，于三百年前独立创立“合欢派”，成为魔教中四大鼎盛门派之一。"
			}
MenologyMonster['普智'] = 
			{ 
				id=13579, iconpath1="普智.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="普智", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="14线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff神道"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=0, awardiconpath="武器类.dds", awarddesc="^ffcb4a真仙武器\r^ffffff适合等级：148级"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合生产等级：10级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=16, descpos="-13,0,-217", istransport=false, 
				npclv=155, refreshperiod="不定", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       天音寺四大神僧之一，心怀大智，欲参破长生之谜，在联合佛道二家的努力失败后，被噬血珠侵蚀心志，遁入魔道。"
			}
MenologyMonster['万剑一'] = 
			{ 
				id=13578, iconpath1="万剑一.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="万剑一", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="14线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff神道"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=0, awardiconpath="武器类.dds", awarddesc="^ffcb4a真仙武器\r^ffffff适合等级：148级"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合生产等级：10级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=16, descpos="-105,0,-76", istransport=false, 
				npclv=155, refreshperiod="不定", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       道行高深的青云弟子，性格潇洒豪放，资质惊人，于幻月洞中点化道玄，并将诛仙剑交予张小凡斩杀魔教。"
			}
MenologyMonster['法莲王'] = 
			{ 
				id=10670, iconpath1="法莲王.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="法莲王", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="3线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff神道"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：150级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合生产等级：10级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=11, descpos="358,185,-380", istransport=true, 
				npclv=155, refreshperiod="9小时", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       修罗七王之一，偶尔出现在修罗法莲寺中，汲取寺内生灵之气，提升法力。"
			}
MenologyMonster['归蝶王'] = 
			{ 
				id=10671, iconpath1="归蝶王.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="归蝶王", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="8线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff神道"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：150级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合生产等级：10级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=11, descpos="-156,141,102", istransport=true, 
				npclv=155, refreshperiod="9.5小时", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       修罗七王之一，偶尔出现在修罗界归蝶塔中，妖艳貌美，体态婀娜，法力高强。"
			}
MenologyMonster['天忍王'] = 
			{ 
				id=10672, iconpath1="天忍王.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="天忍王", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="4线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff神道"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：150级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合生产等级：10级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=11, descpos="133,141,102", istransport=true, 
				npclv=155, refreshperiod="10小时", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       修罗七王之一，偶尔出现在修罗界天忍塔内，全身披满钢甲，且可召唤坐骑魔獒，攻击敌人。"
			}
MenologyMonster['魔獒'] = 
			{ 
				id=10673, iconpath1="魔獒.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="魔獒", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="4线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff神道"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=0, awardiconpath="武器类.dds", awarddesc="^ffcb4a真仙武器\r^ffffff适合等级：148级"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合生产等级：10级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=11, descpos="133,141,102", istransport=true, 
				npclv=155, refreshperiod="10小时", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       修罗七王之天忍王的坐骑，性烈凶猛，忠实护主，若主人被攻击则不顾一切冲往敌人。"
			}
MenologyMonster['樱木王'] = 
			{ 
				id=10674, iconpath1="樱木王.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="樱木王", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="5线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff神道"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：150级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合生产等级：10级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=11, descpos="-384,138,71", istransport=true, 
				npclv=155, refreshperiod="11小时", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       修罗七王之一，同时拥有人与植物双重身体，长期的变异造成其性格的扭曲，对人怨念极深，死后魂灵也让人不得消停。"
			}
MenologyMonster['阴阳王'] = 
			{ 
				id=10675, iconpath1="阴阳王.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="阴阳王", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="10线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff神道"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：150级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合生产等级：10级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=11, descpos="-158,140,442", istransport=true, 
				npclv=155, refreshperiod="11.5小时", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       修罗七王之一，被枷锁束缚于其阴阳难分的巢穴之中，日日挣扎却始终无法解脱，倘若有人靠近，极有可能成为其深深怨气的发泄目标。"
			}
MenologyMonster['风火王'] = 
			{ 
				id=10676, iconpath1="风火王.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="风火王", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="6线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff神道"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：150级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合生产等级：10级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=11, descpos="407,122,309", istransport=true, 
				npclv=155, refreshperiod="12小时", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       修罗七王之一，居于修罗血池之中，双手可分别召唤风火之力，对入侵者绝不手软。"
			}
MenologyMonster['安土王'] = 
			{ 
				id=10677, iconpath1="安土王.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="安土王", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="2线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff神道"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：150级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合生产等级：10级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=11, descpos="-11,148,264", istransport=true, 
				npclv=155, refreshperiod="12.5小时", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       修罗七王之一，居于修罗大殿，身具大地之力，有震慑天地之威，多条手臂更为其增加了无穷的力量。"
			}
MenologyMonster['玄天上将'] = 
			{ 
				id=10678, iconpath1="玄天上将.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="玄天上将", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="9线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff天道"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：150级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合生产等级：10级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=15, descpos="-444,0,-237", istransport=false, 
				npclv=155, refreshperiod="24小时", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       相传为真武大帝座下侍将，真武大帝封剑隐去之后，将其留在昆仑仙境驻守。"
			}
MenologyMonster['Khai minh thú'] = 
			{ 
				id=10680, iconpath1="开明兽.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="开明兽", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="10线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff天道"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：150级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合生产等级：10级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=15, descpos="-16,0,85", istransport=false, 
				npclv=155, refreshperiod="8小时", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       昆仑山守护神之一，终日瞪视昆仑山，威震百灵，使得任何异常事物都无法进入昆仑，维护了昆仑仙境的平和安宁。"
			}
MenologyMonster['冰姹玄女'] = 
			{ 
				id=11563, iconpath1="冰姹玄女.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="冰姹玄女", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="7线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff天道"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：150级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备配方\r^ffffff适合生产等级：10级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=15, descpos="-50,0,186", istransport=false, 
				npclv=155, refreshperiod="8小时", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       昆仑之巅的守护神，召唤玄冰之力，护住昆仑山，使凡人异物难以闯入。"
			}
MenologyMonster['混沌'] = 
			{ 
				id=10679, iconpath1="混沌.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="混沌", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="5线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff天道"}, 
					{awardid=0, awardiconpath="戒指类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙套装及武器\r^ffffff适合等级：150级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=15, descpos="391,0,400", istransport=false, 
				npclv=155, refreshperiod="8小时", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       镇压在昆仑之西的神兽，有目而不见，有耳而不闻，有腹无五脏，有肠直而不旋，难辨是非善恶不明之兽。"
			}
MenologyMonster['邪恶先锋·凯'] = 
			{ 
				id=22107, iconpath1="战神·龙戊.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="邪恶先锋·凯", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="不定", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=23360, awardiconpath="", awarddesc="^ffcb4a千华龙筋"},
					{awardid=0, awardiconpath="鞋子类.dds", awarddesc="^ffcb4a真仙鞋\r^ffffff适合等级：144级"}, 
					{awardid=0, awardiconpath="鞋子类.dds", awarddesc="^ffcb4a坤系列鞋\r^ffffff适合等级：飞升135级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=10, descpos="-347,121,-117", istransport=true, 
				npclv=150, refreshperiod="不定", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       八级战魂之一，被封印在八卦镇石之中，一旦封印开启，其便引领邪恶之力而来，需及时将其除去，否则天地剧变，苍生遭劫。"
			}
MenologyMonster['邪恶先锋·涛'] = 
			{ 
				id=22106, iconpath1="黑心老人.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="邪恶先锋·涛", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="不定", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=23360, awardiconpath="", awarddesc="^ffcb4a千华龙筋"},
					{awardid=0, awardiconpath="鞋子类.dds", awarddesc="^ffcb4a真仙鞋\r^ffffff适合等级：144级"}, 
					{awardid=0, awardiconpath="鞋子类.dds", awarddesc="^ffcb4a坤系列鞋\r^ffffff适合等级：飞升135级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=10, descpos="-364,121,-113", istransport=true, 
				npclv=150, refreshperiod="不定", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       八级战魂之一，被封印在八卦镇石之中，一旦封印开启，其便引领邪恶之力而来，需及时将其除去，否则天地剧变，苍生遭劫。"
			}
MenologyMonster['背叛者·娟'] = 
			{ 
				id=22252, iconpath1="金铃夫人.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="背叛者·娟", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="不定", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=23360, awardiconpath="", awarddesc="^ffcb4a千华龙筋"},
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙衣\r^ffffff适合等级：146级"}, 
					{awardid=0, awardiconpath="头盔类.dds", awarddesc="^ffcb4a坤系列帽子\r^ffffff适合等级：飞升135级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=8, descpos="-169,0,-83", istransport=true, 
				npclv=150, refreshperiod="不定", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       八级战魂之一，被封印在八卦镇石之中，一旦封印开启，其便引领邪恶之力而来，需及时将其除去，否则天地剧变，苍生遭劫。"
			}
MenologyMonster['背叛者·瞳'] = 
			{ 
				id=22251, iconpath1="背叛者·瞳.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="背叛者·瞳", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="不定", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=23360, awardiconpath="", awarddesc="^ffcb4a千华龙筋"},
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙衣\r^ffffff适合等级：146级"}, 
					{awardid=0, awardiconpath="头盔类.dds", awarddesc="^ffcb4a坤系列帽子\r^ffffff适合等级：飞升135级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=8, descpos="-165,0,-98", istransport=true, 
				npclv=150, refreshperiod="不定", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       八级战魂之一，被封印在八卦镇石之中，一旦封印开启，其便引领邪恶之力而来，需及时将其除去，否则天地剧变，苍生遭劫。"
			}
MenologyMonster['背叛者·宇'] = 
			{ 
				id=22253, iconpath1="玄天上将.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="背叛者·宇", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="不定", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=23360, awardiconpath="", awarddesc="^ffcb4a千华龙筋"},
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙衣\r^ffffff适合等级：146级"}, 
					{awardid=0, awardiconpath="头盔类.dds", awarddesc="^ffcb4a坤系列帽子\r^ffffff适合等级：飞升135级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=8, descpos="-147,0,-99", istransport=true, 
				npclv=150, refreshperiod="不定", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       八级战魂之一，被封印在八卦镇石之中，一旦封印开启，其便引领邪恶之力而来，需及时将其除去，否则天地剧变，苍生遭劫。"
			}
MenologyMonster['密探·永'] = 
			{ 
				id=23165, iconpath1="黑心老人.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="密探·永", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="不定", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=23360, awardiconpath="", awarddesc="^ffcb4a千华龙筋"},
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a真仙衣\r^ffffff适合等级：146级"}, 
					{awardid=0, awardiconpath="头盔类.dds", awarddesc="^ffcb4a坤系列帽子\r^ffffff适合等级：飞升135级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=7, descpos="242,0,19", istransport=true, 
				npclv=150, refreshperiod="不定", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       八级战魂之一，被封印在八卦镇石之中，一旦封印开启，其便引领邪恶之力而来，需及时将其除去，否则天地剧变，苍生遭劫。"
			}
MenologyMonster['冥界·古猿'] = 
			{ 
				id=35239, iconpath1="冥界·古猿.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="冥界·古猿", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="10线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=23360, awardiconpath="", awarddesc="^ffcb4a千华龙筋"},
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升135级"}, 
					{awardid=0, awardiconpath="武器类.dds", awarddesc="^ffcb4a真仙武器\r^ffffff适合等级：150级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=10, descpos="267,0,350", istransport=true, 
				npclv=150, refreshperiod="周一", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       冥界七王之一，利用人间的混乱冲破时空界点来到人间，从冥间带来的强大力量使其具有睥睨天下苍生之气魄，他们的目的只有一个：建造一个属于自己的全新的世界。"
			}
MenologyMonster['冥界·玄鸟'] = 
			{ 
				id=35240, iconpath1="黄鸟.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="冥界·玄鸟", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="10线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=23360, awardiconpath="", awarddesc="^ffcb4a千华龙筋"},
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升135级"}, 
					{awardid=0, awardiconpath="武器类.dds", awarddesc="^ffcb4a真仙武器\r^ffffff适合等级：150级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=5, descpos="-155,0,-394", istransport=true, 
				npclv=150, refreshperiod="周五", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff冥界七王之一，利用人间的混乱冲破时空界点来到人间，从冥间带来的强大力量使其具有睥睨天下苍生之气魄，他们的目的只有一个：建造一个属于自己的全新的世界。"
			}
MenologyMonster['冥界·饕餮'] = 
			{ 
				id=35242, iconpath1="饕餮.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="冥界·饕餮", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="10线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=23360, awardiconpath="", awarddesc="^ffcb4a千华龙筋"},
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升135级"}, 
					{awardid=0, awardiconpath="武器类.dds", awarddesc="^ffcb4a真仙武器\r^ffffff适合等级：150级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=4, descpos="-382,0,-361", istransport=true, 
				npclv=150, refreshperiod="周六", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff冥界七王之一，利用人间的混乱冲破时空界点来到人间，从冥间带来的强大力量使其具有睥睨天下苍生之气魄，他们的目的只有一个：建造一个属于自己的全新的世界。"
			}
MenologyMonster['冥界·圣使'] = 
			{ 
				id=35241, iconpath1="冥界·圣使.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="冥界·圣使", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="10线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=23360, awardiconpath="", awarddesc="^ffcb4a千华龙筋"},
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升135级"}, 
					{awardid=0, awardiconpath="武器类.dds", awarddesc="^ffcb4a真仙武器\r^ffffff适合等级：150级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=7, descpos="-371,0,17", istransport=true, 
				npclv=150, refreshperiod="周三", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       冥界七王之一，利用人间的混乱冲破时空界点来到人间，从冥间带来的强大力量使其具有睥睨天下苍生之气魄，他们的目的只有一个：建造一个属于自己的全新的世界。"
			}
MenologyMonster['冥界·天狼'] = 
			{ 
				id=35236, iconpath1="冥界·天狼.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="冥界·天狼", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="10线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=23360, awardiconpath="", awarddesc="^ffcb4a千华龙筋"},
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升135级"}, 
					{awardid=0, awardiconpath="武器类.dds", awarddesc="^ffcb4a真仙武器\r^ffffff适合等级：150级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=6, descpos="365,0,-382", istransport=true, 
				npclv=150, refreshperiod="周四", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       冥界七王之一，利用人间的混乱冲破时空界点来到人间，从冥间带来的强大力量使其具有睥睨天下苍生之气魄，他们的目的只有一个：建造一个属于自己的全新的世界。"
			}
MenologyMonster['冥界·血狮'] = 
			{ 
				id=35238, iconpath1="冥界·血狮.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="冥界·血狮", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="10线", npc="神火教长老", istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=23360, awardiconpath="", awarddesc="^ffcb4a千华龙筋"},
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升135级"}, 
					{awardid=0, awardiconpath="武器类.dds", awarddesc="^ffcb4a真仙武器\r^ffffff适合等级：150级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=8, descpos="344,0,362", istransport=true, 
				npclv=150, refreshperiod="周二", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff冥界七王之一，利用人间的混乱冲破时空界点来到人间，从冥间带来的强大力量使其具有睥睨天下苍生之气魄，他们的目的只有一个：建造一个属于自己的全新的世界。"
			}
MenologyMonster['冥界·兽神'] = 
			{ 
				id=35243, iconpath1="冥界·兽神.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="冥界·兽神", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="10线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=35407, awardiconpath="项链类.dds", awarddesc="玲珑珠泪"}, 
					{awardid=23360, awardiconpath="", awarddesc="^ffcb4a千华龙筋"},
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升135级"}, 
					{awardid=0, awardiconpath="武器类.dds", awarddesc="^ffcb4a真仙武器\r^ffffff适合等级：150级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=3, descpos="-213,0,-21", istransport=true, 
				npclv=150, refreshperiod="周日", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff       冥界七王之一，利用人间的混乱冲破时空界点来到人间，从冥间带来的强大力量使其具有睥睨天下苍生之气魄，他们的目的只有一个：建造一个属于自己的全新的世界。"
			}
MenologyMonster['瘟皇·秦广'] = 
			{ 
				id=25949, iconpath1="瘟皇·秦广.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="瘟皇·秦广", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="13线", npc="神火教长老", istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=23360, awardiconpath="", awarddesc="^ffcb4a千华龙筋"},
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a乾系列装备\r^ffffff适合等级：飞升135级"}, 
					{awardid=0, awardiconpath="武器类.dds", awarddesc="^ffcb4a坤系列武器\r^ffffff适合等级：飞升135级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=5, descpos="-60,0,205", istransport=true, 
				npclv=150, refreshperiod="13:00", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff专司人间寿夭生死册集，接引超生，统管幽冥吉凶，若能将其战胜，便可超渡人间一段怨魂，"
			}
MenologyMonster['战神·龙戊'] = 
			{ 
				id=25950, iconpath1="战神·龙戊.dds", iconpath2="Models\\NPCs\\怪物\\人形\\暴雪之王\\暴雪之王.ecm", 
				rewardtype=0, maskinfo=0, name="战神·龙戊", ismendisplay=false, mendisplaylevel=8, 
				validtime="9:00-12:00", levelreq="1", needreborn=true, permitcount=1, cond="", 
				validday="1,2,3,5,6,7", line="13线", npc="神火教长老",istaskaward=false,  taskid="1", relacontroler="", 
				award=
				{
					{awardid=0, awardiconpath="项链类.dds", awarddesc="^ffcb4a首饰\r^ffffff适合等级：140级"}, 
					{awardid=23360, awardiconpath="", awarddesc="^ffcb4a千华龙筋"},
					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a坤系列装备\r^ffffff适合等级：飞升135级服"}, 
					{awardid=0, awardiconpath="武器类.dds", awarddesc="^ffcb4a乾系列武器\r^ffffff适合等级：飞升135级"}, 
					{awardid=53576, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
					{awardid=53577, awardiconpath="宝物.dds", awarddesc="^ffcb4a法宝相关\r^ffffff适合等级：105级"}, 
				},				
				commendlevel=3, istasknpc=false, descnpc="", descmapid=10, descpos="7,183,-170", istransport=true, 
				npclv=150, refreshperiod="19:00", recommendlv="145", recommendplayernum="6", 
				desc="^ffffff      好斗与屠杀的战神，司职战争，形象英俊，性格强暴好斗，勇猛顽强，是权力与力量的象征，传说具有不死之身。"
			}

function MenologyMonster:GetSelf()
	return self;
end

MenologyDailyMissionOne = {}
--[[
MenologyDailyMissionOne['Thiên Hành Giả'] =
      { 
				id=501, iconpath1="天行者.dds", iconpath2="天行者大.dds",name="天行者",
				validtime="0:00-24:00", levelreq="45-160", needreborn=false, permitcount=1, 
				line="Kênh 1-15", npc="天行者", istaskaward=false, taskid="12193",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"}, 
				},
				commendlevel=3, istasknpc=false, descnpc="天行者", descmapid=401, descpos="430,509,402", istransport=true, 
				desc="^ffffff       河阳的^ffcb4a天行者^ffffff提供获得海量经验的绝佳机会。\r 驾驭^ffcb4a飞剑^ffffff，与天行者相会在蔚蓝天空。"
			}
--]]
MenologyDailyMissionOne['Mỗi ngày 1 quẻ'] =
      { 
				id=502, iconpath1="修真总动员.dds", iconpath2="修真总动员大.dds",name="Mỗi ngày 1 quẻ",
				validtime="0:00-24:00", levelreq="80-170", needreborn=false, permitcount=1, award_type=3, reborn_judge=-1, 
				line="Kênh 1-15", npc="Chu nhất tiên", istaskaward=false, taskid="20594",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"}, 
					{awardid=22343, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"}, 
	        {awardid=23360, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
	        {awardid=19252, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
	        {awardid=16385, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
	        {awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="Chu nhất tiên", descmapid=401, descpos="448,487,522", istransport=true, 
				desc="^ffffff       Hà dương thành đích ^ffcb4a chu nhất tiên ^ffffff đề cung miễn phí toán quái liễu.\r kháp chỉ nhất toán, tĩnh đãi bán cá thì thần chi hậu nhĩ tương hoạch đắc mạc đại ky duyến."
			}
MenologyDailyMissionOne['Tụ Yêu Lệnh'] =
      { 
				id=503, iconpath1="天下会武.dds", iconpath2="天下会武大.dds",name="Tụ yêu lệnh",
				validtime="0:00-24:00", levelreq="90-170", needreborn=false, permitcount=1, award_type=1, reborn_judge=-1, 
				line="Kênh 1-15", npc="Hà long nghiêu", istaskaward=false, taskid="14744",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"}, 
					{awardid=23360, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="Hà long nghiêu", descmapid=401, descpos="459,486,310", istransport=true, 
				desc="^ffffff       Thanh vân sơn cận nhật yêu thú tứ ngược, thỉnh chúng tiên hữu tốc khứ hà dương thành ^ffcb4a hà long nghiêu ^ffffff xử lĩnh thủ tụ yêu lệnh.\r bằng thử lệnh khả tương thanh vân sơn kiếm trủng phụ cận đích trấn yêu thạch phong ấn tạm thì phá khai, nhất cử tiêu diệt yêu thú."
			}
--[[
MenologyDailyMissionOne['Thiên Địa Bảo Khố'] =
      { 
				id=504, iconpath1="天地宝库.dds", iconpath2="天地宝库大.dds",name="泥沙淘尽奇珍现",
				validtime="0:00-24:00", levelreq="45-170", needreborn=false, permitcount=1, 
				line="Kênh 1-15", npc="七宝", istaskaward=false, taskid="24203",
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a宝石奖励\r\r^ffffff完成任务后获得随机一种宝石奖励。"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"}, 
				},
				commendlevel=3, istasknpc=false, descnpc="七宝", descmapid=4, descpos="-243,0,180", istransport=true, 
				desc="^ffffff       流波山的宝石大师^ffcb4a七宝^ffffff在锻造宝石的时候遇到了些问题。\r 去收集相应的材料交给他，你会获得意想不到的惊喜！"
			}
--]]
MenologyDailyMissionOne['Hóa Khí Vi Đậu'] =
      { 
				id=552, iconpath1="化气为豆.dds", iconpath2="化气为豆大.dds",name="Hóa khí vi diệu",
				validtime="0:00-24:00", levelreq="120-170", needreborn=false, permitcount=1, award_type=3, reborn_judge=-1, 
				line="Kênh 1-15", npc="Nhật nguyệt long vương", istaskaward=false, taskid="28301",
				award=
				{
				  {awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=15676, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=55601, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"}, 
				},
				commendlevel=3, istasknpc=false, descnpc="Nhật nguyệt long vương", descmapid=44, descpos="219,276,457", istransport=true, 
				desc="^ffffff       Trung châu ^ffcb4a nhật nguyệt long vương ^ffffff đích bảo vật bị quái vật thưởng tẩu liễu.\r bang trợ tha tiêu diệt quái vật đoạt hồi bảo vật, long vương thuyết bất định hội tống nhĩ nhất ta tiểu lễ vật!"
			}
MenologyDailyMissionOne['Hành Thiên'] =
      { 
				id=509, iconpath1="行天.dds", iconpath2="行天大.dds",name="Hành thiên",
				validtime="0:00-24:00", levelreq="80-170", needreborn=false, permitcount=1, award_type=1, reborn_judge=-1, 
				line="Kênh 1-15", npc="Thiên hành giả", istaskaward=false, taskid="12844",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：60"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"}, 
				},
				commendlevel=3, istasknpc=false, descnpc="Thiên hành giả", descmapid=401, descpos="449,527,615", istransport=true, 
				desc="^ffffff      Mỗi thiên tại hoàn thành [ thiên hành giả ] nhâm vụ hậu, khả dĩ tại thiên hành giả xử lĩnh thủ hậu tục cao kinh nghiệm tưởng lệ nhâm vụ nhâm vụ ^ffcb4a“Hành thiên”^ffffff.\r hoàn thành nhâm vụ khả dĩ hoạch đắc ^ffcb4a100 cá thái cực kim đan ^ffffff đích kinh nghiệm tưởng lệ."
			}			
MenologyDailyMissionOne['Tru Tiên Cổ Quyền'] =
      { 
				id=600, iconpath1="诛仙古卷（相生）.dds", iconpath2="诛仙古卷（相生）大.dds",name="Tru tiên cổ quyển",
				validtime="0:00-24:00", levelreq="30-170", needreborn=false, permitcount=1, award_type=3, reborn_judge=-1, 
				line="Kênh 1-15", npc="Tru tiên cổ quyển", istaskaward=false, taskid="1",
				award=
				{
				  {awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=22343, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=51441, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"}, 
				},
				commendlevel=3, istasknpc=false, descnpc="Tru tiên cổ quyển", descmapid=401, descpos="419,487,426", istransport=true, 
				desc="^ffffff       Tại hà dương thành ^ffcb4a tru tiên cổ quyển ^ffffff xử lĩnh thủ nhâm vụ ^ffcb4a“Tru tiên cổ quyển [ tương sinh ]”^ffffff.\r hoàn thành nhâm vụ khả dĩ hoạch đắc đại lượng tưởng lệ。"
			}
MenologyDailyMissionOne['Phá Hung Chú'] =
      { 
				id=601, iconpath1="新破凶咒.dds", iconpath2="新破凶咒大.dds",name="Phá hung chú",
				validtime="0:00-24:00", levelreq="30-170", needreborn=false, permitcount=1, award_type=1, reborn_judge=-1, 
				line="Kênh 1-15", npc="Truyện công sử giả", istaskaward=false, taskid="1",
				award=
				{
				  {awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=40191, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"}, 
				},
				commendlevel=3, istasknpc=false, descnpc="Truyện công sử giả", descmapid=401, descpos="360,486,428", istransport=true, 
				desc="^ffffff      Tại hà dương thành ^ffcb4a truyện công sử giả ^ffffff xử lĩnh thủ nhâm vụ ^ffcb4a“Phá hung chú”^ffffff.\r hoàn thành nhâm vụ khả dĩ hoạch đắc đại lượng tưởng lệ."
			}
MenologyDailyMissionOne['Điêu man công chủ'] =
      { 
				id=602, iconpath1="刁蛮公主.dds", iconpath2="刁蛮公主大.dds",name="Điêu man công chủ",
				validtime="0:00-24:00", levelreq="135-170", needreborn=true, permitcount=1, award_type=1, reborn_judge=1, 
				line="Kênh 1-15", npc="Nhật nguyệt long vương", istaskaward=false, taskid="1",
				award=
				{
				  {awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=54031, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"}, 
				},
				commendlevel=3, istasknpc=false, descnpc="Nhật nguyệt long vương", descmapid=44, descpos="219,276,457", istransport=true, 
				desc="^ffffff      Tại trung châu vạn lưu thành đích ^ffcb4a nhật nguyệt long vương ^ffffff xử lĩnh thủ nhất khối ^ffcb4a long tộc tinh bàn ^ffffff. Hữu kiện điểm kích sử dụng khả dĩ căn cư tinh bàn đích đề kì tầm hoa long tộc công chủ.\r hoàn thành nhâm vụ khả dĩ hoạch đắc đại lượng tưởng lệ."
			}
function MenologyDailyMissionOne:GetSelf()
	return self;
end

MenologyDailyMissionTwo = {}
MenologyDailyMissionTwo['Kim Đan Hữu Giá'] =
      { 
				id=505, iconpath1="金丹有价.dds", iconpath2="金丹有价大.dds",name="Kim đan hữu giá",
				validtime="0:00-24:00", levelreq="100-170", needreborn=false, permitcount=1, 
				line="Kênh 1-15", npc="Hà long nghiêu", istaskaward=false, taskid="12861",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},  
				},
				commendlevel=3, istasknpc=false, descnpc="Hà long nghiêu", descmapid=401, descpos="383,484,294", istransport=true, 
				desc="^ffffff       Tại hà dương thành ^ffcb4a hà long nghiêu ^ffffff xử giao nạp ^ffcb4a20 kim ^ffffff tiếp thủ nhâm vụ.\r hoàn thành tha giao dư đích nhâm vụ tức khả hoạch đắc đại lượng kim đan đề thăng tự thân tu vi。"
			}
MenologyDailyMissionTwo['Bảo Vật'] =
      { 
				id=506, iconpath1="宝物.dds", iconpath2="宝物大.dds",name="Bảo vật",
				validtime="0:00-24:00", levelreq="110-170", needreborn=false, permitcount=1, 
				line="Kênh 1-15", npc="Ngô dân tài", istaskaward=false, taskid="12862",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"}, 
				},
				commendlevel=3, istasknpc=false, descnpc="Ngô dân tài", descmapid=401, descpos="382,484,316", istransport=true, 
				desc="^ffffff       Tại hà dương thành ^ffcb4a ngô dân tài ^ffffff xử giao nạp ^ffcb4a15 kim ^ffffff tiếp thủ nhâm vụ.\r hoàn thành tha giao dư đích nhâm vụ tức khả hoạch đắc đại lượng kim đan đề thăng tự thân tu vi."
			}
MenologyDailyMissionTwo['Cảnh Ngưỡng Tiên Hiền'] =
      { 
				id=507, iconpath1="景仰先贤.dds", iconpath2="景仰先贤大.dds",name="Cảnh ngưỡng tiên hiền",
				validtime="0:00-24:00", levelreq="120-170", needreborn=false, permitcount=1, 
				line="Kênh 1-15", npc="Trầm mặc nho", istaskaward=false, taskid="12847",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：40"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"}, 
				},
				commendlevel=3, istasknpc=false, descnpc="Trầm mặc nho", descmapid=401, descpos="389,481,353", istransport=true, 
				desc="^ffffff       Tại hà dương thành ^ffcb4a trầm mặc nho ^ffffff xử giao nạp ^ffcb4a15 kim ^ffffff tiếp thủ nhâm vụ.\r hoàn thành tha giao dư đích nhâm vụ tức khả hoạch đắc đại lượng kim đan đề thăng tự thân tu vi。"
			}
MenologyDailyMissionTwo['Kiến Công Lập Sự'] =
      { 
				id=508, iconpath1="建功立事.dds", iconpath2="建功立事大.dds",name="Kiến công lập sự",
				validtime="0:00-24:00", levelreq="50-170", needreborn=false, permitcount=1, 
				line="Kênh 1-15", npc="Phương hải bình", istaskaward=false, taskid="12856",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"}, 
				},
				commendlevel=3, istasknpc=false, descnpc="Quản lý bang hội Phương hải bình", descmapid=401, descpos="496,493,342", istransport=true, 
				desc="^ffffff       Tại hà dương thành ^ffcb4a bang hội quản lí viên phương hải bình ^ffffff xử giao nạp ^ffcb4a20 kim ^ffffff tiếp thủ nhâm vụ.\r hoàn thành tha giao dư đích nhâm vụ tức khả hoạch đắc đại lượng kim đan đề thăng tự thân tu vi。"
			}

function MenologyDailyMissionTwo:GetSelf()
	return self;
end

MenologyDailyActivity = {}
--[[
MenologyDailyActivity['戾气危机'] =
      { 
				id=511, iconpath1="戾气危机.dds", iconpath2="戾气危机大.dds",name="戾气危机",
				validtime="18:00-20:00", levelreq="75-170", needreborn=false, permitcount=1, 
				line="Kênh 1-15", npc="陆雪琪", istaskaward=false, taskid="12717",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：40"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},  
				},
				commendlevel=3, istasknpc=false, descnpc="陆雪琪", descmapid=2, descpos="403,0,-193", istransport=true, 
				desc="^ffffff       近日青云山异像频现，只怕是戾气衍生、劫难将至。请众仙友每日^ffcb4a18：00-20：00^ffffff期间至望月台与^ffcb4a陆雪琪^ffffff商议，消除这场无妄之灾。\r 完成任务即可获得大量修为奖励。"
			}
--]]
--[[			
MenologyDailyActivity['金丹之术'] =
      { 
				id=512, iconpath1="金丹之术.dds", iconpath2="金丹之术大.dds",name="金丹之术",
				validtime="19:30-21:30", levelreq="80-170", needreborn=false, permitcount=1, 
				line="Kênh 1-15", npc="抱朴子", istaskaward=false, taskid="13091",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r获得后自动提升大量经验。"}, 
					{awardid=21510, awardiconpath="item1.dds", awarddesc=""},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="抱朴子", descmapid=2, descpos="96,64,203", istransport=true, 
				desc="^ffffff       在青云举行的大型炼丹活动，玩家在^ffcb4a青云 抱朴子^ffffff处领取前置任务。\r 完成任务后玩家可以获得^ffcb4a碎雪星芒^ffffff及^ffcb4a太极金丹^ffffff奖励。\r       50个碎雪星芒可在陆雪琪处兑换道具^ffcb4a雪之星^ffffff，可以对项链（天罪，龙啸，龙骧，神道，神罚，神藏）进行强化。"
			}
--]]			
--[[
MenologyDailyActivity['夺回大元宝'] =
      { 
				id=513, iconpath1="逐波圣灵.dds", iconpath2="逐波圣灵大.dds",name="夺回大元宝",
				validtime="0:00-24:00", levelreq="80-170", needreborn=false, permitcount=1, 
				line="Kênh 15", npc="毛羽倩", istaskaward=false, taskid="19642",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：60"},
					{awardid=33749, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},  
				},
				commendlevel=3, istasknpc=false, descnpc="毛羽倩", descmapid=401, descpos="143,0,-94", istransport=true, 
				desc="^ffffff       河阳城的^ffcb4a毛羽倩^ffffff的元宝被小偷偷走了，快去^ffcb4aKênh 15庙会^ffffff帮帮她吧（需要消耗一个庙会门票）。\r 完成任务即可获得大量修为奖励。"
			}
--]]
--[[
MenologyDailyActivity['石头剪子布'] =
      { 
				id=514, iconpath1="追风圣灵.dds", iconpath2="追风圣灵大.dds",name="石头剪子布",
				validtime="0:00-24:00", levelreq="80-170", needreborn=false, permitcount=1, 
				line="Kênh 15", npc="赌神·章于", istaskaward=false, taskid="20573",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：60"},
					{awardid=40225, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"}, 
				},
				commendlevel=3, istasknpc=false, descnpc="赌神·章于", descmapid=401, descpos="-202,0,-125", istransport=true, 
				desc="^ffffff       河阳城^ffcb4a赌神·章于^ffffff的赌术神乎其技，快去^ffcb4aKênh 15庙会^ffffff跟他学习吧（需要消耗一个庙会门票）。\r 完成任务即可获得大量修为奖励。"
			}
--]]
MenologyDailyActivity['Tiểu hổ về nhà'] =
      { 
				id=515, iconpath1="白色情人节.dds", iconpath2="白色情人节大.dds",name="Tiểu hổ về nhà",
				validtime="0:00-24:00", levelreq="60-170", needreborn=false, permitcount=1, award_type=1, reborn_judge=-1, 
				line="Kênh 15", npc="Truyền tống miếu hội", istaskaward=false, taskid="19641",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：60"},
					{awardid=33748, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},  
				},
				commendlevel=3, istasknpc=false, descnpc=" Miếu hội truyền tống ", descmapid=401, descpos="409,478,635", istransport=true, 
				desc="^ffffff       Miếu hội lí đích ^ffcb4a cát tường hổ oa ^ffffff ngộ đáo liễu nhất ta ma phiền, khoái khứ ^ffcb4aKênh 15 miếu hội ^ffffff bang bang tha ba [ tòng miếu hội nhập khẩu tiến nhập trường sở, nhu yếu tiêu háo nhất cá miếu hội môn phiếu ].\r hoàn thành nhâm vụ tức khả hoạch đắc đại lượng tu vi tưởng lệ."
			}
--[[			
MenologyDailyActivity['仙家坐骑'] =
      { 
				id=516, iconpath1="国家宝藏.dds", iconpath2="国家宝藏大.dds",name="仙家坐骑",
				validtime="0:00-24:00", levelreq="60-170", needreborn=false, permitcount=1, 
				line="Kênh 15", npc="弼马温", istaskaward=false, taskid="19631",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：60"},
					{awardid=33717, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
					{awardid=33718, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
					{awardid=33719, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
					{awardid=33720, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},   
				},
				commendlevel=3, istasknpc=false, descnpc="弼马温", descmapid=15, descpos="126,0,87", istransport=false, 
				desc="^ffffff       庙会里的^ffcb4a弼马温^ffffff遇到了一些麻烦，快去^ffcb4aKênh 15庙会^ffffff帮帮他吧（从庙会入口进入场所，需要消耗一个庙会门票）。\r 完成任务即可获得大量修为奖励。"
			}
--]]
MenologyDailyActivity['Điểm thạch thành kim'] =
      { 
				id=517, iconpath1="财神副本.dds", iconpath2="财神副本大.dds",name="Điểm thạch thành kim",
				validtime="0:00-24:00", levelreq="60-170", needreborn=false, permitcount=1, award_type=1, reborn_judge=-1, 
				line="Kênh 15", npc="Truyền tống miếu hội", istaskaward=false, taskid="19651",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：60"},
					{awardid=33732, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},  
				},
				commendlevel=3, istasknpc=false, descnpc=" Miếu hội truyền tống ", descmapid=401, descpos="409,478,635", istransport=true, 
				desc="^ffffff       Hướng miếu hội lí đích ^ffcb4a kim bách vạn ^ffffff học tập điểm thạch thành kim thuật, khoái khứ ^ffcb4aKênh 15 miếu hội ^ffffff tầm hoa tha ba [ tòng miếu hội nhập khẩu tiến nhập trường sở, nhu yếu tiêu háo nhất cá miếu hội môn phiếu ].\r hoàn thành nhâm vụ tức khả hoạch đắc đại lượng tu vi tưởng lệ."
			}
MenologyDailyActivity['Lạc đường linh thú'] =
      { 
				id=518, iconpath1="兽妖总动员.dds", iconpath2="兽妖总动员大.dds",name="Linh thú lạc đường",
				validtime="0:00-24:00", levelreq="80-170", needreborn=false, permitcount=1, award_type=1, reborn_judge=-1, 
				line="Kênh 15", npc="Truyền tống miếu hội", istaskaward=false, taskid="24377",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：60"},
					{awardid=44670, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"}, 
				},
				commendlevel=3, istasknpc=false, descnpc=" Miếu hội truyền tống ", descmapid=401, descpos="409,478,635", istransport=true, 
				desc="^ffffff       Hiệp trợ miếu hội lí đích ^ffcb4a thanh vân đệ tử lâm viễn chi ^ffffff khu cản tẩu thất đích linh thú, khoái khứ ^ffcb4aKênh 15 miếu hội ^ffffff tầm hoa tha ba [ tòng miếu hội nhập khẩu tiến nhập trường sở, nhu yếu tiêu háo nhất cá miếu hội môn phiếu ].\r hoàn thành nhâm vụ tức khả hoạch đắc đại lượng tu vi tưởng lệ。"
			}
MenologyDailyActivity['Mạc ngư nhân'] =
      { 
				id=610, iconpath1="钓鱼大赛.dds", iconpath2="钓鱼大赛大.dds",name="Mạc ngư nhân",
				validtime="0:00-24:00", levelreq="60-170", needreborn=false, permitcount=1, award_type=1, reborn_judge=-1, 
				line="Kênh 15", npc="Truyền tống miếu hội", istaskaward=false, taskid="24377",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：60"},
					{awardid=63019, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"}, 
				},
				commendlevel=3, istasknpc=false, descnpc=" Miếu hội truyền tống ", descmapid=401, descpos="409,478,635", istransport=true, 
				desc="^ffffff       Hiệp trợ miếu hội lí đích ^ffcb4a điếu tẩu ^ffffff điếu ngư, khoái khứ ^ffcb4aKênh 15 miếu hội ^ffffff tầm hoa tha ba.\r hoàn thành nhâm vụ tức khả hoạch đắc đại lượng tưởng lệ。"
			}
MenologyDailyActivity['Chăn nuôi thần thú'] =
      { 
				id=611, iconpath1="饲养神兽.dds", iconpath2="饲养神兽大.dds",name="Nuôi thần thú",
				validtime="0:00-24:00", levelreq="60-170", needreborn=false, permitcount=1, award_type=1, reborn_judge=-1, 
				line="Kênh 15", npc="Truyền tống miếu hội", istaskaward=false, taskid="24377",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：60"},
					{awardid=63019, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"}, 
				},
				commendlevel=3, istasknpc=false, descnpc=" Miếu hội truyền tống ", descmapid=401, descpos="409,478,635", istransport=true, 
				desc="^ffffff       Hiệp trợ miếu hội lí ^ffcb4a bách thú chi chủ ^ffffff giao cấp nhĩ đích thần thú tự dưỡng trường đại, khoái khứ ^ffcb4aKênh 15 miếu hội ^ffffff tầm hoa tha ba.\r hoàn thành nhâm vụ tức khả hoạch đắc đại lượng tưởng lệ."
			}
MenologyDailyActivity['Hoạt động thành tựu chia sẻ'] = 
			{ 
				id=691, iconpath1="成就分享小.dds", iconpath2="成就分享大.dds",  
				name="Chia sẻ thành tựu" , validtime="0:00-24:00", levelreq="5-170", needreborn=false, permitcount=1, award_type=4, reborn_judge=-1, 
				line="Kênh 1-15", npc="Hoạt động thành tựu ", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="Hoạt động thành tựu ", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       Thông qua vi bác hoặc vi tín chia xẻ nhân vật đã hoàn thành  ^ffcb4a hoạt động thành tựu ^ffffff, có thể đạt được nên hạng sinh động độ tích phân.\r [ hoạt động thành tựu thuộc sở hữu cho thành tựu phân loại trung ffcb4a đặc thù ^ffffff loại hạ ]"
			}
--[[
MenologyDailyActivity['龙门赤河'] =
      { 
				id=612, iconpath1="国家宝藏.dds", iconpath2="国家宝藏大.dds",name="龙门赤河",
				validtime="0:00-24:00", levelreq="60-170", needreborn=false, permitcount=1, 
				line="Kênh 15", npc="大美女", istaskaward=false, taskid="19631",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：60"},
					{awardid=33717, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
					{awardid=33718, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
					{awardid=33719, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
					{awardid=33720, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},   
				},
				commendlevel=3, istasknpc=false, descnpc="弼马温", descmapid=15, descpos="126,0,87", istransport=false, 
				desc="^ffffff       庙会里的^ffcb4a弼马温^ffffff遇到了一些麻烦，快去^ffcb4aKênh 15庙会^ffffff帮帮他吧（从庙会入口进入场所，需要消耗一个庙会门票）。\r 完成任务即可获得大量修为奖励。"
			}
--]]

function MenologyDailyActivity:GetSelf()
	return self;
end

MenologyDailyBattle = {}
MenologyDailyBattle['Viêm ngục chiến trường'] = 
			{ 
				id=519, iconpath1="炎狱.dds", iconpath2="炎狱大.dds", name="Viêm ngục chiến trường" ,  
				validtime="0:00-24:00", levelreq="90-104", needreborn=false, permitcount=10, award_type=1, reborn_judge=0, 
				line="Kênh 1-15",  npc="Tru tiên chiến thần", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aLượng lớn exp"},
					{awardid=10537, awardiconpath="", awarddesc=""},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="533,476,419", istransport=true, 
				desc="^ffffff       Hai phái Ẩn Tiên Các và Dật Long Hiên, định kì tổ chức nơi Thiên Hạ Hội Võ, nơi này lửa mạnh rừng rực, đi vào thì thân thể chịu nỗi khổ khí nóng bốc hơi, ở bên trong rèn luyện có thể nâng cao rất lớn tu luyện của bản thân.  (Yêu cầu nhân vật chưa phi thăng)"
			}
MenologyDailyBattle['Vũ vi chiến trường'] = 
			{ 
				id=520, iconpath1="武围.dds", iconpath2="武围大.dds", name="Vũ vi chiến trường" , 
				validtime="0:00-24:00", levelreq="105-119", needreborn=false, permitcount=10, award_type=1, reborn_judge=0, 
				line="Kênh 1-15",  npc="Tru tiên chiến thần", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aLượng lớn exp"},
					{awardid=10537, awardiconpath="", awarddesc=""},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="533,476,419", istransport=true, 
				desc="^ffffff       Hai phái Ẩn Tiên Các và Dật Long Hiên, định kì tổ chức nơi Thiên Hạ Hội Võ, nơi này cơ quan khắp nơi, nguy cơ trùng trùng, ở bên trong rèn luyện có thể nâng cao rất lớn tu luyện của bản thân.  (Yêu cầu nhân vật chưa phi thăng)"
			}
MenologyDailyBattle['Giới hà chiến trường'] = 
			{ 
				id=521, iconpath1="界河.dds", iconpath2="界河大.dds", name="Giới hà chiến trường" , 
				validtime="0:00-24:00", levelreq="120-134", needreborn=false, permitcount=10, award_type=1, reborn_judge=0, 
				line="Kênh 1-15",  npc="Tru tiên chiến thần", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aLượng lớn exp"},
					{awardid=10537, awardiconpath="", awarddesc=""},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="533,476,419", istransport=true, 
				desc="^ffffff       Hai phái Ẩn Tiên Các và Dật Long Hiên, định kì tổ chức nơi Thiên Hạ Hội Võ, 2 bên lấy sông làm ranh giới, đấu trí đấu dũng, ở bên trong rèn luyện có thể nâng cao rất lớn tu luyện của bản thân.  (Yêu cầu nhân vật chưa phi thăng)"
			}
MenologyDailyBattle['Chiến trường Thiên Dịch']=
			{ 
				id=522, iconpath1="天弈.dds", iconpath2="天弈大.dds", name="Chiến trường Thiên Dịch" , 
				validtime="0:00-24:00", levelreq="135-150", needreborn=false, permitcount=10, award_type=1, reborn_judge=0, 
				line="Kênh 1-15",  npc="Tru tiên chiến thần", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aLượng lớn exp"},
					{awardid=10537, awardiconpath="", awarddesc=""},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="533,476,419", istransport=true, 
				desc="^ffffff       Hai phái Ẩn Tiên Các và Dật Long Hiên, định kì tổ chức nơi Thiên Hạ Hội Võ, bên trong hình thành thế như bàn cờ, bước bước kinh sợ, ở bên trong rèn luyện có thể nâng cao rất lớn tu luyện của bản thân.  (Yêu cầu nhân vật chưa phi thăng)"
			}
MenologyDailyBattle['Huyễn Thế Viêm Ngục']=
			{ 
				id=523, iconpath1="幻世炎狱.dds", iconpath2="幻世炎狱大.dds", name="Huyễn Thế Viêm Ngục" , 
				validtime="12:00-24:00", levelreq="90-104", needreborn=true, permitcount=10,award_type=1, reborn_judge=1, 
				line="Kênh 1-15",  npc="Tru tiên chiến thần", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aLượng lớn exp"},
					{awardid=23858, awardiconpath="", awarddesc=""},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="533,476,419", istransport=true, 
				desc="^ffffff       Hai phái Ẩn Tiên Các và Dật Long Hiên, định kì tổ chức nơi Thiên Hạ Hội Võ, nơi này lửa mạnh rừng rực, đi vào thì thân thể chịu nỗi khổ khí nóng bốc hơi, ở bên trong rèn luyện có thể nâng cao rất lớn tu luyện của bản thân.  (Yêu cầu nhân vật phi thăng)"
			}
MenologyDailyBattle['Huyễn Thế Võ Vi']=
			{ 
				id=524, iconpath1="幻世武围.dds", iconpath2="幻世武围大.dds", name="Huyễn Thế Võ Vi" , 
				validtime="12:00-24:00", levelreq="105-119", needreborn=true, permitcount=10, award_type=1, reborn_judge=1, 
				line="Kênh 1-15",  npc="Tru tiên chiến thần", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aLượng lớn exp"},
					{awardid=23858, awardiconpath="", awarddesc=""},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="533,476,419", istransport=true, 
				desc="^ffffff       Hai phái Ẩn Tiên Các và Dật Long Hiên, định kì tổ chức nơi Thiên Hạ Hội Võ, nơi này cơ quan khắp nơi, nguy cơ trùng trùng, ở bên trong rèn luyện có thể nâng cao rất lớn tu luyện của bản thân.  (Yêu cầu nhân vật phi thăng)"
			}
MenologyDailyBattle['Huyễn Thế Giới Hà']=
			{ 
				id=525, iconpath1="幻世界河.dds", iconpath2="幻世界河大.dds", name="Huyễn Thế Giới Hà" , 
				validtime="12:00-24:00", levelreq="120-134", needreborn=true, permitcount=10, award_type=1, reborn_judge=1, 
				line="Kênh 1-15",  npc="Tru tiên chiến thần", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aLượng lớn exp"},
					{awardid=23858, awardiconpath="", awarddesc=""},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="533,476,419", istransport=true, 
				desc="^ffffff       Hai phái Ẩn Tiên Các và Dật Long Hiên, định kì tổ chức nơi Thiên Hạ Hội Võ, 2 bên lấy sông làm ranh giới, đấu trí đấu dũng, ở bên trong rèn luyện có thể nâng cao rất lớn tu luyện của bản thân.  (Yêu cầu nhân vật phi thăng)"
			}
MenologyDailyBattle['Huyễn Thế Thiên Dịch']=
			{  
				id=526, iconpath1="幻世天弈.dds", iconpath2="幻世天弈大.dds", name="Huyễn Thế Thiên Dịch" , 
				validtime="12:00-24:00", levelreq="135-160", needreborn=true, permitcount=10, award_type=1, reborn_judge=1, 
				line="Kênh 1-15",  npc="Tru tiên chiến thần", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aLượng lớn exp"},
					{awardid=23858, awardiconpath="", awarddesc=""},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="533,476,419", istransport=true, 
				desc="^ffffff       Hai phái Ẩn Tiên Các và Dật Long Hiên, định kì tổ chức nơi Thiên Hạ Hội Võ, bên trong hình thành thế như bàn cờ, bước bước kinh sợ, ở bên trong rèn luyện có thể nâng cao rất lớn tu luyện của bản thân.  (Yêu cầu nhân vật phi thăng)"
			}
MenologyDailyBattle['Quần hùng trục lộc'] = 
			{  
				id=551, iconpath1="群雄逐鹿.dds", iconpath2="群雄逐鹿大.dds", name="Trác Lộc Đài" , 
				validtime="Mở theo giai đoạn", levelreq="30-160", needreborn=false, permitcount=-1, 
				line="Kênh 1-15", npc="Trác Lộc Đài", istaskaward=false, taskid="1", 
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm Tinh Mang, điểm Tinh Tiết, cờ thắng lợi"}, 
					{awardid=54063, awardiconpath="", awarddesc=""}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aTích điểm độ tích cực\r^ffffffNhận được tích điểm độ tích cực của mục này. "}, 
				}, 
				commendlevel=3, istasknpc=false, descnpc="Trác Lộc Đài", descmapid=-1, descpos="9999, 0, 9999", istransport=false, 
				desc="^ffffff       Lửa đã đốt, trống đã điểm, cờ đã tung bay giữa tiếng đao kiếm! Quần hùng tranh đoạt, trong chiến trường ghép cặp ngẫu nhiên quần anh tụ hội, chiến thắng cuối cùng sẽ về tay ai? Thực đáng để chúng ta dõi mắt trông chờ. (Mỗi ngày mở 3 đợt, 12:00-14:00, 16:00-18:00, 20:00-22:00)"
			}	
				
-- MenologyDailyBattle['Đế Tử Vi Lan']=
-- 			{ 
-- 				id=620, iconpath1="LOL无差别战场.dds", iconpath2="LOL无差别战场大.dds", name="Đế Tử Vi Lan" , 
-- 				validtime="Mở theo giai đoạn", levelreq="120-160", needreborn=false, permitcount=-1, 
-- 				line="Kênh 1-15", npc="Đế Tử Vi Lan", istaskaward=false, taskid="1", 
-- 				award=
-- 				{
-- 					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aNhiều EXP"}, 
-- 					{awardid=71504, awardiconpath="", awarddesc=""}, 
-- 					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aTích điểm độ tích cực\r^ffffffNhận được tích điểm độ tích cực của mục này. "}, 
-- 				}, 
-- 				commendlevel=3, istasknpc=false, descnpc="Đế Tử Vi Lan", descmapid=-1, descpos="9999, 0, 9999", istransport=false, 
-- 				desc="^ffffff       Vô Cấu Minh Vương là Xà Yêu hủ hóa, trùng hiện Thiện Kiến Thành, tranh chấp của hai phái Long Âm, Sư Nha từ Phật pháp thiêu đến chiến trường, bảo vệ Vô Cấu Minh Vương, thiêu hủy phòng tuyến ngoại đạo, bảo vệ tín ngưỡng của bản thân ngươi!(Mỗi ngày 12:00-14:00, 18:00-21:00 mở.)"
-- 			}
--]]			
MenologyDailyBattle['Bang Chiến']=
			{ 
				id=621, iconpath1="原服帮战.dds", iconpath2="原服帮战大.dds", name="Bang Chiến" ,  
				validtime="0:00-24:00", levelreq="20-170", needreborn=false, permitcount=-1, award_type=5, reborn_judge=-1, 
				line="Kênh 1-15", npc="Bang Chiến", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a大量金钱"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="Bang Chiến", descmapid=401, descpos="428,485,264", istransport=true, 
				desc="^ffffff       Bang có cấp bang phái lớn hơn hoặc bằng cấp 2 có thể báo danh, thành viên hai bang đều có thể tham chiến, người chơi khác có thể báo danh vào quan chiến. "
			}
-- MenologyDailyBattle['Bang Chiến Liên Server']=
-- 			{ 
-- 				id=622, iconpath1="跨服帮战.dds", iconpath2="跨服帮战大.dds", name="跨服帮战" ,  
-- 				validtime="12:00-22:00", levelreq="20-170", needreborn=false, permitcount=-1, award_type=5, reborn_judge=-1, 
-- 				line="Kênh 1-15", npc="帮战接引使", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a大量金钱"},
-- 					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="帮战接引使", descmapid=401, descpos="428,485,264", istransport=true, 
-- 				desc="^ffffff       Các bang thuộc TOP 20 bảng xếp hạng điểm hoạt động bang phái các máy chủ mới có thể báo danh, thành viên bang phái hai bên đều có thể tham chiến, người chơi khác có thể báo danh vào quan chiến. "
-- 			}
--[[
MenologyDailyBattle['天界演武'] = 
			{ 
				id=623, iconpath1="新天界演武.dds", iconpath2="新天界演武大.dds", name="天界演武" ,  
				validtime="19:00-21:00", levelreq="135-160", needreborn=true, permitcount=1, 
				line="Kênh 1-15", npc="斗转星移天王", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aLượng lớn exp"},
					{awardid=57943, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a大量金钱"},
					{awardid=57944, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a大量金钱"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="斗转星移天王", descmapid=615, descpos="397,172,151", istransport=false, 
				desc="^ffffff       通过河阳的^ffcb4a武极道君 李杰华^ffffff选择“天界战场报名大厅”传送至星辰·斗魂殿，即可在^ffcb4a斗转星移天王^ffffff处报名战场。"
			}
--]]
MenologyDailyBattle['Thất mạch hội võ'] = 
			{ 
				id=624, iconpath1="七脉会武.dds", iconpath2="七脉会武大.dds", name="Thất mạch hội võ" ,  
				validtime="20:00-21:00", levelreq="135-170", needreborn=true, permitcount=1, award_type=1, reborn_judge=1, 
				line="Kênh 1-15", npc="Bách lí nặc lan", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aLượng lớn exp"},
					{awardid=65503, awardiconpath="", awarddesc=""},
					{awardid=65586, awardiconpath="", awarddesc=""},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="Bách lí nặc lan", descmapid=401, descpos="527,481,409", istransport=true, 
				desc="^ffffff      Hà dương đích ^ffcb4a thất mạch hội vũ truyện tống sử bách lí nặc lan ^ffffff tương chỉ dẫn nhĩ đáo đạt thất mạch hội trường -- thanh vân chi điên, bệnh tiền vãng ^ffcb4a tiêu dật tài ^ffffff xử lưỡng tiếp thất mạch hội vũ. Ngoạn gia khả dĩ tự do tuyển trạch đại biểu thanh vân thất mạch trung đích nhâm nhất mạch xuất chiến. Chiến trường tái trình phân sơ tái hòa quyết tái lưỡng bộ phân."
			}
-- MenologyDailyBattle['Thiết huyết kì hồn'] = 
-- 			{ 
-- 				id=625, iconpath1="八极战魂.dds", iconpath2="八极战魂大.dds", name="铁血旗魂" ,  
-- 				validtime="18:00-22:00", levelreq="155-170", needreborn=true, permitcount=3, award_type=3, reborn_judge=1, 
-- 				line="Kênh 1-15", npc="广目天君 高嵩业", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aLượng lớn exp"},
-- 					{awardid=63340, awardiconpath="", awarddesc=""},
-- 					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="广目天君 高嵩业", descmapid=615, descpos="388,172,146", istransport=false, 
-- 				desc="^ffffff       通过河阳的^ffcb4a武极道君 李杰华^ffffff选择“天界战场报名大厅”传送至星辰·斗魂殿，即可在^ffcb4a广目天君 高嵩业^ffffff处报名战场。"
-- 			}
MenologyDailyBattle['Vô cực chiến trường'] = 
			{ 
				id=612, iconpath1="楚汉军魂.dds", iconpath2="楚汉军魂大.dds", name="无极战场" ,  
				validtime="00:00-24:00", levelreq="161-170", needreborn=true, permitcount=5, award_type=1, reborn_judge=1, 
				line="Kênh 1-15",  npc="Tru tiên chiến thần", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aLượng lớn exp"},
					{awardid=76535, awardiconpath="", awarddesc=""},
					{awardid=76520, awardiconpath="", awarddesc=""},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="533,476,419", istransport=true, 
				desc="^ffcb4a（只有获得战场胜利时才能获得该项的活跃度奖励）\r^ffffff       隐仙阁与逸龙轩两派，定期举行天下会武之地，此处机关遍地，危机重重，在其中历练可大幅度提升自身修为。（要求飞升角色）"
			}

function MenologyDailyBattle:GetSelf()
	return self;
end

MenologyDailyDuplicate = {}
-- MenologyDailyDuplicate['Thủ vệ thanh vân'] = 
-- 			{ 
-- 				id=527, iconpath1="建功立事.dds", iconpath2="建功立事大.dds", name="试炼·守卫青云" , 
-- 				validtime="0:00-24:00", levelreq="20-170", needreborn=false, permitcount=1, award_type=3, reborn_judge=-1, 
-- 				line="Kênh 1-15", npc="试炼·守卫青云", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=74272, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aLượng lớn exp"},
-- 					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="家族试炼", descmapid=-1, descpos="9999,0,9999", istransport=false, 
-- 				desc="^ffffff       一向宁静平和的青云山风云色变，妖魔乱舞，青云圣物危在旦夕。道玄真人广邀天下正道英杰前往青云斩妖除魔，守卫青云圣物，快去助他一臂之力！"
-- 			}
-- MenologyDailyDuplicate['Mộng cảnh hà dương thành'] = 
-- 			{ 
-- 				id=528, iconpath1="彻夜不眠.dds", iconpath2="彻夜不眠大.dds",  
-- 				name="梦境河阳城" , validtime="0:00-24:00", levelreq="30-170", needreborn=false, permitcount=1, award_type=1, reborn_judge=-1, 
-- 				line="Kênh 1-15", npc="梦境河阳城", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=52238, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aLượng lớn exp"},
-- 					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="梦境河阳城", descmapid=-1, descpos="9999,0,9999", istransport=false, 
-- 				desc="^ffffff       梦境河阳城乃平行现今世界的另一个时空之物，通过诛仙古卷可前往探索。完成其居民心愿可获得大量奖励。（需要级别为30级以上角色，建议3人以上）"
-- 			}
MenologyDailyDuplicate['Thần Võ Tháp']=
			{ 
				id=529, iconpath1="忠烈碑.dds", iconpath2="忠烈碑大.dds",  
				name="Thần vũ trấn nguyên tháp" , validtime="0:00-24:00", levelreq="30-170", needreborn=false, permitcount=1, award_type=3, reborn_judge=-1, 
        line="Kênh 1-15", npc="Tam quan đại đế", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=41668, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=52365, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=52376, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=52377, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="Tam quan đại đế", descmapid=401, descpos="561,476,398", istransport=true, 
				desc="^ffffff       30 cấp dĩ thượng ngoạn gia quân khả tham dữ đích đan nhân sấm quan phó bổn, phó bổn nội toàn trình cấm thực, cận hữu 3 thứ phục hoạt ky hội, sủng vật bị tự động triệu hoán. Thủ thứ sấm quan thành công tương hội hoạch đắc đại lượng tưởng lệ, mỗi nhật căn cư sấm quan sổ lượng dã tương cấp dư phong hậu đích luy tích tưởng lệ."
			}
-- MenologyDailyDuplicate['Phần hương cốc '] = 
-- 			{ 
-- 				id=530, iconpath1="演武阵.dds", iconpath2="演武阵大.dds",  
-- 				name="焚香谷副本" ,validtime="0:00-24:00", levelreq="120-160", needreborn=false, permitcount=1, award_type=3, reborn_judge=-1, 
-- 				line="Kênh 1-15", npc="焚香谷副本", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=21345, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aLượng lớn exp"},
-- 					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=41668, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=49370, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a特殊属性称谓\r^ffffff减免他方暴击率及暴击伤害"}, 
-- 					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="焚香谷副本", descmapid=-1, descpos="9999,0,9999", istransport=false, 
-- 				desc="^ffffff       Phần Hương, Thái Hạo thoái ẩn nhiều năm xuất hiện lại thế gian, nhất thời tin đồn rào rào. Đồn rằng ai có thể phá giải câu đố của Bát Hoang Huyền Hỏa Trận, người đấy có thể xưng bá thế gian! Những người tu chân tập trung lại: Đến Huyền Hỏa Đàn trung tâm của Phần Hương Cốc, tìm kiếm Bát Hoang Huyền Hỏa Trận!  (Cần người chơi cấp độ là cấp 60 trở lên, đề nghị 10 người trở lên)"
-- 			}
--[[			
MenologyDailyDuplicate['Thiên Đế Bảo Khố']=
			{ 
				id=531, iconpath1="天地宝库.dds", iconpath2="天地宝库大.dds", iconpath3="icon\\Menology_huiwu.tga", name="天帝宝库" , 
				validtime="0:00-24:00", levelreq="120-170", needreborn=true, permitcount=3, 
				line="Kênh 1-15", npc="时空幻境管理员", istaskaward=false, taskid="1",
				award=
				{
					{awardid=34229, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aLượng lớn exp"},
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="", descmapid=401, descpos="491,493,329", istransport=true, 
				desc="^ffffff       Thiên Đế Bảo Khố cất giữ Thái Sơ Thần Vật, nhưng cấm chế bên trong nó trùng trùng, hơi không cẩn thận là vạn kiếp khó phục. Giờ lại đến lúc thần vật xuất thế, người nào có thể nhận được Thái Sơ Thần Bảo, người đấy lại là người ứng duyên của Bảo Khố? (Yêu cầu nhân vật phi thăng)"
			}
--]]			
-- MenologyDailyDuplicate['Hồng mông thí luyện'] = 
-- 			{ 
-- 				id=532, iconpath1="天行者.dds", iconpath2="天行者大.dds", 
-- 				name="试炼·鸿蒙试炼" , validtime="0:00-24:00", levelreq="120-170", needreborn=true, permitcount=1, award_type=3, reborn_judge=1, 
-- 				line="Kênh 1-15", npc="试炼·鸿蒙试炼", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=21345, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4aLượng lớn exp"},
-- 					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=41668, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=0, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a特殊属性称谓\r^ffffff减免他方暴击率及暴击伤害"}, 
-- 					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="鸿蒙试炼", descmapid=-1, descpos="9999,0,9999", istransport=false, 
-- 				desc="^ffffff       鸿蒙之地，神秘难测，内有各种珍奇异宝，也有无数恶灵宵小，带上你的队友，挑战一下自己的实力吧！（需级别为120级以上飞升角色，建议4人以上）"
-- 			}
			
			
-- MenologyDailyDuplicate['Tứ tượng cung '] = 
-- 			{ 
-- 				id=533, iconpath1="星宿北斗.dds", iconpath2="星宿北斗大.dds",
-- 				name="试炼·四象宫副本" , validtime="0:00-24:00", levelreq="120-170", needreborn=true, permitcount=1, award_type=3, reborn_judge=1, 
-- 				line="Kênh 1-15", npc="Tứ Tượng Cung", istaskaward=false, taskid="1", 
-- 				award=
-- 				{
-- 					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=41668, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=53550, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a特殊属性称谓\r^ffffff增加自身暴击率"}, 
-- 					{awardid=53802, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
-- 					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="四象宫副本", descmapid=-1, descpos="9999,0,9999", istransport=false, 
-- 				desc="^ffffff       Nơi thí luyện của đệ tử Nhân Tông Hồng Hoang Đại Lục, trong cung có Tứ Thánh Thú canh giữ, nguy cơ trùng trùng. \r Mang theo bạn đội của bạn, khiêu chiếu 1 chút thực lực của bản thân đi! Thông qua thí luyện sẽ nhận được lượng lớn dị bảo tu chân.  (Cần nhân vật phi thăng cấp độ là cấp 120 trở lên, đề nghị 4 người trở lên)"
-- 			}
-- MenologyDailyDuplicate['Phó bản Thập Thần Bảo Quật 1']=
-- 			{ 
-- 				id=553, iconpath1="天界演武.dds", iconpath2="天界演武大.dds",
-- 				name="十神宝窟副本一" , validtime="0:00-24:00", levelreq="150-155", needreborn=true, permitcount=1, award_type=1, reborn_judge=1, 
-- 				line="Kênh 1-15", npc="十神宝窟副本一", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=41668, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=22343, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=41171, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
-- 					{awardid=58002, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="十神宝窟副本一", descmapid=-1, descpos="9999,0,9999", istransport=false, 
-- 				desc="^ffffff       Tiên Ma Giới có một cấm địa, từng có người phàm lỡ vào, nhưng chỉ có một người thoát ra được. Nghe y nói trong cấm địa có Thập Tọa Bảo Tháp, chói lóa không thể nhìn thẳng vào, dưới tháp có Thập Thần, chỉ có phá tháp này, các thần mới được thoát thân. Thập Thần từng nói nếu có tiên nhân giải cứu, họ sẽ trọng thưởng hậu hĩnh. Nếu ngươi có đủ tự tin, hãy đến thử xem.  (Cần nhân vật thăng cấp nhanh cấp 150-155, kiến nghị 4-6 người, trong túi ít nhất có 1 ô trống để nhận thưởng)"
-- 			}
-- MenologyDailyDuplicate['Phó bản Thập Thần Bảo Quật 2']=
-- 			{ 
-- 				id=554, iconpath1="天界演武.dds", iconpath2="天界演武大.dds",
-- 				name="十神宝窟副本二" , validtime="0:00-24:00", levelreq="156-160", needreborn=true, permitcount=1, award_type=1, reborn_judge=1, 
-- 				line="Kênh 1-15", npc="十神宝窟副本二", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=41668, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=22343, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=41171, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
-- 					{awardid=58002, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="十神宝窟副本二", descmapid=-1, descpos="9999,0,9999", istransport=false, 
-- 				desc="^ffffff       Tiên Ma Giới có một cấm địa, từng có người phàm lỡ vào, nhưng chỉ có một người thoát ra được. Nghe y nói trong cấm địa có Thập Tọa Bảo Tháp, chói lóa không thể nhìn thẳng vào, dưới tháp có Thập Thần, chỉ có phá tháp này, các thần mới được thoát thân. Thập Thần từng nói nếu có tiên nhân giải cứu, họ sẽ trọng thưởng hậu hĩnh. Nếu ngươi có đủ tự tin, hãy đến thử xem.  (Cần nhân vật thăng cấp nhanh cấp 156 trở lên, kiến nghị 4-6 người, trong túi ít nhất có 1 ô trống để nhận thưởng)"
-- 			}
-- MenologyDailyDuplicate['Thánh Liên Tứ Phúc']=
-- 			{ 
-- 				id=630, iconpath1="圣莲赐福.dds", iconpath2="圣莲赐福大.dds",
-- 				name="试炼·圣莲赐福" , validtime="0:00-24:00", levelreq="60-170", needreborn=false, permitcount=1, award_type=3, reborn_judge=-1, 
-- 				line="Kênh 1-15", npc="试炼·圣莲赐福", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=49143, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=49144, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=49145, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
-- 					{awardid=70180, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="圣莲赐福", descmapid=-1, descpos="9999,0,9999", istransport=false, 
-- 				desc="^ffffff       Liên Hoa có tứ đức, nhất hương, nhị tĩnh, tam nhu nhuyễn, tứ khả ái.\rThánh Liên là liên trung thánh phẩm, nghìn năm đắc hoa cốt, vạn năm mới nở ra. Còn kẻ được Thánh Liên ban phúc, có thể nhận được tu vi vô lượng, con đường tu chân có thể bằng phẳng.\rNay Thánh Liên sắp nở, linh khí xung thiên, hấp dẫn các lộ yêu thú muốn động đậy, ý đồ cướp thánh liên, gây họa nhân gian.\rTu chân giả lương thiện nếu có thể bảo vệ được thánh khiết của liên, Thánh Liên nhất định hậu tạ."
-- 			}
MenologyDailyDuplicate['Vân Miểu Thiên Hà']=
			{ 
				id=631, iconpath1="云渺天河.dds", iconpath2="云渺天河大.dds",
				name="Vân Miểu Thiên Hà" , validtime="12:00-21:45", levelreq="150-170", needreborn=true, permitcount=1, award_type=3, reborn_judge=1, 
				line="Kênh 1-15", npc="Vân Miểu Thiên Hà", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=71466, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=71467, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
					{awardid=65687, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
					{awardid=71488, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="Vân Miểu Thiên Hà", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       Vân Miểu Thiên Hà, nằm ở thiên thượng giới, các tiên hữu tới từ máy chủ khác nhau có thể tổ đội đi khám phá, cùng chiến đấu với 5 boss lớn Kính Hoa Thủy Nguyệt Không, nhận được trang bị Thiên Mệnh và Phong Thiên Ấn hoàn toàn mới. "
			}
-- MenologyDailyDuplicate['Thảo Miếu Thôn']=
-- 			{ 
-- 				id=632, iconpath1="草庙村.dds", iconpath2="草庙村大.dds",
-- 				name="草庙村" , validtime="12:00-21:45", levelreq="30-89", needreborn=false, permitcount=1, award_type=1, reborn_judge=-1, 
-- 				line="Kênh 1-15", npc="草庙村", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=31757, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=4180, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="草庙村", descmapid=-1, descpos="9999,0,9999", istransport=false, 
-- 				desc="^ffffff       宁静的草庙村风云诡谲，所有的传说都将从这里开始。你回到梦开始的地方，重拾曾经的感动，一切一切须在此开始，也终须在此了结。"
-- 			}
MenologyDailyDuplicate['Thần vũ thiên cực tháp'] = 
			{ 
				id=633, iconpath1="神武天极塔.dds", iconpath2="神武天极塔大.dds",
				name="Thần vũ thiên cực tháp" , validtime="0:00-24:00", levelreq="30-170", needreborn=false, permitcount=3, award_type=3, reborn_judge=-1, 
				line="Kênh 1-15", npc="Thần vũ thiên cực tháp", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=66739, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=65940, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
					{awardid=57440, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
					{awardid=52399, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"},
					{awardid=22460, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"},
					{awardid=51713, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="Thần vũ thiên cực tháp", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       Tại [ thần ma dị chí lục ] tàn hiệt trung, kí tái nhất phương canh vi thần bí đích thiên cực chi tháp, nghi đồng vi đốc thiên nguyên suất dĩ vô biên đại pháp lực thiết kiến, đãn kì khí thế chi hùng vĩ, khảo nghiệm chi hung hiểm khước thị thần vũ trấn nguyên tháp vô tòng bỉ nghĩ. Nguyên bổn nặc hình vu hạo hãn yên vân đích thử tháp, chung vu tại thiên địa động đãng chi tế tái hiện thế gian, vi tam quan đại đế sở phát hiện, tịnh tương kì trình hiện đáo tu chân giả đích diện tiền.\r thử tháp tuy tái vật vu vô cùng, khước hung hiểm vạn phân, thật nan do nhất nhân chi lực sở thắng nhâm, nhu kết bạn tiền vãng, phương khả bất hư thử hành."
			}
-- MenologyDailyDuplicate['Chân vũ kiếm các']=
-- 			{ 
-- 				id=634, iconpath1="真武剑阁.dds", iconpath2="真武剑阁大.dds",
-- 				name="真武剑阁" , validtime="12:00-21:45", levelreq="90-119", needreborn=false, permitcount=1, award_type=1, reborn_judge=-1, 
-- 				line="Kênh 1-15", npc="Chân vũ kiếm các", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=31758, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=4180, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="Chân vũ kiếm các", descmapid=-1, descpos="9999,0,9999", istransport=false, 
-- 				desc="^ffffff       Chân vũ đại đế tàng kiếm đích cung điện, tương truyện di lưu hạ chư đa đích chân vũ tâm giải, canh hữu chư đa thượng cổ thần binh di lưu vu thử, thị tam giới tu sĩ lịch luyện tầm trân đích bất nhị bảo địa。"
-- 			}
-- MenologyDailyDuplicate['Thiên quan chúc phúc [ tài thần ]'] = 
-- 			{ 
-- 				id=635, iconpath1="天官赐福（财神）.dds", iconpath2="天官赐福（财神）大.dds",
-- 				name="天官赐福（财神）" , validtime="0:00-24:00", levelreq="90-170", needreborn=true, permitcount=3, award_type=3, reborn_judge=1, 
-- 				line="Kênh 1-15", npc="天官赐福（财神）", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=58665, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=58663, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=58664, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=14065, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=56030, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="天官赐福（财神）", descmapid=-1, descpos="9999,0,9999", istransport=false, 
-- 				desc="^ffffff       此乃人间罕至的神秘之地。据说财神及其座下童子曾现身这时光乱流之中。\r然而神仙之说毕竟玄乎其玄，信是缘、不信亦是缘～仙友若是能寻到蛛丝马迹，我便为你开启通道传入其中。\r然而此地凶险异常，切记邀请一丛仙友前往，万万不可孤身犯险。至于能否觅得仙缘，就要看你们的造化了。"
-- 			}
-- MenologyDailyDuplicate['天官赐福（童子）'] = 
-- 			{ 
-- 				id=636, iconpath1="天官赐福（童子）.dds", iconpath2="天官赐福（童子）大.dds",
-- 				name="天官赐福（童子）" , validtime="0:00-24:00", levelreq="90-170", needreborn=true, permitcount=3, award_type=3, reborn_judge=1, 
-- 				line="Kênh 1-15", npc="天官赐福（童子）", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=58663, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=58664, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=14065, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=56030, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="天官赐福（童子）", descmapid=-1, descpos="9999,0,9999", istransport=false, 
-- 				desc="^ffffff       此乃人间罕至的神秘之地。据说财神及其座下童子曾现身这时光乱流之中。\r然而神仙之说毕竟玄乎其玄，信是缘、不信亦是缘～仙友若是能寻到蛛丝马迹，我便为你开启通道传入其中。\r然而此地凶险异常，切记邀请一丛仙友前往，万万不可孤身犯险。至于能否觅得仙缘，就要看你们的造化了。"
-- 			}
-- MenologyDailyDuplicate['Tiểu Sát！Thú Thần'] = 
-- 			{ 
-- 				id=637, iconpath1="兽神之叹息.dds", iconpath2="兽神之叹息大.dds",
-- 				name="Tiểu Sát！Thú Thần" , validtime="0:00-24:00", levelreq="150-170", needreborn=true, permitcount=1, award_type=3, reborn_judge=1, 
-- 				line="Kênh 1-15", npc="剿杀！兽神之叹息", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=65833, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=65931, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=65937, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=65943, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=66739, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="剿杀！兽神之叹息", descmapid=-1, descpos="9999,0,9999", istransport=false, 
-- 				desc="^ffffff       兽神自青云山一战，在千年妖狐小白的协助下败归茫茫十万大山，但其藏身之地已然暴露，无数修真之士紧随而至，欲将其一举诛杀。静卧千万年的十万大山自此喧嚣不止，是除妖卫道，以证世间正义，还是慕名于传说中的巫族宝藏和秘术，一切尽在你的选择。\r正所谓，山不解情人解情，万般纠葛起玲珑。枉自逆天破大道，留得后世陷纷争。"
-- 			}
MenologyDailyDuplicate['Thanh Nữ Mê Ca'] = 
			{ 
				id=638, iconpath1="青女的迷歌.dds", iconpath2="青女的迷歌大.dds",
				name="Thanh Nữ Mê Ca" , validtime="0:00-24:00", levelreq="155-170", needreborn=true, permitcount=1, award_type=3, reborn_judge=1, 
				line="Kênh 1-15", npc="Thanh Nữ Mê Ca", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=65937, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
					{awardid=65943, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
					{awardid=68823, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
					{awardid=68822, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
					{awardid=68824, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="Thanh Nữ Mê Ca", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       Tây hải chi ngoại, đại hoang chi ngung, hữu hàn sơn phúc tuyết thành băng, chung niên bất hóa, danh viết tây lĩnh.\r quang âm hỗn độn, sổ vạn tái triển chuyển nhi quá, tu chân giả đích cước bộ oanh nhiên khấu hưởng thế giới tẫn đầu đích đại môn, thanh chấn cửu tiêu, đạt vu đại hoang, tại băng tuyết trung trầm thụy đích truyện kì thứ đệ tô tỉnh, thệ yếu tương hào giác xuy hưởng, truyện triệt đại địa đích mỗi cá giác lạc.\r tối thuần tịnh đích băng thiên tuyết địa, tối quỷ quyệt đích biến huyễn mạc trắc, tối sướng khoái đích tu chân tham bảo, tối tàn nhẫn đích sát phạt đồ lục.\r hạnh hoặc bất hạnh, vô nhân năng tri. Đãn, tối phong thịnh đích thu hoạch, nhất định bạn tùy tối gian nan đích tham tác. Nhĩ, tố hảo chuẩn bị liễu mạ?\r chính thị: Vân miểu tam sơn xạ tuyết quang, đại hoang tịch tịch phúc tham thương. Tòng lai nhật nguyệt kinh thì yểm, tây lĩnh thiên thu thanh nữ sương.\r đại hoang đích thế giới, do thử khai thủy。"
			}
--[[
MenologyDailyDuplicate['Động Thiên Đoạt Bảo'] = 
			{ 
				id=639, iconpath1="洞天夺宝.dds", iconpath2="洞天夺宝大.dds",
				name="Động Thiên Đoạt Bảo" , validtime="分段开启", levelreq="120-170", needreborn=false, permitcount=2, 
				line="Kênh 1-15", npc="洞天夺宝", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=49370, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
					{awardid=66739, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
					{awardid=55620, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="洞天夺宝", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       灵境之洞天福地，历来为各服帮派争夺不休。洞天禁制偶有破绽之时，他服仙友可持“洞天圭简”前去一窥虚实，窃取仙矿，击杀守护灵兽，获得丰厚宝藏。\r    要求活跃度75以上，每天14:00-20:00，整点随机开启，每周四晚20:00，开启10张地图。"
			}
--]]
-- MenologyDailyDuplicate['Hắc Thạch Hỏa Long Động'] = 
-- 			{ 
-- 				id=666, iconpath1="黑石火龙洞.dds", iconpath2="黑石火龙洞大.dds",
-- 				name="Hắc Thạch Hỏa Long Động" , validtime="12:00-21:45", levelreq="120-134", needreborn=false, permitcount=1, award_type=1, reborn_judge=-1, 
-- 				line="Kênh 1-15", npc="黑石火龙洞", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=41668, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
-- 					{awardid=22343, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
-- 					{awardid=21154, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
-- 					{awardid=10872, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="黑石火龙洞", descmapid=-1, descpos="9999,0,9999", istransport=false, 
-- 				desc="^ffffff       流波海上天不夜，黑石渊下玉无缺。原本风平浪静、与世无争的小池镇，近日屡屡传出妖孽横行的消息。镇上的居民纷纷告诫路过的旅人，千万不要涉足镇外的森林，那里不仅常年氤氲着不散的浓雾，夜里更是有可怖的咆哮声传来。小池镇的镇长猜测一切异象都源自森林里的一处名为黑石洞的地方，又有谁能来为民除害去黑石洞一探究竟呢？与此同时，焚香谷秘宝“玄火鉴”多年前已失踪的消息不胫而走，何等厉害的妖物能从玄火坛内盗走这天下至宝？而这一切又隐隐约约和这小池镇外的黑石洞息息相关，若是“玄火鉴”的秘密被魔教妖人掌握，势必掀起一股腥风血雨，正教安危系于一线！"
-- 			}
-- MenologyDailyDuplicate['Trấn Ma Cổ Động'] = 
-- 			{ 
-- 				id=667, iconpath1="镇魔古洞.dds", iconpath2="镇魔古洞大.dds",
-- 				name="Trấn Ma Cổ Động" , validtime="12:00-21:45", levelreq="135-150", needreborn=false, permitcount=1, award_type=1, reborn_judge=-1, 
-- 				line="Kênh 1-15", npc="镇魔古洞", istaskaward=false, taskid="1",
-- 				award=
-- 				{
-- 					{awardid=13425, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=41171, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=41668, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=22343, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
-- 					{awardid=21200, awardiconpath="衣服类.dds", awarddesc="^ffcb4a飞升系列装备\r^ffffff适合等级：飞升140级"},
-- 				},
-- 				commendlevel=3, istasknpc=false, descnpc="镇魔古洞", descmapid=-1, descpos="9999,0,9999", istransport=false, 
-- 				desc="^ffffff       兽神横空出世，率大批妖兽肆虐神州，一时间生灵涂炭，苍生谈之色变。欲究其来历而深入南疆腹地者，无不以消声灭迹告终。近日，更有传言提及兽神一事实则为南疆古巫族萧墙之变，而祸及神州也！幻世如泡影，浮生忍回顾。立即前往镇魔古洞，一探究竟！"
-- 			}
MenologyDailyDuplicate['Nam Thổ Nhất Mộng'] = 
			{ 
				id=668, iconpath1="南土一梦.dds", iconpath2="南土一梦大.dds",
				name="Nam Thổ Nhất Mộng" , validtime="12:00-21:45", levelreq="160-170", needreborn=true, permitcount=1, award_type=3, reborn_judge=1, 
				line="Kênh 1-15", npc="Nam thổ nhất mộng", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=76606, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=76607, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
					{awardid=75960, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。\r个数：50"},
					{awardid=76614, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="Nam thổ nhất mộng", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       Kì sinh nhược phù, kì tử nhược hưu, sinh tử chi biện, như mộng giác chi phân, phân vân biến hóa, bất khả cứu cật.\r tiến nhập quỷ lệ mộng cảnh, tử tế tầm hoa mộng cảnh trung duệ luật tiềm tàng đích tà ác, kích sát mộng cảnh tinh quái, thiêu chiến mộng cảnh chi chủ, phá trừ mộng yểm chi thuật, giải cứu quỷ lệ。"
			}
MenologyDailyDuplicate['Ngũ độc kì xâm'] = 
			{ 
				id=669, iconpath1="西荒副本.dds", iconpath2="西荒副本大.dds",
				name="Ngũ Độc Kỳ Công Xâm" , validtime="0:00-24:00", levelreq="160-170", needreborn=true, permitcount=1, award_type=3, reborn_judge=1, 
				line="Kênh 1-15", npc="Ngũ độc kì xâm", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=65937, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
					{awardid=65943, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
					{awardid=68823, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"},  
					{awardid=75960, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="Ngũ độc kì xâm", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       Hồng hoang chi cảnh, vu địa kì tây, hữu điện vũ tráng khoát cao tủng, âm sâm thảm nhiên, bất tri kì thâm kỉ hứa. Bổn danh yên diệt bất tri, nhân tương truyện hữu ma thần u cư kì trung, tà thần ngũ độc củng vệ tọa hạ, toại danh vi ma thần điện.\r cổ lai binh sát lệ khí, đa hối tập chí thử, nhân cận thử xử, mạc bất vi âm tà chi khí xâm nhiễu, hoặc tham, hoặc si, hoặc sân, hoặc oán, hoặc nghi, lục thần hào loạn, tâm ma đột sinh;\r ngôn ma thần điện trung nhân tâm sở hoài âm tà chi niệm, tẫn vi ngũ độc sở dụng hóa vi ma quái, nhất niệm bất thận tiện vi ngũ độc sở thôn phệ. Hóa tác tây hoang cư dân thâm dĩ vi hại, ngôn đàm chi trung, tị kì danh húy: Kì úy như thử.\r đãn dã hữu nhân bất cụ ma thần uy thế, tiền vãng ma thần điện dữ ngũ độc trường chiến bất hưu, hoặc vi tuân tuần thần vương cổ đạo, tru lục ma thần, tự kiểm kì tâm;\r hoặc vi cầu đạo hành tăng trường, ngạo thị ngũ độc, dĩ thân chứng thành; Vô luận nguyên nhân như hà, đại đại tu chân chi nhân giai nhu lũ bại lũ chiến, bách chuyển thiên hồi, tài đắc tích thối tâm ma, chung thường sở nguyện. Đạp nhập tây hoang đích nhĩ, khả nguyện tiền vãng ma thần điện vũ, dữ ngũ độc trường chiến?\r thử nhất tiết: Ma điện nguy nguy xuất tây hoang, ngũ độc tiêu sát dẫn thương hoàng; Bách chiến hào ca tuyệt tình xử, ma đắc trường phong trảm tâm lang."
			}
MenologyDailyDuplicate['Thiên Khư'] = 
			{ 
				id=670, iconpath1="LOL无差别战场.dds", iconpath2="LOL无差别战场大.dds",
				name="Thiên khư không cảnh" , validtime="0:00-24:00", levelreq="90-170", needreborn=false, permitcount=1, award_type=6, reborn_judge=-1, 
				line="Kênh 1-15", npc="Thiên khư không cảnh", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="经验类奖励.dds", awarddesc="^ffcb4a太极金丹\r\r^ffffff获得后自动提升大量修为。"},
					{awardid=66739, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
					{awardid=79745, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
					{awardid=79746, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"},  
					{awardid=79529, awardiconpath="衣服类.dds", awarddesc="^ffcb4a震系列装备\r^ffffff适合等级：飞升140级"}, 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=3, istasknpc=false, descnpc="Thí luyện · thiên khư không cảnh", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       Bình dã vô mộc, thâm uyên vô ngư, thiên giai kí một, thượng hữu thông cù.\r thượng hữu thông cù, phong trì vân khu, hoang lưu hạo đãng, kì danh thiên khư.\r thiên khư nguyên xưng thiên giai không cảnh, nguyên thị thiên mạch phong thần tế điện, cố thử tối nghi ngự kiếm phi không; Kì giới tại thiên mạch, cảnh tiếp hồng hoang, sở dĩ hựu thị thiên mạch cố thổ vãng lai thần châu thế giới đích thông lộ. Thử cảnh tối sơ do thiên mạch lục tổ khai sang, bị thiên kiếp lôi cức băng hủy hậu, canh danh vi thiên khư, nguyên do họa ảnh tộc nhân thế đại chủ trì trấn thủ. Bất liêu thiên mạch đại địa biến cố đột sinh, kế kì tha thị tộc chi hậu, họa ảnh nhất tộc dã bất đắc bất kinh do thiên khư lục tục tị họa vu thần châu, tịnh lực đồ kích thối truy sát giả, phong bế thiên khư, dĩ tị kì phong."
			}

function MenologyDailyDuplicate:GetSelf()
	return self;
end

MenologySystemFunction = {}
MenologySystemFunction['Tam Giới Thương Hành'] = 
			{ 
				id=534, iconpath1="金丹有价.dds", iconpath2="金丹有价大.dds", 
				name="Tam Giới Thương Hành" , validtime="20:00-21:00", levelreq="1-170", needreborn=false, permitcount=500, award_type=4, reborn_judge=-1, 
				line="Kênh 1-15", npc="Tam Giới Thương Hành", istaskaward=false, taskid="1",
				award=
				{
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a特殊物品奖励\r^ffffff当日拍卖物品。"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"}, 
				},
				commendlevel=3, istasknpc=false, descnpc="Tam Giới Thương Hành", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       Bỏ ra 1 chút, thu lại rất nhiều. Thông qua nút ^ffcb4aTam Giới Thương Hành^ffffff ở phía trên bên phải giao diện đi vào giao diện đấu giá thấp nhất duy nhất, tham gia đấu giá bạn sẽ có xác suất nhận được các loại dị bảo tu chân.  (Mỗi lần đấu giá cần tiêu hao 1 chiếc bùa đấu giá, bùa đấu giá có thể mua ở trong Thiên Đế Bảo Khố.）"
			}
MenologySystemFunction['Huyết luyện pháp bảo'] = 
			{ 
				id=535, iconpath1="景仰先贤.dds", iconpath2="景仰先贤大.dds",  
				name="Huyết luyện pháp bảo",validtime="0:00-24:00", levelreq="1-170", needreborn=false, permitcount=-1, award_type=2, reborn_judge=-1, 
				line="Kênh 1-15", npc="仙工 妙歌", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a法宝属性提升\r^ffffff提升法宝的各项属性加成。"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="仙工 妙歌", descmapid=401, descpos="498,486,478", istransport=true, 
				desc="^ffffff       想拥有像小凡的噬魂、雪琪的天琊那样强大的法宝吗？河阳城的^ffcb4a仙工 妙歌^ffffff会指导你炼祭出自己的专属法宝。"
			}
MenologySystemFunction['Thú cưng tu luyện'] = 
			{ 
				id=536, iconpath1="宠物使者的委托.dds", iconpath2="宠物使者的委托大.dds",  
				name="Thú cưng tu luyện",validtime="0:00-24:00", levelreq="1-170", needreborn=false, permitcount=-1, award_type=2, reborn_judge=-1, 
				line="Kênh 1-15", npc="秋叶·兰", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a宠物属性提升\r^ffffff提升宠物的各项属性加成。"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="秋叶·兰", descmapid=401, descpos="503,487,574", istransport=true, 
				desc="^ffffff       想拥有像小灰那样强大的宠物吗？河阳城的^ffcb4a宠物大师 秋叶·兰^ffffff会指导你驯养出各种属性的修真战宠。"
			}
MenologySystemFunction['Trang bị huyết tế'] = 
			{ 
				id=537, iconpath1="新破凶咒.dds", iconpath2="新破凶咒大.dds",  
				name="Trang bị huyết tế",validtime="0:00-24:00", levelreq="1-170", needreborn=false, permitcount=-1, award_type=2, reborn_judge=-1, 
				line="Kênh 1-15", npc="装备血祭大师", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a装备属性提升\r^ffffff血祭后大幅提升装备的各项属性。"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="装备血祭大师", descmapid=8, descpos="44,0,-32", istransport=true, 
				desc="^ffffff       以血为媒，对神魔装进行血炼后，装备的属性会获得更大的提升。南疆的^ffcb4a装备血祭大师 天钧^ffffff会专门为你解答这方面的疑问。"
			}
MenologySystemFunction['Hệ thống Nguyên Anh'] = 
			{ 
				id=538, iconpath1="宝物.dds", iconpath2="宝物大.dds",  
				name="Hệ thống Nguyên Anh",validtime="0:00-24:00", levelreq="60-170", needreborn=false, permitcount=-1, award_type=2, reborn_judge=-1, 
				line="Kênh 1-15", npc="元婴", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a元婴属性提升\r^ffffff提升元婴的品质及元婴附加的各项属性。"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="元婴系统", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       打开人物属性界面激活^ffcb4a元婴系统^ffffff，只要进行元婴相关的修炼就可以提升元婴品质及属性。"
			}
MenologySystemFunction['Hệ Thống Tiên Phủ'] = 
			{ 
				id=800, iconpath1="仙府系统.dds", iconpath2="仙府系统大.dds",  
				name="Hệ Thống Tiên Phủ",validtime="0:00-24:00", levelreq="15-170", needreborn=true, permitcount=-1, award_type=3, reborn_judge=1, 
				line="Kênh 1-15", npc="仙府系统", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=66739, awardiconpath="", awarddesc=""},
					{awardid=57440, awardiconpath="", awarddesc=""},
					{awardid=71488, awardiconpath="", awarddesc=""},
					{awardid=63521, awardiconpath="", awarddesc=""},
					{awardid=70149, awardiconpath="", awarddesc=""},
					{awardid=22460, awardiconpath="", awarddesc=""},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a生产材料\r^ffffff"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},					
				},
				commendlevel=4, istasknpc=false, descnpc="仙府系统", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       将仙龄大于等于4的仙裔，星等大于等于12星的宠物送入仙府，即可让仙裔带着宠物进行各种挑战，获得多种副本奖励。购买用于刷新仙裔仙性的^ffcb4a木灵水^ffffff，用于刷新宠物技能的^ffcb4a涤魂丹^ffffff或者用于刷新专属挑战的^ffcb4a转坤轴^ffffff即可获得此项活跃度。"
			}
MenologySystemFunction['Hệ thống Trận Linh'] = 
			{ 
				id=640, iconpath1="阵灵系统.dds", iconpath2="阵灵系统大.dds",  
				name="Hệ thống Trận Linh",validtime="0:00-24:00", levelreq="135-170", needreborn=false, permitcount=-1, award_type=2, reborn_judge=-1, 
				line="Kênh 1-15", npc="阵灵系统", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a阵法属性提升\r^ffffff"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="阵灵系统", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       打开人物属性界面，点击“阵灵”即可打开^ffcb4a阵法界面^ffffff，只要进行阵灵相关的操作就可以获得更好的阵灵来提升阵法属性。(操作包括阵法升级、渡灵、淬灵、解灵、曜灵、修灵。)"
			}
MenologySystemFunction['Nuôi dưỡng Tiên Duệ'] = 
			{ 
				id=641, iconpath1="情人节.dds", iconpath2="情人节大.dds",  
				name="Nuôi dưỡng Tiên Duệ",validtime="0:00-24:00", levelreq="15-170", needreborn=true, permitcount=-1, award_type=2, reborn_judge=1, 
				line="Kênh 1-15", npc="仙裔养成", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4a仙裔属性提升\r^ffffff"},
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="仙裔养成", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       两个互为配偶并已飞升且有职业的角色，组队完成任务“且行且珍惜”获得“莲子”后，前往“凤凰楼”使用“莲子”可分别获得属于自己的“仙裔”。增加悟性和神力等都可以提升仙裔的属性。(操作包括增加悟性、神力、魅力、福缘或仙龄、改名。)"
			}


function MenologySystemFunction:GetSelf()
	return self;
end

MenologyUseItems = {}
MenologyUseItems['Sử dụng Phi Thiên Phù dịch chuyển'] =
			{ 
				id=539, iconpath1="天行者.dds", iconpath2="天行者大.dds",  
				name="Sử dụng Phi Thiên Phù dịch chuyển",validtime="0:00-24:00", levelreq="1-170", needreborn=false, permitcount=-1, award_type=4, reborn_judge=-1, 
				line="Kênh 1-15", npc="使用飞天符传送", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="使用飞天符传送", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       使用^ffcb4a飞天神符^ffffff进行一次传送即可获得该项活跃度积分（^ffcb4a飞天神符^ffffff可以在天帝宝库商城中寻得）。"
			}
MenologyUseItems['Sử dụng lò luyện đan luyện đan'] =
			{ 
				id=540, iconpath1="修真总动员.dds", iconpath2="修真总动员大.dds",  
				name="Sử dụng lò luyện đan luyện đan",validtime="0:00-24:00", levelreq="1-170", needreborn=false, permitcount=-1, award_type=2, reborn_judge=-1, 
				line="Kênh 1-15", npc="使用炼丹炉炼丹", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="炼丹炉炼丹", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       在天帝宝库中购买^ffcb4a聚宝盆、飞天神符^ffffff时将会获赠炼丹石，右键使用即可使用^ffcb4a炼丹炉^ffffff对其进行炼化，炼化后除了获得各种珍宝之外还将获得附加的活跃度积分奖励。"
			}
MenologyUseItems['Sử dụng thẻ VIP'] =
			{ 
				id=541, iconpath1="逐波圣灵.dds", iconpath2="逐波圣灵大.dds",  
				name="Sử dụng thẻ VIP",validtime="0:00-24:00", levelreq="1-170", needreborn=false, permitcount=-1, award_type=4, reborn_judge=-1, 
				line="Kênh 1-15", npc="使用VIP卡", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="使用VIP卡", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       使用^ffcb4aVIP卡^ffffff的玩家每日自动获得该项活跃度积分（所有类型的VIP卡均可）。"
			}
MenologyUseItems['Sử dụng Hoàn Bích Phù'] =
			{ 
				id=542, iconpath1="八极战魂.dds", iconpath2="八极战魂大.dds",  
				name="Sử dụng Hoàn Bích Phù",validtime="0:00-24:00", levelreq="1-170", needreborn=false, permitcount=-1, award_type=2, reborn_judge=-1, 
				line="Kênh 1-15", npc="使用完璧符", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="使用完璧符", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       使用^ffcb4a完璧符^ffffff进行炼器相关操作即可获得该项活跃度积分。"
			}
MenologyUseItems['Sử dụng quẻ Hóa Chú'] =
			{ 
				id=543, iconpath1="破凶咒.dds", iconpath2="破凶咒大.dds",  
				name="Sử dụng quẻ Hóa Chú",validtime="0:00-24:00", levelreq="1-170", needreborn=false, permitcount=-1, award_type=4, reborn_judge=-1, 
				line="Kênh 1-15", npc="使用化咒签", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="使用化咒签", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       使用^ffcb4a化咒签^ffffff开启各种许愿箱即可获得该项活跃度积分。（^ffcb4a化咒签^ffffff可在天帝宝库商城中寻得）"
			}
MenologyUseItems['Dùng Liệt Ảnh Long Tiễn'] =
			{ 
				id=650, iconpath1="使用外观传承道具.dds", iconpath2="使用外观传承道具大.dds",  
				name="Dùng Liệt Ảnh Long Tiễn",validtime="0:00-24:00", levelreq="1-170", needreborn=false, permitcount=-1, award_type=4, reborn_judge=-1, 
				line="Kênh 1-15", npc="使用裂影龙剪", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="使用裂影龙剪", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       使用^ffcb4a裂影龙剪^ffffff传承外形即可获得该项活跃度积分。（^ffcb4a裂影龙剪^ffffff可在天帝宝库商城中寻得）"
			}
MenologyUseItems['Dùng Băng Kiến Thanh Ti'] =
			{ 
				id=651, iconpath1="使用外观恢复道具.dds", iconpath2="使用外观恢复道具大.dds",  
				name="Dùng Băng Kiến Thanh Ti",validtime="0:00-24:00", levelreq="1-170", needreborn=false, permitcount=-1, award_type=4, reborn_judge=-1, 
				line="Kênh 1-15", npc="使用冰茧青丝", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="使用冰茧青丝", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       使用^ffcb4a冰茧青丝^ffffff恢复外形即可获得该项活跃度积分。（^ffcb4a冰茧青丝^ffffff可在天帝宝库商城中寻得）"
			}
MenologyUseItems['Dùng Thiên Khởi'] =
			{ 
				id=652, iconpath1="使用天启.dds", iconpath2="使用天启大.dds",  
				name="Dùng Thiên Khởi",validtime="0:00-24:00", levelreq="1-170", needreborn=false, permitcount=-1, award_type=4, reborn_judge=-1, 
				line="Kênh 1-15", npc="使用天启", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="使用天启", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       使用^ffcb4a天启^ffffff发言即可获得该项活跃度积分。（^ffcb4a天启^ffffff可在天帝宝库商城中寻得）"
			}
MenologyUseItems['Dùng Diệu Để'] =
			{ 
				id=653, iconpath1="使用妙谛.dds", iconpath2="使用妙谛大.dds",  
				name="Dùng Diệu Để",validtime="0:00-24:00", levelreq="1-170", needreborn=false, permitcount=-1, award_type=4, reborn_judge=-1, 
				line="Kênh 1-15", npc="使用妙谛", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="使用妙谛", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       使用^ffcb4a妙谛^ffffff发言即可获得该项活跃度积分。（^ffcb4a妙谛^ffffff可在天帝宝库商城中寻得）"
			}
MenologyUseItems['Dùng Chân Ngôn'] =
			{ 
				id=654, iconpath1="使用真言.dds", iconpath2="使用真言大.dds",  
				name="Dùng Chân Ngôn",validtime="0:00-24:00", levelreq="1-170", needreborn=false, permitcount=-1, award_type=4, reborn_judge=-1, 
				line="Kênh 1-15", npc="使用真言", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="使用真言", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       使用^ffcb4a真言^ffffff发言即可获得该项活跃度积分。（^ffcb4a真言^ffffff可在天帝宝库商城中寻得）"
			}
MenologyUseItems['Dùng Lưu Ngôn'] =
			{ 
				id=655, iconpath1="使用流言.dds", iconpath2="使用流言大.dds",  
				name="Dùng Lưu Ngôn",validtime="0:00-24:00", levelreq="1-170", needreborn=false, permitcount=-1, award_type=4, reborn_judge=-1, 
				line="Kênh 1-15", npc="使用流言", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="使用流言", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       使用^ffcb4a流言^ffffff恢复外形即可获得该项活跃度积分。（^ffcb4a流言^ffffff可在天帝宝库商城中寻得）"
			}
			
			
function MenologyUseItems:GetSelf()
	return self;
end

MenologyGameActionOne = {}
MenologyGameActionOne['Giành được thắng lợi trong quyết đấu'] =
			{ 
				id=544, iconpath1="演武阵.dds", iconpath2="演武阵大.dds",  
				name="Giành được thắng lợi trong quyết đấu",validtime="0:00-24:00", levelreq="1-160", needreborn=false, permitcount=-1, 
				line="Kênh 1-15", npc="决斗中获胜", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="决斗中获胜", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       与任意一名玩家^ffcb4a决斗^ffffff并获胜即可获得该项活跃度积分。"
			}
MenologyGameActionOne['Chăm sóc đỡ đần nhau'] =
			{ 
				id=545, iconpath1="雪人总动员.dds", iconpath2="雪人总动员大.dds",  
				name="Chăm sóc đỡ đần nhau",validtime="0:00-24:00", levelreq="1-160", needreborn=false, permitcount=-1, 
				line="Kênh 1-15", npc="相依相偎", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="相依相偎", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       成功与一名异性玩家进行^ffcb4a相依相偎^ffffff即可获得该项活跃度积分。"
			}
MenologyGameActionOne['Tổ đội thành công'] =
			{ 
				id=546, iconpath1="追风圣灵.dds", iconpath2="追风圣灵大.dds",  
				name="Tổ đội thành công",validtime="0:00-24:00", levelreq="1-160", needreborn=false, permitcount=-1, 
				line="Kênh 1-15", npc="成功组队", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="成功组队", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       与任意一名玩家^ffcb4a成功组队^ffffff即可获得该项活跃度积分。"
			}
MenologyGameActionOne['Bày hàng và bán ra hàng hóa'] =
			{ 
				id=547, iconpath1="新科试炼.dds", iconpath2="新科试炼大.dds",  
				name="Bày hàng và bán ra hàng hóa",validtime="0:00-24:00", levelreq="1-160", needreborn=false, permitcount=-1, 
				line="Kênh 1-15", npc="摆摊并卖出商品", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="摆摊并卖出商品", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       进行摆摊并^ffcb4a成功卖出物品^ffffff即可获得该项活跃度积分。"
			}

function MenologyGameActionOne:GetSelf()
	return self;
end

MenologyGameActionTwo = {}
MenologyGameActionTwo['Thiên Nhân Hợp Nhất'] =
			{ 
				id=548, iconpath1="戾气危机.dds", iconpath2="戾气危机大.dds",  
				name="Thiên Nhân Hợp Nhất",validtime="0:00-24:00", levelreq="1-160", needreborn=false, permitcount=-1, 
				line="Kênh 1-15", npc="天人合一", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="天人合一", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       处于^ffcb4a天人合一^ffffff状态下即可获得该项活跃度积分。"
			}
MenologyGameActionTwo['Điều khiển Phi Kiếm'] =
			{ 
				id=549, iconpath1="追风圣灵.dds", iconpath2="追风圣灵大.dds",  
				name="Điều khiển Phi Kiếm",validtime="0:00-24:00", levelreq="1-160", needreborn=false, permitcount=-1, 
				line="Kênh 1-15", npc="驾驭飞剑", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="驾驭飞剑", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       驾驭飞剑^ffcb4a飞行^ffffff即可获得该项活跃度积分。"
			}
MenologyGameActionTwo['Hoan Linh Thạch biến hóa'] =
			{ 
				id=550, iconpath1="忠烈碑.dds", iconpath2="忠烈碑大.dds",  
				name="Hoan Linh Thạch biến hóa",validtime="0:00-24:00", levelreq="1-160", needreborn=false, permitcount=-1, 
				line="Kênh 1-15", npc="幻灵石幻化", istaskaward=false, taskid="1",
				award=
				{ 
					{awardid=0, awardiconpath="特殊物品奖励.dds", awarddesc="^ffcb4aĐiểm hoạt động\r^ffffffĐạt được điểm hoạt động。"},
				},
				commendlevel=4, istasknpc=false, descnpc="幻灵石幻化", descmapid=-1, descpos="9999,0,9999", istransport=false, 
				desc="^ffffff       处于^ffcb4a幻灵石幻化^ffffff状态下即可获得该项活跃度积分。"
			}
			
function MenologyGameActionTwo:GetSelf()
	return self;
end

SpecialTask = {}
SpecialTask['Tru tiên vi ái thành thần'] = 
			{
				id = 401, backgroud1="icon\\lace_battle.tga", backgroud2="icon\\menology_aniversary.tga", 
				mendisplaylevel=112, weekly=false, validday="1,2,3,4,5,6,7", 
				periods=
				{
					{starttime="2010-11-23", endtime="2010-11-23"},
				}, 
				validtime="0:00-24:00", 
				desc="^ffffff诛仙为爱成神版本上线"
			}
SpecialTask['Sự kiện Quốc Khánh']=
			{
				id = 402, backgroud1="icon\\lace_specday.tga", backgroud2="icon\\menology_nationalday.tga", 
				mendisplaylevel=111, weekly=false, validday="1,2,3,5,7", 
				periods=
				{
					{starttime="2010-10-01", endtime="2010-10-10"},
				}, 
				validtime="9:00-12:00", 
				desc="^ffffff国庆活动周"
			}
SpecialTask['Sự kiện Giáng Sinh']=
			{
				id = 403, backgroud1="icon\\lace_commonactivity.tga", backgroud2="icon\\menology_snowman.tga", 
				mendisplaylevel=113, weekly=false, validday="1,2,3,5,7", 
				periods=
				{
					{starttime="2010-12-17", endtime="2010-12-25"},
				}, 
				validtime="9:00-12:00", 
				desc="^ffffff      白雪飘飘，深冬严严，圣诞节新增诸多精彩活动：\r^11ff11瑞雪佳年\r^11ff11把我变成雪人吧\r^11ff11天池玄冰\r^11ff11雪人的圣诞心愿\r^11ff11圣诞许愿\r^11ff11圣诞老人的礼物"
			}
SpecialTask['Tết Nguyên Đán']=
			{
				id = 404, backgroud1="icon\\lace_festival.tga", backgroud2="icon\\menology_chongyang.tga", 
				mendisplaylevel=114, weekly=false, validday="1,2,3,5,7", 
				periods=
				{
					{starttime="2011-1-1", endtime="2011-1-7"},
				}, 
				validtime="9:00-12:00", 
				desc="^ffffff      元旦活动周，精彩活动多多：\r^11ff11祈福钟声\r^11ff11幸运金蛋"
			}
SpecialTask['Sự kiện Tết Nguyên Tiêu']=
			{
				id = 405, backgroud1="icon\\lace_festival.tga", backgroud2="icon\\menology_nationalday.tga", 
				mendisplaylevel=115, weekly=false, validday="1,2,3,4,5,6,7", 
				periods=
				{
					{starttime="2011-2-15", endtime="2011-2-22"},
				}, 
				validtime="20:00-23:00", 
				desc="^ffffff      一年一度的闹元宵，猜灯谜活动又来啦！今年由宝石猫陪大家一起过元宵节。如果准备好了，就可以去那边翻开花灯猜灯谜了！"
			}

SpecialTask['Bạch Sắc Tình Nhân']=
			{
				id = 406, backgroud1="icon\\lace_battle.tga", backgroud2="icon\\menology_aniversary.tga", 
				mendisplaylevel=116, weekly=false, validday="1,2,3,4,5,6,7", 
				periods=
				{
					{starttime="2011-3-8", endtime="2011-3-21"},
				}, 
				validtime="0:00-24:00", 
				desc="^ffffff      Valentine Trắng lại tới rồi，những người chơi cấp 30 trở lên hãy tới tìm ^11ff11Hà Dương Nguyệt Lão^ffffffnhận nhiệm vụ“Phi Thành Vật Nhiễu”，được Nguyệt Lão tặng “Uyên Ương Thú”，“Uyên Ương Thú” sẽ tự động tìm người có duyên với bạn, sau đó, từ miệng “Uyên Ương Thú” sẽ nhả ra “Uyên Ương Châu” bên trong chứa vật phẩm Nguyệt Lão yêu cầu, đem giao cho Nguyệt Lão là sẽ nhận được phần thưởng phong phú"
			}
			
SpecialTask['Tết Lao Động']=
			{
				id = 407, backgroud1="icon\\lace_festival.tga", backgroud2="icon\\menology_nationalday.tga", 
				mendisplaylevel=117, weekly=false, validday="1,2,3,4,5,6,7", 
				periods=
				{
					{starttime="2011-4-26", endtime="2011-5-14"},
				}, 
				validtime="0:00-24:00", 
				desc="^ffffff      一年一度的劳动节又到了，30级以上的玩家可以到^11ff11司灵韵^ffffff那里领取劳动节活动任务，完成后将获得大量奖励，快去^11ff11河阳相思木^ffffff那里找他吧。（活动开放时间：4月26日12：02-5月14日23：55）"
			}

SpecialTask['Tru Tiên Niên Khánh']=
			{
				id = 408, backgroud1="icon\\lace_denglong.tga", backgroud2="icon\\menology_yuandan.tga", 
				mendisplaylevel=118, weekly=false, validday="1,2,3,4,5,6,7", 
				periods=
				{
					{starttime="2011-5-24", endtime="2011-5-24"},
				}, 
				validtime="0:00-24:00", 
				desc="^ffffff      Ngày đẹp truyền tin vui, \r      Tuổi nay lại gặp nhau, \r      hoan ca mừng thịnh thế, \r      nhảy múa chúc bình sinh. \r      Đây là ngày lễ của toàn thể nhân dân Tru Tiên, để chúng ta cùng  cầu phúc cho thế giới Tru Tiên mới rực rỡ! （^11ff11 trong thời gian hoạt động chúc mừng tròn năm tuổi, người chơi online sẽ nhận được rất nhiều quà tốt đặc sắc. ^ffffff）"
			}
SpecialTask['Tru Tiên Tiền Truyện']=
			{
				id = 409, backgroud1="icon\\lace_festival.tga", backgroud2="icon\\menology_yuandan.tga", 
				mendisplaylevel=118, weekly=false, validday="1,2,3,4,5,6,7", 
				periods=
				{
					{starttime="2011-9-22", endtime="2011-10-11"},
				}, 
				validtime="0:00-24:00", 
				desc="^ffffff      佳节传喜庆，\r      今岁复相重，\r      欢歌颂盛世，\r      载舞祝平生。\r      诛仙新版《诛仙·前传》正式公测，让我们共同为这焕然一新的诛仙世界祈福！（^11ff11活动期间，在线玩家将会获得大量精彩纷呈好礼。^ffffff）"
			}
SpecialTask['Lễ Hội Quốc Khánh']=
			{
				id = 410, backgroud1="icon\\lace_festival.tga", backgroud2="icon\\menology_nationalday.tga", 
				mendisplaylevel=119, weekly=false, validday="1,2,3,5,7", 
				periods=
				{
					{starttime="2011-10-01", endtime="2011-10-11"},
				}, 
				validtime="9:00-12:00", 
				desc="^ffffff      国庆期间，所有在线玩家通过参与活动将会获得大量奖励。"
			}
SpecialTask['Sự Kiên Thánh Đản']=
			{
				id = 411, backgroud1="icon\\lace_commonactivity.tga", backgroud2="icon\\menology_snowman.tga", 
				mendisplaylevel=120, weekly=false, validday="1,2,3,5,7", 
				periods=
				{
					{starttime="2011-12-18", endtime="2011-12-25"},
				}, 
				validtime="0:00-24:00", 
				desc="^ffffff      白雪飘飘，深冬严严，圣诞节新增诸多精彩活动：\r^11ff11      祝福送给你\r^11ff11      顽皮的孩子"
			}
SpecialTask['Tết Nguyên Đán']=
			{
				id = 412, backgroud1="icon\\lace_festival.tga", backgroud2="icon\\menology_chongyang.tga", 
				mendisplaylevel=121, weekly=false, validday="1,2,3,5,7", 
				periods=
				{
					{starttime="2012-1-1", endtime="2012-1-7"},
				}, 
				validtime="0:00-24:00", 
				desc="^ffffff      元旦期间，在新年使者处选择“^11ff11参加元旦活动^ffffff”，进入元旦活动场地，完成元旦任务便可获得奖励。"
			}
SpecialTask['Lễ Hội Xuân Tiết']=
			{
				id = 413, backgroud1="icon\\lace_commonactivity.tga", backgroud2="icon\\menology_nationalday.tga", 
				mendisplaylevel=122, weekly=false, validday="1,2,3,4,5,6,7", 
				periods=
				{
					{starttime="2012-1-22", endtime="2012-2-14"},
				}, 
				validtime="0:00-24:00", 
				desc="^ffffff      爆竹声声，喜迎新春，节日期间诸多精彩活动：\r^11ff11十二生肖齐贺岁\r^11ff11爆竹声声除旧岁\r^11ff11新桃欢笑拜新年\r^11ff11熬年守岁\r^11ff11消灭大年兽"
			}
SpecialTask['Ngày Lễ Tình Nhân']=
			{
				id = 414, backgroud1="icon\\lace_battle.tga", backgroud2="icon\\menology_aniversary.tga", 
				mendisplaylevel=123, weekly=false, validday="1,2,3,4,5,6,7", 
				periods=
				{
					{starttime="2012-2-14", endtime="2012-2-21"},
				}, 
				validtime="0:00-24:00", 
				desc="^ffffff      春回大地，情心难抑，情人节前往Kênh 15寻找情缘仙子，得到只属于你的情缘。"
			}
SpecialTask['Bạch Sắc Tình Nhân']=
			{
				id = 415, backgroud1="icon\\lace_battle.tga", backgroud2="icon\\menology_aniversary.tga", 
				mendisplaylevel=124, weekly=false, validday="1,2,3,4,5,6,7", 
				periods=
				{
					{starttime="2012-3-14", endtime="2012-3-20"},
				}, 
				validtime="0:00-24:00", 
				desc="^ffffff      3月14至3月20日期间，30级以上的玩家可在红娘处领取“非诚勿扰”任务，参加白色情人节活动，获得奖励。"
			}
SpecialTask['Ngu Nhân Tiết Lễ Hội']=
			{
				id = 416, backgroud1="icon\\lace_battle.tga", backgroud2="icon\\menology_aniversary.tga", 
				mendisplaylevel=125, weekly=false, validday="1,2,3,4,5,6,7", 
				periods=
				{
					{starttime="2012-4-1", endtime="2012-4-7"},
				}, 
				validtime="0:00-24:00", 
				desc="^ffffff      Lại là 1 năm cá tháng tư, vui vẻ tràn lan, rất nhiều phần thưởng đợi bạn tham dự. \rTừ 1 tháng  4 đến ngày 7 tháng 4 đến chỗ “Ngư” Hà Dương Kênh 15, tham gia hoạt động có liên quan đến ngày tết cá tháng tư: \r      ^11ff11 người mong đợi mắc lừa\r      ^11ff11 đại trí như Ngu\r      ^11ff11 tiệc toàn cá\r      trong ngày 1 tháng 4, càng có người cá trong truyền thuyết hiện thế, chém diệt nó có thể nhận được rất nhiều phần thưởng. "
			}


function SpecialTask:GetSelf()
	return self;
end