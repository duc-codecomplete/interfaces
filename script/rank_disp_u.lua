--用于client中排行榜的显示, 参考相应的word文档
	
rank_disp = {};

---参数：排行榜类型，本次排名，上次排名，名字（玩家或者帮派），职业，排名值
---例如：
---result =  rank_disp:GetDescription(1, 2, 1, "abc", 6, 20)
---返回值的格式请参考肖洲的文档

function rank_disp:GetDescription(id, rank, last_rank, name, prof, val,val2)
	---下面的内容需要修改
	---local rt = "1\t^00FF00↑1\tAAA\t散Người\t20Cấp"
	local tprof = {
	   "Thiếu Hiệp","Quỷ Vương I","Quỷ Vương II","Quỷ Vương III","Hợp Hoan I","Hợp Hoan II","Hợp Hoan III","Thanh Vân I","Thanh Vân II", "Thanh Vân III",
	   "Thiên Âm I", "Thiên Âm II","Thiên Âm III","Quỷ Vương IV","Quỷ Vương V","Quỷ Vương VI","Hợp Hoan IV","Hợp Hoan V","Hợp Hoan VI",
	   "Thanh Vân IV","Thanh Vân V","Thanh Vân VI","Thiên Âm IV","Thiên Âm V","Thiên Âm VI","Quỷ Đạo I","Quỷ Đạo II","Quỷ Đạo III","Quỷ Đạo IV","Quỷ Đạo V",
	   "Quỷ Đạo VI"," ","Thần Duệ","Cửu Lê I","Cửu Lê II","Cửu Lê III","Cửu Lê IV","Cửu Lê V","Cửu Lê VI","Liệt Sơn I","Liệt Sơn II","Liệt Sơn III",
	   "Liệt Sơn IV","Liệt Sơn V","Liệt Sơn VI","Hoài Quang I","Hoài Quang II","Hoài Quang III","Hoài Quang IV","Hoài Quang V","Hoài Quang VI","Thiên Hoa I","Thiên Hoa II","Thiên Hoa III",
	   "Thiên Hoa IV","Thiên Hoa V","Thần Hoàng I","Thần Hoàng II","Thần Hoàng III","Thần Hoàng IV","Thần Hoàng V"," "," "," ","Phần Hương I","Phần Hương II","Phần Hương III","Phần Hương IV","Phần Hương V","Phần Hương VI"," ", 
	    "Thanh La I", "Thanh La II", "Thanh La III", "Thanh La IV", "Thanh La V", " ", "Quy Vân I", "Quy Vân II", "Quy Vân III", "Quy Vân IV", "Quy Vân V", " ", "Họa Ảnh I", "Họa Ảnh II", "Họa Ảnh III", "Họa Ảnh IV", "Họa Ảnh V", "", " ", " ", " ", " ", " ", " ", " ", "Thái Hạo I",
	    "Thái Hạo II","Thái Hạo III","Thái Hạo IV","Thái Hạo V","Thái Hạo VI","Khiên Cơ I","Khiên Cơ II","Khiên Cơ III","Khiên Cơ IV","Khiên Cơ V","Khiên Cơ VI","Anh Chiêu I","Anh Chiêu II","Anh Chiêu III","Anh Chiêu IV","Anh Chiêu V","Anh Chiêu VI" ,
	    " "," ", " ", "Phá Quân I","Phá Quân II","Phá Quân III","Phá Quân IV","Phá Quân V","Phá Quân VI"
	   }
	local rt;
	local zx_reborntimes,zx_level,rankhour,rankminute,ranksecond;
	if id <= 30 or id >= 210 and id <= 217 then
	if id == 1 then
       		zx_reborntimes=math.ceil(val/200)-1;       
		zx_level=val-zx_reborntimes*200;
       
	   	if zx_reborntimes ==0 then 
	   		if last_rank < 0 then
				rt = rank.."\t^80FF00".."Mới".."\t"..name.."\t"..tprof[prof+1].."\t"..zx_level.."Cấp"
			else
				if rank < last_rank then
					rt = rank.."\t^80FF00↑"..(last_rank - rank).."\t"..name.."\t"..tprof[prof+1].."\t"..zx_level.."Cấp"
				end
				if rank == last_rank then
					rt = rank.."\t^FFFFFF--".."\t"..name.."\t"..tprof[prof+1].."\t"..zx_level.."Cấp"
				end
				if rank > last_rank then
					rt = rank.."\t^FFFF00↓"..(rank - last_rank).."\t"..name.."\t"..tprof[prof+1].."\t"..zx_level.."Cấp"
				end
			end
		elseif zx_reborntimes ==1 then
			if last_rank < 0 then
			rt = rank.."\t^80FF00".."Mới".."\t"..name.."\t"..tprof[prof+1].."\t".."Thăng"..zx_level.."Cấp"
			else
				if rank < last_rank then
					rt = rank.."\t^80FF00↑"..(last_rank - rank).."\t"..name.."\t"..tprof[prof+1].."\t".."Thăng"..zx_level.."Cấp"
				end
				if rank == last_rank then
					rt = rank.."\t^FFFFFF--".."\t"..name.."\t"..tprof[prof+1].."\t".."Thăng"..zx_level.."Cấp"
				end
				if rank > last_rank then
					rt = rank.."\t^FFFF00↓"..(rank - last_rank).."\t"..name.."\t"..tprof[prof+1].."\t".."Thăng"..zx_level.."Cấp"
				end
			end
		elseif zx_reborntimes ==2 then
			if last_rank < 0 then
			rt = rank.."\t^80FF00".."Mới".."\t"..name.."\t"..tprof[prof+1].."\t".."Luân"..zx_level.."Cấp"
			else
				if rank < last_rank then
					rt = rank.."\t^80FF00↑"..(last_rank - rank).."\t"..name.."\t"..tprof[prof+1].."\t".."Luân"..zx_level.."Cấp"
				end
				if rank == last_rank then
					rt = rank.."\t^FFFFFF--".."\t"..name.."\t"..tprof[prof+1].."\t".."Luân"..zx_level.."Cấp"
				end
				if rank > last_rank then
					rt = rank.."\t^FFFF00↓"..(rank - last_rank).."\t"..name.."\t"..tprof[prof+1].."\t".."Luân"..zx_level.."Cấp"
				end
			end
		else 
			if last_rank < 0 then
			rt = rank.."\t^80FF00".."Mới".."\t"..name.."\t"..tprof[prof+1].."\t".."Thần"..zx_level.."Cấp"
			else
				if rank < last_rank then
					rt = rank.."\t^80FF00↑"..(last_rank - rank).."\t"..name.."\t"..tprof[prof+1].."\t".."Thần"..zx_level.."Cấp"
				end
				if rank == last_rank then
					rt = rank.."\t^FFFFFF--".."\t"..name.."\t"..tprof[prof+1].."\t".."Thần"..zx_level.."Cấp"
				end
				if rank > last_rank then
					rt = rank.."\t^FFFF00↓"..(rank - last_rank).."\t"..name.."\t"..tprof[prof+1].."\t".."Thần"..zx_level.."Cấp"
				end
			end
		end
	end

	    
	    
	if id == 2 then
		if last_rank < 0 then
			rt = rank.."\t^80FF00".."Mới".."\t"..name.."\t"..tprof[prof+1].."\t"..val.."Vàng"
				else
				if rank < last_rank then
					rt = rank.."\t^80FF00↑"..(last_rank - rank).."\t"..name.."\t"..tprof[prof+1].."\t"..val.."Vàng"
				end
				if rank == last_rank then
					rt = rank.."\t^FFFFFF--".."\t"..name.."\t"..tprof[prof+1].."\t"..val.."Vàng"
				end
				if rank > last_rank then
					rt = rank.."\t^FFFF00↓"..(rank - last_rank).."\t"..name.."\t"..tprof[prof+1].."\t"..val.."Vàng"
				end
			end
		end
			
		if id >= 3 or id >= 210 and id <= 217 then
			if last_rank < 0 then
				rt = rank.."\t^80FF00".."Mới".."\t"..name.."\t"..tprof[prof+1].."\t"..val
			else 
				if rank < last_rank then
					rt = rank.."\t^80FF00↑"..(last_rank - rank).."\t"..name.."\t"..tprof[prof+1].."\t"..val
				end
				if rank == last_rank then
					rt = rank.."\t^FFFFFF--".."\t"..name.."\t"..tprof[prof+1].."\t"..val
				end
				if rank > last_rank then
					rt = rank.."\t^FFFF00↓"..(rank - last_rank).."\t"..name.."\t"..tprof[prof+1].."\t"..val 	
				end
	   		end    
		end
	end   
 
	    
	if id > 30 and id <210 or id >=310 and id <= 317 then
		if id == 31 then
			if last_rank < 0 then
        		rt = rank.."\t^80FF00".."Mới".."\t"..name.."\t".."".."\t"..(val+1).."Cấp"
        		else
				if rank < last_rank then
					rt = rank.."\t^80FF00↑"..(last_rank - rank).."\t"..name.."\t".."".."\t"..(val+1).."Cấp"
				end
				if rank == last_rank then
					rt = rank.."\t^FFFFFF--".."\t"..name.."\t".."".."\t"..(val+1).."Cấp"
				end
				if rank > last_rank then
					rt = rank.."\t^FFFF00↓"..(rank - last_rank).."\t"..name.."\t".."".."\t"..(val+1).."Cấp"
				end
			end
		end	
			
		if id == 32 then
			if last_rank < 0 then
        		rt = rank.."\t^80FF00".."Mới".."\t"..name.."\t".."".."\t"..val.."Vàng"
        		else
				if rank < last_rank then
					rt = rank.."\t^80FF00↑"..(last_rank - rank).."\t"..name.."\t".."".."\t"..val.."Vàng"
				end
				if rank == last_rank then
					rt = rank.."\t^FFFFFF--".."\t"..name.."\t".."".."\t"..val.."Vàng"
				end
				if rank > last_rank then
					rt = rank.."\t^FFFF00↓"..(rank - last_rank).."\t"..name.."\t".."".."\t"..val.."Vàng"
				end	
			end
		end
				
	   	if id == 33 then
	   		if last_rank < 0 then
        		rt = rank.."\t^80FF00".."Mới".."\t"..name.."\t".."".."\t"..val.."Người"
        		else
				if rank < last_rank then
					rt = rank.."\t^80FF00↑"..(last_rank - rank).."\t"..name.."\t".."".."\t"..val.."Người"
				end
				if rank == last_rank then
					rt = rank.."\t^FFFFFF--".."\t"..name.."\t".."".."\t"..val.."Người"
				end
				if rank > last_rank then
					rt = rank.."\t^FFFF00↓"..(rank - last_rank).."\t"..name.."\t".."".."\t"..val.."Người"
				end
			end
		end
		
		if id >= 34 and id<80 or id >=310 and id <= 317 then
			if last_rank < 0 then
        		rt = rank.."\t^80FF00".."Mới".."\t"..name.."\t".."".."\t"..val
			else 
				if rank < last_rank then
					rt = rank.."\t^80FF00↑"..(last_rank - rank).."\t"..name.."\t".."".."\t"..val
				end
				if rank == last_rank then
					rt = rank.."\t^FFFFFF--".."\t"..name.."\t".."".."\t"..val
				end
				if rank > last_rank then
					rt = rank.."\t^FFFF00↓"..(rank - last_rank).."\t"..name.."\t".."".."\t"..val 	
	     			end
			end    
		end	
		if id >= 80 and id<=83  then
        		rt = name.."\t"..val
		end	
	end
	if id >= 90 and id <= 93 then
		if last_rank < 0 and val > 0 then
			 rt = rank.."\t^80FF00".."Mới".."\t"..name.."\t"..tprof[prof+1].."\t"..val.."Cấp"
		else
			if rank < last_rank and val > 0 then
				rt = rank.."\t^80FF00↑"..(last_rank - rank).."\t"..name.."\t"..tprof[prof+1].."\t"..val.."Cấp"
			end
			if rank == last_rank and val > 0 then
				rt = rank.."\t^FFFFFF--".."\t"..name.."\t"..tprof[prof+1].."\t"..val.."Cấp"
			end
			if rank > last_rank and val > 0 then
				rt = rank.."\t^FFFF00↓"..(rank - last_rank).."\t"..name.."\t"..tprof[prof+1].."\t"..val.."Cấp"
			end
		end
	end
