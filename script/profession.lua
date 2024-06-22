----description:This script file is to supply ui help.
----author: wangdongliang


Profession= {}

Profession[1]= {
	Version = 1,
	ParCameraPos = {11.497, 355.620, 24.585};		-- 全职业展示摄像机位置和方向
	ParCameraDir = {0.0, 0.0, -1.0};
	ParFOV = 0.6;								-- 全职业展示摄像机FOV
	ProfessionInfo = {
		{
			ProfNum = 0,			-- 职业列表中位置，由程序负责修改
			NameZh = "鬼王宗",
			Name = "GuiWangZong",	-- 职业名称，严格按照职业列表中
			MapID = 2001,			-- 职业所属地图ID
			Occupation = 14,		-- 五重职业编号
			AnimationID = 16,		-- 职业展示动画编号，参考configs\animations\animation_files.txt
			Skills = {523, 522, 314, 262},		-- 展示技能id
			ParGender = 0,						-- 性别0男，1女
			ParPos = {9.648, 354.313, 10.822},	-- 全家福位置和站立方向
			ParRotate = 12.50;									-- 全家福人物旋转参数
			CameraSkillPos = {22.814, 198.645, -353.008},		-- 技能播放相机位置和方向
			CameraSkillDir = {-0.158, -0.016, 0.987};

			Male = {							-- 男角色配置
				RolePos = {22.335, 197.473, -349.668},		-- 角色列表和捏脸时站立位置
				CameraPos = {22.814, 198.645, -353.008},	-- 角色列表摄像机位置
				CameraDir = {-0.158, -0.016, 0.987 },			-- 角色列表摄像机方向
				CameraClosePos = {22.440, 199.148, -350.671},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.158, -0.016, 0.987},			-- 摄像机靠近时方向
				Feature = {1,1,0,0},		-- face, hair, ear, tail

				Equip0 = {78097, 78118, 78113, 56367},	-- 门派套装,前三个捏脸界面
				Equip1 = {76426, 76461, 76356, 76392},
				Equip2 = {76266, 76301, 76232, 76410},
				Equip3 = {78097, 78118, 78113, 56367}	-- 职业动画套装
			},
			Female = {							-- 女角色配置
				RolePos = {22.433, 197.576, -349.857},		-- 角色列表和捏脸时站立位置
				CameraPos = {22.814, 198.645, -353.008},	-- 角色列表摄像机位置
				CameraDir = {-0.158, -0.016, 0.987},			-- 角色列表摄像机方向
				CameraClosePos = {22.571, 199.126, -350.912},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.158, -0.016, 0.987},			-- 摄像机靠近时方向
				Feature = {1,1,0,0},		-- face, hair, ear, tail

				Equip0 = {80006, 80007, 79975, 56367},	-- 门派套装,前三个捏脸界面
				Equip1 = {76427, 76462, 76358, 76392},
				Equip2 = {76267, 76302, 76233, 76410},
				Equip3 = {20820, 20700, 20940, 20619}	-- 职业动画套装
			}
		},
		{
			ProfNum = 1,			-- 职业列表中位置，由程序负责修改
			NameZh = "合欢派",
			Name = "HeHuanPai",	-- 职业名称，严格按照职业列表中
			MapID = 2001,			-- 职业所属地图ID
			Occupation = 14,		-- 五重职业编号
			AnimationID = 17,		-- 职业展示动画编号，参考configs\animations\animation_files.txt
			Skills = {306, 782, 780, 299},		-- 展示技能id
			ParGender = 1,					-- 性别0男，1女
			ParPos = {10.317, 355.060, 7.769},		-- 全家福位置
			ParRotate = 352.50;									-- 全家福人物旋转参数
			CameraSkillPos = {22.814, 198.645, -353.008},		-- 技能播放相机位置和方向
			CameraSkillDir = {-0.158, -0.016, 0.987};


			Male = {						-- 男角色配置
				RolePos = {22.335, 197.473, -349.668},		-- 角色列表和捏脸时站立位置
				CameraPos = {22.814, 198.645, -353.008},	-- 角色列表摄像机位置
				CameraDir = {-0.158, -0.016, 0.987 },			-- 角色列表摄像机方向
				CameraClosePos = {22.440, 199.148, -350.671},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.158, -0.016, 0.987},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {79979, 79980, 79963, 70744},	-- 门派套装,前三个捏脸界面
				Equip1 = {56536, 56538, 56498, 56493},
				Equip2 = {76264, 76299, 76230, 76407},
				Equip3 = {20820, 20700, 20940, 20619}	-- 职业动画套装
			},
			Female = {						-- 女角色配置
				RolePos = {22.433, 197.576, -349.857},		-- 角色列表和捏脸时站立位置
				CameraPos = {22.814, 198.645, -353.008},	-- 角色列表摄像机位置
				CameraDir = {-0.158, -0.016, 0.987},			-- 角色列表摄像机方向
				CameraClosePos = {22.571, 199.126, -350.912},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.158, -0.016, 0.987},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {78090, 78134, 78115, 70744},	-- 门派套装,前三个捏脸界面
				Equip1 = {56558, 56539, 56499, 56493},
				Equip2 = {76265, 76300, 76231, 76407},
				Equip3 = {78090, 78134, 78115, 70744}	-- 职业动画套装
			}
		},
		{
			ProfNum = 2,			-- 职业列表中位置，由程序负责修改
			NameZh = "青云门",
			Name = "QingYunMen",	-- 职业名称，严格按照职业列表中
			MapID = 2001,			-- 职业所属地图ID
			Occupation = 14,		-- 五重职业编号
			AnimationID = 18,		-- 职业展示动画编号，参考configs\animations\animation_files.txt
			Skills = {786, 240, 239, 600},		-- 展示技能id
			ParGender = 0,					-- 性别0男，1女
			ParPos = {11.339, 354.224, 9.536},		-- 全家福位置
			ParRotate = 5.0;									-- 全家福人物旋转参数
			CameraSkillPos = {22.814, 198.645, -353.008},		-- 技能播放相机位置和方向
			CameraSkillDir = {-0.158, -0.016, 0.987};

			Male = {						-- 男角色配置
				RolePos = {22.335, 197.473, -349.668},		-- 角色列表和捏脸时站立位置
				CameraPos = {22.814, 198.645, -353.008},	-- 角色列表摄像机位置
				CameraDir = {-0.158, -0.016, 0.987 },			-- 角色列表摄像机方向
				CameraClosePos = {22.440, 199.148, -350.671},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.158, -0.016, 0.987},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {78099, 78122, 78112, 76396},	-- 门派套装,前三个捏脸界面
				Equip1 = {56935, 56937, 56939, 56892},
				Equip2 = {76273, 76307, 76238, 76414},
				Equip3 = {78099, 78122, 78112, 76396}	-- 职业动画套装
			},
			Female = {						-- 女角色配置
				RolePos = {22.433, 197.576, -349.857},		-- 角色列表和捏脸时站立位置
				CameraPos = {22.814, 198.645, -353.008},	-- 角色列表摄像机位置
				CameraDir = {-0.158, -0.016, 0.987},			-- 角色列表摄像机方向
				CameraClosePos = {22.571, 199.126, -350.912},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.158, -0.016, 0.987},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {80002, 80003, 79973, 76396},	-- 门派套装,前三个捏脸界面
				Equip1 = {56936, 56938, 56940, 56892},
				Equip2 = {76274, 76308, 76239, 76414},
				Equip3 = {20820, 20700, 20940, 20619}	-- 职业动画套装
			}
		},
		{
			ProfNum = 3,			-- 职业列表中位置，由程序负责修改
			NameZh = "天音寺",
			Name = "TianYinSi",	-- 职业名称，严格按照职业列表中
			MapID = 2001,			-- 职业所属地图ID
			Occupation = 14,		-- 五重职业编号
			AnimationID = 19,		-- 职业展示动画编号，参考configs\animations\animation_files.txt
			Skills = {788, 790, 277, 382},		-- 展示技能id
			ParGender = 0,					-- 性别0男，1女
			ParPos = {11.914, 355.507, 7.078},		-- 全家福位置
			ParRotate = 355.0;						-- 全家福人物旋转参数
			CameraSkillPos = {22.814, 198.645, -353.008},		-- 技能播放相机位置和方向
			CameraSkillDir = {-0.158, -0.016, 0.987};

			Male = {						-- 男角色配置
				RolePos = {22.335, 197.473, -349.668},		-- 角色列表和捏脸时站立位置
				CameraPos = {22.814, 198.645, -353.008},	-- 角色列表摄像机位置
				CameraDir = {-0.158, -0.016, 0.987 },			-- 角色列表摄像机方向
				CameraClosePos = {22.440, 199.148, -350.671},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.158, -0.016, 0.987},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {78101, 78126, 78110, 71321},	-- 门派套装,前三个捏脸界面
				Equip1 = {76428, 76463, 76359, 76404},
				Equip2 = {76268, 76303, 76234, 76421},
				Equip3 = {78101, 78126, 78110, 71321}	-- 职业动画套装
			},
			Female = {						-- 女角色配置
				RolePos = {22.433, 197.576, -349.857},		-- 角色列表和捏脸时站立位置
				CameraPos = {22.814, 198.645, -353.008},	-- 角色列表摄像机位置
				CameraDir = {-0.158, -0.016, 0.987},			-- 角色列表摄像机方向
				CameraClosePos = {22.571, 199.126, -350.912},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.158, -0.016, 0.987},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {79983, 79984, 79965, 71321},	-- 门派套装,前三个捏脸界面
				Equip1 = {76429, 76464, 76360, 76404},
				Equip2 = {76269, 76304, 76235, 76421},
				Equip3 = {20820, 20700, 20940, 20619}	-- 职业动画套装
			}
		},
		{
			ProfNum = 4,			-- 职业列表中位置，由程序负责修改
			NameZh = "鬼道",
			Name = "GuiDao",	-- 职业名称，严格按照职业列表中
			MapID = 2001,			-- 职业所属地图ID
			Occupation = 14,		-- 五重职业编号
			AnimationID = 20,		-- 职业展示动画编号，参考configs\animations\animation_files.txt
			Skills = {1128, 1131, 1150, 1094},		-- 展示技能id
			ParGender = 0,					-- 性别0男，1女
			ParPos = {12.293, 354.158, 8.666},		-- 全家福位置
			ParRotate = 0;						-- 全家福人物旋转参数
			CameraSkillPos = {22.814, 198.645, -353.008},		-- 技能播放相机位置和方向
			CameraSkillDir = {-0.158, -0.016, 0.987};

			Male = {						-- 男角色配置
				RolePos = {22.335, 197.473, -349.668},		-- 角色列表和捏脸时站立位置
				CameraPos = {22.814, 198.645, -353.008},	-- 角色列表摄像机位置
				CameraDir = {-0.158, -0.016, 0.987 },			-- 角色列表摄像机方向
				CameraClosePos = {22.440, 199.148, -350.671},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.158, -0.016, 0.987},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {78096, 78111, 78125, 76397},	-- 门派套装,前三个捏脸界面
				Equip1 = {56305, 56307, 56309, 56262},
				Equip2 = {76293, 76327, 76258, 76415},
				Equip3 = {78096, 78111, 78125, 76397}	-- 职业动画套装
			},
			Female = {						-- 女角色配置
				RolePos = {22.433, 197.576, -349.857},		-- 角色列表和捏脸时站立位置
				CameraPos = {22.814, 198.645, -353.008},	-- 角色列表摄像机位置
				CameraDir = {-0.158, -0.016, 0.987},			-- 角色列表摄像机方向
				CameraClosePos = {22.571, 199.126, -350.912},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.158, -0.016, 0.987},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {80008, 80009, 79976, 76397},	-- 门派套装,前三个捏脸界面
				Equip1 = {71229, 71260, 71291, 71324},
				Equip2 = {76294, 76328, 76259, 76415},
				Equip3 = {20820, 20700, 20940, 20619}	-- 职业动画套装
			}
		},
		{
			ProfNum = 5,			-- 职业列表中位置，由程序负责修改
			NameZh = "焚香谷",
			Name = "FenXiangGu",	-- 职业名称，严格按照职业列表中
			MapID = 2001,			-- 职业所属地图ID
			Occupation = 14,		-- 五重职业编号
			AnimationID = 21,		-- 职业展示动画编号，参考configs\animations\animation_files.txt
			Skills = {3432, 3448, 3447, 3439},		-- 展示技能id
			ParGender = 1,					-- 性别0男，1女
			ParPos = {13.605, 354.061, 7.669},		-- 全家福位置
			ParRotate = 2.50;						-- 全家福人物旋转参数
			CameraSkillPos = {22.814, 198.645, -353.008},		-- 技能播放相机位置和方向
			CameraSkillDir = {-0.158, -0.016, 0.987};

			Male = {						-- 男角色配置
				RolePos = {22.335, 197.473, -349.668},		-- 角色列表和捏脸时站立位置
				CameraPos = {22.814, 198.645, -353.008},	-- 角色列表摄像机位置
				CameraDir = {-0.158, -0.016, 0.987 },			-- 角色列表摄像机方向
				CameraClosePos = {22.440, 199.148, -350.671},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.158, -0.016, 0.987},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {79994, 79995, 79969, 70721},	-- 门派套装,前三个捏脸界面
				Equip1 = {76430, 76466, 76361, 76402},
				Equip2 = {76271, 76305, 76236, 76419},
				Equip3 = {20820, 20700, 20940, 20619}	-- 职业动画套装
			},
			Female = {						-- 女角色配置
				RolePos = {22.433, 197.576, -349.857},		-- 角色列表和捏脸时站立位置
				CameraPos = {22.814, 198.645, -353.008},	-- 角色列表摄像机位置
				CameraDir = {-0.158, -0.016, 0.987},			-- 角色列表摄像机方向
				CameraClosePos = {22.571, 199.126, -350.912},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.158, -0.016, 0.987},			-- 摄像机靠近时方向
				Feature = {6, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {78088, 78132, 78114, 70721},	-- 门派套装,前三个捏脸界面
				Equip1 = {76431, 76467, 76362, 76402},
				Equip2 = {76272, 76306, 76237, 76419},
				Equip3 = {78088, 78132, 78114, 70721}	-- 职业动画套装
			}
		},
		--------- 神族
		{
			ProfNum = 6,			-- 职业列表中位置，由程序负责修改
			NameZh = "九黎",
			Name = "JiuLi",			-- 职业名称，严格按照职业列表中
			MapID = 2003,			-- 职业所属地图ID
			Occupation = 37,		-- 五重职业编号
			AnimationID = 22,		-- 职业展示动画编号，参考configs\animations\animation_files.txt
			Skills = {1879, 1874, 1875, 1865},		-- 展示技能id
			ParGender = 1,					-- 性别0男，1女
			ParPos = {18.029, 353.920, 11.109},		-- 全家福位置
			ParRotate = 300.0;						-- 全家福人物旋转参数
			CameraSkillPos = {79.517, 392.734, -229.689},		-- 技能播放相机位置和方向
			CameraSkillDir = {-0.306, -0.003, 0.952};

			Male = {						-- 男角色配置
				RolePos = {78.602, 391.437, -226.762},		-- 角色列表和捏脸时站立位置
				CameraPos = {79.517, 392.734, -229.689},	-- 角色列表摄像机位置
				CameraDir = {-0.306, -0.003, 0.952},			-- 角色列表摄像机方向
				CameraClosePos = {78.910, 393.360, -227.800},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.306, -0.003, 0.952},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {79977, 79978, 79962, 71330},	-- 门派套装,前三个捏脸界面
				Equip1 = {71234, 71265, 71296, 71330},
				Equip2 = {76283, 76317, 76248, 76417},
				Equip3 = {20820, 20700, 20940, 20619}	-- 职业动画套装
			},
			Female = {						-- 女角色配置
				RolePos = {78.735, 391.638, -227.174},		-- 角色列表和捏脸时站立位置
				CameraPos = {79.517, 392.734, -229.689},	-- 角色列表摄像机位置
				CameraDir = {-0.306, -0.003, 0.952},			-- 角色列表摄像机方向
				CameraClosePos = {78.799, 393.346, -227.783},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.306, -0.003, 0.952},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {78091, 78135, 78117, 71330},	-- 门派套装,前三个捏脸界面
				Equip1 = {71235, 71266, 71297, 71330},
				Equip2 = {76284, 76318, 76249, 76417},
				Equip3 = {78091, 78135, 78117, 71330}	-- 职业动画套装
			}
		},
		{
			ProfNum = 7,			-- 职业列表中位置，由程序负责修改
			NameZh = "烈山",
			Name = "LieShan",		-- 职业名称，严格按照职业列表中
			MapID = 2003,			-- 职业所属地图ID
			Occupation = 43,		-- 五重职业编号
			AnimationID = 23,		-- 职业展示动画编号，参考configs\animations\animation_files.txt
			Skills = {1911, 1915, 1920, 1910},		-- 展示技能id
			ParGender = 1,					-- 性别0男，1女
			ParPos = {15.124, 354.049, 12.327},		-- 全家福位置
			ParRotate = 335.0;						-- 全家福人物旋转参数
			CameraSkillPos = {79.495, 392.449, -229.102},		-- 技能播放相机位置和方向
			CameraSkillDir = {-0.314, 0.023, 0.949};

			Male = {						-- 男角色配置
				RolePos = {78.560, 391.434, -226.581},		-- 角色列表和捏脸时站立位置
				CameraPos = {79.495, 392.449, -229.102},	-- 角色列表摄像机位置
				CameraDir = {-0.314, 0.023, 0.949},			-- 角色列表摄像机方向
				CameraClosePos = {78.878, 392.972, -227.463},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.314, 0.023, 0.949},			-- 摄像机靠近时方向
				Feature = {1, 1, 1, 1},		-- face, hair, ear, tail

				Equip0 = {79992, 79993, 79968, 25635},	-- 门派套装,前三个捏脸界面
				Equip1 = {76444, 76482, 76375, 76406},
				Equip2 = {76285, 76319, 76250, 76423},
				Equip3 = {20820, 20700, 20940, 20619}	-- 职业动画套装
			},
			Female = {						-- 女角色配置
				RolePos = {78.724, 391.432, -226.598},		-- 角色列表和捏脸时站立位置
				CameraPos = {79.495, 392.449, -229.102},	-- 角色列表摄像机位置
				CameraDir = {-0.314, 0.023, 0.949},			-- 角色列表摄像机方向
				CameraClosePos = {79.005, 392.77, -227.526},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.314, 0.023, 0.949},			-- 摄像机靠近时方向
				Feature = {1, 1, 1, 1},		-- face, hair, ear, tail

				Equip0 = {78092, 78136, 78129, 25635},	-- 门派套装,前三个捏脸界面
				Equip1 = {76446, 76483, 76376, 76406},
				Equip2 = {76286, 76320, 76251, 76423},
				Equip3 = {78092, 78136, 78129, 25635}	-- 职业动画套装
			}
		},
		{
			ProfNum = 8,			-- 职业列表中位置，由程序负责修改
			NameZh = "怀光",
			Name = "HuaiGuang",			-- 职业名称，严格按照职业列表中
			MapID = 2003,			-- 职业所属地图ID
			Occupation = 49,		-- 五重职业编号
			AnimationID = 25,		-- 职业展示动画编号，参考configs\animations\animation_files.txt
			Skills = {2451, 2453, 2452, 2443},		-- 展示技能id
			ParGender = 0,					-- 性别0男，1女
			ParPos = {16.215, 355.327, 10.468},		-- 全家福位置
			ParRotate = 325.0;						-- 全家福人物旋转参数
			CameraSkillPos = {79.495, 392.449, -229.102},		-- 技能播放相机位置和方向
			CameraSkillDir = {-0.314, 0.023, 0.949};

			Male = {						-- 男角色配置
				RolePos = {78.560, 391.434, -226.581},		-- 角色列表和捏脸时站立位置
				CameraPos = {79.495, 392.449, -229.102},	-- 角色列表摄像机位置
				CameraDir = {-0.314, 0.023, 0.949},			-- 角色列表摄像机方向
				CameraClosePos = {78.878, 392.972, -227.463},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.314, 0.023, 0.949},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {78098, 78120, 78119, 35026},	-- 门派套装,前三个捏脸界面
				Equip1 = {76452, 76489, 76381, 76401},
				Equip2 = {76291, 76325, 76256, 76418},
				Equip3 = {78098, 78120, 78119, 35026}	-- 职业动画套装
			},
			Female = {						-- 女角色配置
				RolePos = {78.724, 391.432, -226.598},		-- 角色列表和捏脸时站立位置
				CameraPos = {79.495, 392.449, -229.102},	-- 角色列表摄像机位置
				CameraDir = {-0.314, 0.023, 0.949},			-- 角色列表摄像机方向
				CameraClosePos = {79.005, 392.77, -227.526},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.314, 0.023, 0.949},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {79990, 79991, 79967, 35026},	-- 门派套装,前三个捏脸界面
				Equip1 = {76453, 76491, 76382, 76401},
				Equip2 = {76292, 76326, 76257, 76418},
				Equip3 = {20820, 20700, 20940, 20619}	-- 职业动画套装
			}
		},
		{
			ProfNum = 9,			-- 职业列表中位置，由程序负责修改
			NameZh = "天华",
			Name = "TianHua",		-- 职业名称，严格按照职业列表中
			MapID = 2003,			-- 职业所属地图ID
			Occupation = 55,		-- 五重职业编号
			AnimationID = 24,		-- 职业展示动画编号，参考configs\animations\animation_files.txt
			Skills = {2489, 2497, 2480, 2468},		-- 展示技能id
			ParGender = 1,					-- 性别0男，1女
			ParPos = {17.644, 356.667, 8.480},		-- 全家福位置
			ParRotate = 330.0;						-- 全家福人物旋转参数
			CameraSkillPos = {79.524, 392.647, -228.784},		-- 技能播放相机位置和方向
			CameraSkillDir = {-0.314, 0.023, 0.949};

			Male = {						-- 男角色配置
				RolePos = {78.736, 391.249, -226.159},		-- 角色列表和捏脸时站立位置
				CameraPos = {79.524, 392.647, -228.784},	-- 角色列表摄像机位置
				CameraDir = {-0.314, 0.023, 0.949},			-- 角色列表摄像机方向
				CameraClosePos = {79.090, 393.265, -227.262},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.314, 0.023, 0.949},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {79981, 79982, 79964, 71336},	-- 门派套装,前三个捏脸界面
				Equip1 = {76456, 76495, 76385, 76403},
				Equip2 = {76295, 76329, 76260, 76420},
				Equip3 = {20820, 20700, 20940, 20619}	-- 职业动画套装
			},
			Female = {						-- 女角色配置
				RolePos = {78.673, 391.487, -225.970},		-- 角色列表和捏脸时站立位置
				CameraPos = {79.524, 392.647, -228.784},	-- 角色列表摄像机位置
				CameraDir = {-0.314, 0.023, 0.949},			-- 角色列表摄像机方向
				CameraClosePos = {78.87, 393.293, -226.809},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.314, 0.023, 0.949},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {78094, 78138, 78116, 71336},	-- 门派套装,前三个捏脸界面
				Equip1 = {76457, 76499, 76386, 76403},
				Equip2 = {76296, 76330, 76261, 76420},
				Equip3 = {78094, 78138, 78116, 71336}	-- 职业动画套装
			}
		},
		{
			ProfNum = 10,			-- 职业列表中位置，由程序负责修改
			NameZh = "辰皇",
			Name = "ChenHuang",			-- 职业名称，严格按照职业列表中
			MapID = 2003,			-- 职业所属地图ID
			Occupation = 60,		-- 五重职业编号
			AnimationID = 27,		-- 职业展示动画编号，参考configs\animations\animation_files.txt
			Skills = {4024, 4038, 4032, 4031},		-- 展示技能id
			ParGender = 0,					-- 性别0男，1女
			ParPos = {18.830, 355.455, 8.192},		-- 全家福位置
			ParRotate = 357.50;						-- 全家福人物旋转参数
			CameraSkillPos = {79.524, 392.647, -228.784},		-- 技能播放相机位置和方向
			CameraSkillDir = {-0.314, 0.023, 0.949};

			Male = {						-- 男角色配置
				RolePos = {78.736, 391.249, -226.159},		-- 角色列表和捏脸时站立位置
				CameraPos = {79.524, 392.647, -228.784},	-- 角色列表摄像机位置
				CameraDir = {-0.314, 0.023, 0.949},			-- 角色列表摄像机方向
				CameraClosePos = {79.090, 393.265, -227.262},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.314, 0.023, 0.949},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {78102, 78128, 78131, 52982},	-- 门派套装,前三个捏脸界面
				Equip1 = {76447, 76484, 76377, 76393},
				Equip2 = {76287, 76321, 76252, 76411},
				Equip3 = {78102, 78128, 78131, 52982}	-- 职业动画套装
			},
			Female = {						-- 女角色配置
				RolePos = {78.673, 391.487, -225.970},		-- 角色列表和捏脸时站立位置
				CameraPos = {79.524, 392.647, -228.784},	-- 角色列表摄像机位置
				CameraDir = {-0.314, 0.023, 0.949},			-- 角色列表摄像机方向
				CameraClosePos = {78.87, 393.293, -226.809},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.314, 0.023, 0.949},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {80000, 80001, 79972, 52982},	-- 门派套装,前三个捏脸界面
				Equip1 = {76449, 76486, 76378, 76393},
				Equip2 = {76288, 76322, 76253, 76411},
				Equip3 = {80000, 20700, 20940, 20619}	-- 职业动画套装
			}
		},
		{
			ProfNum = 11,			-- 职业列表中位置，由程序负责修改
			NameZh = "太昊",
			Name = "TaiHao",			-- 职业名称，严格按照职业列表中
			MapID = 2003,			-- 职业所属地图ID
			Occupation = 100,		-- 五重职业编号
			AnimationID = 26,		-- 职业展示动画编号，参考configs\animations\animation_files.txt
			Skills = {3502, 3486, 3706, 3485},		-- 展示技能id
			ParGender = 0,					-- 性别0男，1女
			ParPos = {16.996, 353.852, 10.994},		-- 全家福位置
			ParRotate = 340.0;						-- 全家福人物旋转参数
			CameraSkillPos = {79.517, 392.734, -229.689},		-- 技能播放相机位置和方向
			CameraSkillDir = {-0.306, -0.003, 0.952};

			Male = {						-- 男角色配置
				RolePos = {78.602, 391.437, -226.762},		-- 角色列表和捏脸时站立位置
				CameraPos = {79.517, 392.734, -229.689},	-- 角色列表摄像机位置
				CameraDir = {-0.306, -0.003, 0.952},			-- 角色列表摄像机方向
				CameraClosePos = {78.910, 393.360, -227.800},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.306, -0.003, 0.952},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {78100, 78124, 78109, 71342},	-- 门派套装,前三个捏脸界面
				Equip1 = {56998, 57000, 57002, 56997},
				Equip2 = {76289, 76323, 76254, 76409},
				Equip3 = {78100, 78124, 78109, 71342}	-- 职业动画套装
			},
			Female = {						-- 女角色配置
				RolePos = {78.735, 391.638, -227.174},		-- 角色列表和捏脸时站立位置
				CameraPos = {79.517, 392.734, -229.689},	-- 角色列表摄像机位置
				CameraDir = {-0.306, -0.003, 0.952},			-- 角色列表摄像机方向
				CameraClosePos = {78.799, 393.346, -227.783},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.306, -0.003, 0.952},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {79985, 79986, 79966, 71342},	-- 门派套装,前三个捏脸界面
				Equip1 = {56999, 57001, 57003, 56997},
				Equip2 = {76290, 76324, 76255, 76409},
				Equip3 = {20820, 20700, 20940, 20619}	-- 职业动画套装
			}
		},
		-----------------  天脉
		{
			ProfNum = 12,			-- 职业列表中位置，由程序负责修改
			NameZh = "牵机",
			Name = "QianJi",		-- 职业名称，严格按照职业列表中
			MapID = 2004,			-- 职业所属地图ID
			Occupation = 106,		-- 五重职业编号
			AnimationID = 31,		-- 职业展示动画编号，参考configs\animations\animation_files.txt
			Skills = {4802, 4812, 5250, 4805},		-- 展示技能id
			ParGender = 1,					-- 性别0男，1女
			ParPos = {6.901, 356.235, 9.928},		-- 全家福位置
			ParRotate = 35;						-- 全家福人物旋转参数
			CameraSkillPos = {126.120, 342.063, -374.240},		-- 技能播放相机位置和方向
			CameraSkillDir = {-0.383, 0.120, 0.916};

			Male = {						-- 男角色配置
				RolePos = {125.166, 341.504, -371.988},		-- 角色列表和捏脸时站立位置
				CameraPos = {126.120, 342.063, -374.24},	-- 角色列表摄像机位置
				CameraDir = {-0.383, 0.120, 0.916},			-- 角色列表摄像机方向
				CameraClosePos = {125.597, 342.227, -372.988},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.383, 0.120, 0.916},			-- 摄像机靠近时方向
				Feature = {1, 1, 1, 1},		-- face, hair, ear, tail

				Equip0 = {79996, 79997, 78105, 76398},	-- 门派套装,前三个捏脸界面
				Equip1 = {59476, 59478, 59480, 59475},
				Equip2 = {76279, 76313, 76244, 76416},
				Equip3 = {20820, 20700, 20940, 20619}	-- 职业动画套装
			},
			Female = {						-- 女角色配置
				RolePos = {125.358, 341.644, -372.447},		-- 角色列表和捏脸时站立位置
				CameraPos = {126.120, 342.063, -374.240},	-- 角色列表摄像机位置
				CameraDir = {-0.383, 0.120, 0.916},			-- 角色列表摄像机方向
				CameraClosePos = {125.687, 342.266, -373.203},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.383, 0.120, 0.916},			-- 摄像机靠近时方向
				Feature = {1, 1, 1, 1},		-- face, hair, ear, tail

				Equip0 = {78093, 78137, 79970, 76398},	-- 门派套装,前三个捏脸界面
				Equip1 = {59477, 59479, 59481, 59475},
				Equip2 = {76280, 76314, 76245, 76416},
				Equip3 = {78093, 78137, 79970, 76398}	-- 职业动画套装
			}
		},
		{
			ProfNum = 13,			-- 职业列表中位置，由程序负责修改
			NameZh = "英招",
			Name = "YingZhao",		-- 职业名称，严格按照职业列表中
			MapID = 2004,			-- 职业所属地图ID
			Occupation = 112,		-- 五重职业编号
			AnimationID = 28,		-- 职业展示动画编号，参考configs\animations\animation_files.txt
			Skills = {4849, 4880, 4874, 4863},		-- 展示技能id
			ParGender = 0,					-- 性别0男，1女
			ParPos = {3.511, 352.861, 8.369},		-- 全家福位置
			ParRotate = 30;						-- 全家福人物旋转参数
			CameraSkillPos = {125.594, 342.089, -373.947},		-- 技能播放相机位置和方向
			CameraSkillDir = {-0.427, 0.092, 0.899};

			Male = {						-- 男角色配置
				RolePos = {123.784, 341.101, -370.030},		-- 角色列表和捏脸时站立位置
				CameraPos = {125.594, 342.089, -373.947},	-- 角色列表摄像机位置
				CameraDir = {-0.427, 0.092, 0.899},			  -- 角色列表摄像机方向
				CameraClosePos = {124.526, 343.251, -371.698},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.427, 0.092, 0.899},			-- 摄像机靠近时方向
				Feature = {454, 452, 0, 0},		-- face, hair, ear, tail

				Equip0 = {78106, 78130, 78123, 59689},	-- 门派套装,前三个捏脸界面
				Equip1 = {59934, 59935, 59936, 59933},
				Equip2 = {76297, 76331, 76262, 76422},
				Equip3 = {78106, 78130, 78123, 59689}	-- 职业动画套装
			},
			Female = {						-- 女角色配置
				RolePos = {124.208, 341.088, -369.469},		-- 角色列表和捏脸时站立位置
				CameraPos = {125.54, 342.14, -372.58},	-- 角色列表摄像机位置
				CameraDir = {-0.356, 0.111, 0.928},			-- 角色列表摄像机方向
				CameraClosePos = {79, 393, -230},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {0, 0, 1},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {63729, 63731, 63733, 63728},	-- 门派套装,前三个捏脸界面
				Equip1 = {64328, 64330, 64332, 64327},
				Equip2 = {20820, 20700, 20940, 20619},
				Equip3 = {20820, 20700, 20940, 20619}	-- 职业动画套装
			}
		},
		{
			ProfNum = 14,			-- 职业列表中位置，由程序负责修改
			NameZh = "破军",
			Name = "PoJun",			-- 职业名称，严格按照职业列表中
			MapID = 2004,			-- 职业所属地图ID
			Occupation = 121,		-- 五重职业编号
			AnimationID = 29,		-- 职业展示动画编号，参考configs\animations\animation_files.txt
			Skills = {5414, 5415, 5411, 5413},		-- 展示技能id
			ParGender = 1,					-- 性别0男，1女
			ParPos = {5.368, 354.129, 8.921},		-- 全家福位置
			ParRotate = 25;						-- 全家福人物旋转参数
			CameraSkillPos = {125.669, 342.010, -373.106},		-- 技能播放相机位置和方向
			CameraSkillDir = {-0.375, 0.120, 0.919};

			Male = {						-- 男角色配置
				RolePos = {124.547, 341.240, -370.336},		-- 角色列表和捏脸时站立位置
				CameraPos = {125.669, 342.010, -373.106},	-- 角色列表摄像机位置
				CameraDir = {-0.375, 0.120, 0.919},			-- 角色列表摄像机方向
				CameraClosePos = {124.874, 342.831, -371.158},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.375, 0.120, 0.919},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {79998, 79999, 79971, 63876},	-- 门派套装,前三个捏脸界面
				Equip1 = {64258, 64260, 64262, 64257},
				Equip2 = {76281, 76315, 76246, 76408},
				Equip3 = {20820, 20700, 20940, 20619}	-- 职业动画套装			
			},
			Female = {						-- 女角色配置
				RolePos = {124.547, 341.240, -370.336},		-- 角色列表和捏脸时站立位置
				CameraPos = {125.669, 342.010, -373.106},	-- 角色列表摄像机位置
				CameraDir = {-0.375, 0.120, 0.919},			-- 角色列表摄像机方向
				CameraClosePos = {124.716, 342.823, -370.992},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.375, 0.120, 0.919},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {78095, 78139, 78121, 63876},	-- 门派套装,前三个捏脸界面
				Equip1 = {64259, 64261, 64263, 64257},
				Equip2 = {76282, 76316, 76247, 76408},
				Equip3 = {78095, 78139, 78121, 63876}	-- 职业动画套装
			}
		},
		{
			ProfNum = 15,			-- 职业列表中位置，由程序负责修改
			NameZh = "青罗",
			Name = "QingLuo",			-- 职业名称，严格按照职业列表中
			MapID = 2004,			-- 职业所属地图ID
			Occupation = 75,		-- 五重职业编号
			AnimationID = 30,		-- 职业展示动画编号，参考configs\animations\animation_files.txt
			Skills = {6020, 6081, 6098, 6085},		-- 展示技能id
			ParGender = 0,					-- 性别0男，1女
			ParPos = {7.382, 352.989, 9.339},		-- 全家福位置
			ParRotate = 355.0;						-- 全家福人物旋转参数
			CameraSkillPos = {125.669, 342.010, -373.106},		-- 技能播放相机位置和方向
			CameraSkillDir = {-0.375, 0.120, 0.919};

			Male = {						-- 男角色配置
				RolePos = {124.547, 341.240, -370.336},		-- 角色列表和捏脸时站立位置
				CameraPos = {125.669, 342.010, -373.106},	-- 角色列表摄像机位置
				CameraDir = {-0.375, 0.120, 0.919},			-- 角色列表摄像机方向
				CameraClosePos = {124.874, 342.831, -371.158},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.375, 0.120, 0.919},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {78107, 78108, 78127, 71355},	-- 门派套装,前三个捏脸界面
				Equip1 = {76436, 76472, 76367, 76395},
				Equip2 = {76277, 76311, 76242, 76413},
				Equip3 = {78107, 78108, 78127, 71355}	-- 职业动画套装
			},
			Female = {						-- 女角色配置
				RolePos = {124.547, 341.240, -370.336},		-- 角色列表和捏脸时站立位置
				CameraPos = {125.669, 342.010, -373.106},	-- 角色列表摄像机位置
				CameraDir = {-0.375, 0.120, 0.919},			-- 角色列表摄像机方向
				CameraClosePos = {124.716, 342.823, -370.992},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.375, 0.120, 0.919},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {80004, 80005, 79974, 71355},	-- 门派套装,前三个捏脸界面
				Equip1 = {76437, 76473, 76368, 76395},
				Equip2 = {76278, 76312, 76243, 76413},
				Equip3 = {20820, 20700, 20940, 20619}	-- 职业动画套装
			}
		},
		{
			ProfNum = 16,			-- 职业列表中位置，由程序负责修改
			NameZh = "归云",
			Name = "GuiYun",			-- 职业名称，严格按照职业列表中
			MapID = 2004,			-- 职业所属地图ID
			Occupation = 81,		-- 五重职业编号
			AnimationID = 32,		-- 职业展示动画编号，参考configs\animations\animation_files.txt
			Skills = {6538, 6525, 6458, 6528},		-- 展示技能id
			ParGender = 1,					-- 性别0男，1女
			ParPos = {6.186, 354.036, 8.024},		-- 全家福位置
			ParRotate = 0;						-- 全家福人物旋转参数
			CameraSkillPos = {125.866, 342.289, -374.867},		-- 技能播放相机位置和方向
			CameraSkillDir = {-0.401, 0.115, 0.909};

			Male = {						-- 男角色配置
				RolePos = {124.772, 341.569, -372.309},		-- 角色列表和捏脸时站立位置
				CameraPos = {125.866, 342.289, -374.867},	-- 角色列表摄像机位置
				CameraDir = {-0.401, 0.115, 0.909},			-- 角色列表摄像机方向
				CameraClosePos = {125.098, 343.095, -373.126},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.401, 0.115, 0.909},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {79987, 79988, 79989, 80267},	-- 门派套装,前三个捏脸界面
				Equip1 = {73077, 72585, 72792, 72449},
				Equip2 = {76275, 76309, 76240, 76412},
				Equip3 = {20820, 20700, 20940, 20619}	-- 职业动画套装
			},
			Female = {						-- 女角色配置
				RolePos = {124.772, 341.569, -372.309},		-- 角色列表和捏脸时站立位置
				CameraPos = {125.866, 342.289, -374.867},	-- 角色列表摄像机位置
				CameraDir = {-0.401, 0.115, 0.909},			-- 角色列表摄像机方向
				CameraClosePos = {125.118, 342.989, -373.171},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.401, 0.115, 0.909},			-- 摄像机靠近时方向
				Feature = {5, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {78089, 78133, 78103, 80267},	-- 门派套装,前三个捏脸界面
				Equip1 = {73078, 72586, 72793, 72449},
				Equip2 = {76276, 76310, 76241, 76412},
				Equip3 = {78089, 78133, 78103, 80267}	-- 职业动画套装
			}
		},
		{
			ProfNum = 17,			-- 职业列表中位置，由程序负责修改
			NameZh = "画影",
			Name = "HuaYing",			-- 职业名称，严格按照职业列表中
			MapID = 2004,			-- 职业所属地图ID
			Occupation = 83,		-- 五重职业编号
			AnimationID = 33,		-- 职业展示动画编号，参考configs\animations\animation_files.txt
			Skills = {7300, 7273, 7308, 7301},		-- 展示技能id
			ParGender = 0,					-- 性别0男，1女
			ParPos = {6.444, 353.077, 9.991},		-- 全家福位置
			ParRotate = 30;						-- 全家福人物旋转参数
			CameraSkillPos = {125.866, 342.289, -374.867},		-- 技能播放相机位置和方向
			CameraSkillDir = {-0.401, 0.115, 0.909};

			Male = {						-- 男角色配置
				RolePos = {124.772, 341.569, -372.309},		-- 角色列表和捏脸时站立位置
				CameraPos = {125.866, 342.289, -374.867},	-- 角色列表摄像机位置
				CameraDir = {-0.401, 0.115, 0.909},			-- 角色列表摄像机方向
				CameraClosePos = {125.098, 343.095, -373.126},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.401, 0.115, 0.909},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {78566, 78337, 78786, 78166},	-- 门派套装,前三个捏脸界面
				Equip1 = {78991, 78982, 78986, 78981},
				Equip2 = {20820, 20700, 20940, 20619},
				Equip3 = {78566, 78337, 78786, 78166}	-- 职业动画套装
			},
			Female = {						-- 女角色配置
				RolePos = {124.772, 341.569, -372.309},		-- 角色列表和捏脸时站立位置
				CameraPos = {125.866, 342.289, -374.867},	-- 角色列表摄像机位置
				CameraDir = {-0.401, 0.115, 0.909},			-- 角色列表摄像机方向
				CameraClosePos = {125.118, 342.989, -373.171},	-- 捏脸靠近时摄像机位置
				CameraCloseDir = {-0.401, 0.115, 0.909},			-- 摄像机靠近时方向
				Feature = {1, 1, 0, 0},		-- face, hair, ear, tail

				Equip0 = {78781, 78561, 78332, 78164},	-- 门派套装,前三个捏脸界面
				Equip1 = {78992, 78983, 78987, 78981},
				Equip2 = {20820, 20700, 20940, 20619},
				Equip3 = {78785, 78565, 78336, 78166}	-- 职业动画套装
			}
		}
	}
}

function Profession:GetSelf()
	return self;
end
