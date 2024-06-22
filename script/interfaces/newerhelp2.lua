--if not DlgTemplate then
	--为了方便策划查错，使用包里的脚本时不能这样加载，否则客户端可能会崩
--	CreateObj = function() return {eventMap = {}} end
--	LuaInclude("dlgtemplate.lua")
--end

local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local pageid = 0
local m_FrameMax = 1
local curContent = -1

local datamember = 
{
	this = "Win_NewerHelp2",
	
}

local list =
{
"移动篇","任务篇","战斗篇","法宝篇","技能篇","社交篇","角色篇","地图篇","系统篇","飞剑篇","精力篇",
}

Win_NewerHelp2 = DlgTemplate:new(datamember)

function Win_NewerHelp2:Init()
    self:RegisterEvent("Btn_Prev",self.OnCmdPrev);
    self:RegisterEvent("Btn_Next",self.OnCmdNext);
    self:RegisterEvent(WM_LBUTTONDOWN,self.OnLButtonDown);
end

function Win_NewerHelp2:ShowDialog()
    DlgApi.SetListText(self.this,"Lst_Type",list);
    DlgApi.SetListCurLine(self.this, "Lst_Type", 0);--默认选中第一行
    curContent = 0;---默认显示第一事件对应的图的第一帧
    self:updateDisplay(); -----更新显示  
    local pagenum = (pageid+1).."/"..m_FrameMax
   	DlgApi.SetItemText(self.this,"Lab_Page",pagenum);---页数如何变，总数如何随着每个图片帧数的不同变化

end

function Win_NewerHelp2:OnCmdPrev()
    if pageid >0 then
    pageid = pageid-1;
    DlgApi.SelectImageFrame(self.this,"Img_Pic",pageid); 
    local pagenum = (pageid+1).."/"..m_FrameMax
   	DlgApi.SetItemText(self.this,"Lab_Page",pagenum);
    end
end

function Win_NewerHelp2:OnCmdNext()
    if pageid<(m_FrameMax-1) then
    pageid = pageid+1;   
    DlgApi.SelectImageFrame(self.this,"Img_Pic",pageid);
    local pagenum = (pageid+1).."/"..m_FrameMax
   	DlgApi.SetItemText(self.this,"Lab_Page",pagenum);
    end
end 

function Win_NewerHelp2:OnLButtonDown()
    newContent = DlgApi.GetListCurLine(self.this, "Lst_Type");---取当前行数号
    if(curContent==newContent) then
        return;----如果符合事件才进行下一步，不是所有的左键点击事件都执行
    end
		curContent = newContent;
		self:updateDisplay();
end