--id=95,爬塔参数（id,rank,name,prof,val-Tầng数,val2-时间）
	if id == 95 then
	    
	    rankhour=math.floor(val2/3600);
	    rankminute=math.floor((val2-rankhour*3600)/60);
	    ranksecond=val2-rankhour*3600-rankminute*60;
	    
		if last_rank < 0 and val > 0 and val2 >= 0 then
			 rt = rank.."\t^80FF00".."Mới".."\t"..name.."\t"..tprof[prof+1].."\t"..val.."Tầng".." "..rankhour..":"..rankminute..":"..ranksecond
		else
			if rank < last_rank and val > 0 and val2 >= 0 then
				rt = rank.."\t^80FF00↑"..(last_rank - rank).."\t"..name.."\t"..tprof[prof+1].."\t"..val.."Tầng".." "..rankhour..":"..rankminute..":"..ranksecond
			end
			if rank == last_rank and val > 0 and val2 >= 0 then
				rt = rank.."\t^FFFFFF--".."\t"..name.."\t"..tprof[prof+1].."\t"..val.."Tầng".." "..rankhour..":"..rankminute..":"..ranksecond
			end
			if rank > last_rank and val > 0 and val2 >= 0 then
				rt = rank.."\t^FFFF00↓"..(rank - last_rank).."\t"..name.."\t"..tprof[prof+1].."\t"..val.."Tầng".." "..rankhour..":"..rankminute..":"..ranksecond
			end
		end
	end	  
	return rt;
	
end