function Win_NewerHelp2:updateDisplay()
		if(curContent==0) then
		    	pageid = 0;
				DlgApi.SetImageFile(self.this,"Img_Pic","help\\NewerHelp_Move_1.dds",3); 
				DlgApi.SelectImageFrame(self.this,"Img_Pic",0);		
        		m_FrameMax = 3;
        		local pagenum = (pageid+1).."/"..m_FrameMax
   				DlgApi.SetItemText(self.this,"Lab_Page",pagenum);	
    	end
    	
		if(curContent==1) then
		     	pageid = 0;
				DlgApi.SetImageFile(self.this,"Img_Pic","help\\NewerHelp_Task_1.dds",3);
				DlgApi.SelectImageFrame(self.this,"Img_Pic",0); 			
        		m_FrameMax = 3;
        		local pagenum = (pageid+1).."/"..m_FrameMax
   				DlgApi.SetItemText(self.this,"Lab_Page",pagenum);	
    	end
    	
    	if(curContent==2) then
    	     	pageid = 0;
				DlgApi.SetImageFile(self.this,"Img_Pic","help\\NewerHelp_Combat_1.dds",3); 
				DlgApi.SelectImageFrame(self.this,"Img_Pic",0);			
        		m_FrameMax = 3;
        		local pagenum = (pageid+1).."/"..m_FrameMax
   				DlgApi.SetItemText(self.this,"Lab_Page",pagenum);	
    	end
    	
    	if(curContent==3) then
    	     	pageid = 0;
				DlgApi.SetImageFile(self.this,"Img_Pic","help\\NewerHelp_Talisman_1.dds",2);
				DlgApi.SelectImageFrame(self.this,"Img_Pic",0); 			
        		m_FrameMax = 2;	
        		local pagenum = (pageid+1).."/"..m_FrameMax
   				DlgApi.SetItemText(self.this,"Lab_Page",pagenum);
    	end
    	
    	if(curContent==4) then
    	     	pageid = 0;
				DlgApi.SetImageFile(self.this,"Img_Pic","help\\NewerHelp_level_8.dds",1); 
				DlgApi.SelectImageFrame(self.this,"Img_Pic",0);
        		m_FrameMax = 1;	
        		local pagenum = (pageid+1).."/"..m_FrameMax
   				DlgApi.SetItemText(self.this,"Lab_Page",pagenum);
    	end
    	
    	if(curContent==5) then
    	     	pageid = 0;
				DlgApi.SetImageFile(self.this,"Img_Pic","help\\NewerHelp_level_10.dds",2); 
				DlgApi.SelectImageFrame(self.this,"Img_Pic",0);			
		        m_FrameMax = 2;
		        local pagenum = (pageid+1).."/"..m_FrameMax
   				DlgApi.SetItemText(self.this,"Lab_Page",pagenum);	
    	end
    	
    	if(curContent==6) then
    	     	pageid = 0;
				DlgApi.SetImageFile(self.this,"Img_Pic","help\\NewerHelp_level_15.dds",1);
				DlgApi.SelectImageFrame(self.this,"Img_Pic",0);		
        		m_FrameMax = 1;	
        		local pagenum = (pageid+1).."/"..m_FrameMax
   				DlgApi.SetItemText(self.this,"Lab_Page",pagenum);
    	end
    	
    	if(curContent==7) then
    	     	pageid = 0;
				DlgApi.SetImageFile(self.this,"Img_Pic","help\\NewerHelp_level_16.dds",2);
				DlgApi.SelectImageFrame(self.this,"Img_Pic",0); 			
        		m_FrameMax = 2;	
        		local pagenum = (pageid+1).."/"..m_FrameMax
   				DlgApi.SetItemText(self.this,"Lab_Page",pagenum);
    	end
    	
    	if(curContent==8) then
    	     	pageid = 0;
				DlgApi.SetImageFile(self.this,"Img_Pic","help\\NewerHelp_level_20.dds",2); 
				DlgApi.SelectImageFrame(self.this,"Img_Pic",0);			
        		m_FrameMax = 2;	
        		local pagenum = (pageid+1).."/"..m_FrameMax
   				DlgApi.SetItemText(self.this,"Lab_Page",pagenum);
    	end
    	if(curContent==9) then
    	     	pageid = 0;
				DlgApi.SetImageFile(self.this,"Img_Pic","help\\NewerHelp_level_45.dds",1);
				DlgApi.SelectImageFrame(self.this,"Img_Pic",0); 			
        		m_FrameMax = 1;	
        		local pagenum = (pageid+1).."/"..m_FrameMax
   				DlgApi.SetItemText(self.this,"Lab_Page",pagenum);
    	end
    	if(curContent==10) then
    	     	pageid = 0;
				DlgApi.SetImageFile(self.this,"Img_Pic","help\\NewerHelp_level_90.dds",1);
				DlgApi.SelectImageFrame(self.this,"Img_Pic",0); 			
        		m_FrameMax = 1;	
        		local pagenum = (pageid+1).."/"..m_FrameMax
   				DlgApi.SetItemText(self.this,"Lab_Page",pagenum);
    	end
end