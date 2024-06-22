local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi
local SearchContent = SearchContent
local GameAI = GameAI

local datamember = 
{ 
	this = "Win_SecretarySearch",
	m_SearchIndex = {},
	m_CatalogIndex = {},
	m_Result = {},
	m_ResultSet = {},
}

Win_SecretarySearch= DlgTemplate:new(datamember)


function Win_SecretarySearch:Init()
    
--    self:RegisterEvent("CmdHelp",self.OnCmdHelp);
    self:RegisterEvent("CmdSearchLHJ",self.OnCmdSearch);
--    self:RegisterEvent("CmdMemo", self.OnCmdMemo);
    self:RegisterEvent(WM_LBUTTONDOWN,  self.OnLButtonDown)
    self:RegisterEvent(WM_KEYDOWN,      self.OnKeyDown) 
	self:BuildIndex();
end


function Win_SecretarySearch:OnCmdHelp()
    DlgApi.ShowDialog(self.this, false);
    DlgApi.ShowDialog("Win_SecretaryHelp", true);
end

function Win_SecretarySearch:OnCmdSearch()
	self:ExecuteSearch();
end

function Win_SecretarySearch:OnCmdMemo()
   DlgApi.ShowDialog(self.this, false);
   DlgApi.ShowDialog("Win_SecretarySearch", true);
end


function Win_SecretarySearch:BuildIndex()
	for i, v in ipairs(SearchContent) do
		for key, val in pairs(v.keys) do
		    if(not self.m_SearchIndex[val]) then
		        self.m_SearchIndex[val] = {};
			end
		   table.insert(self.m_SearchIndex[val], i); 
		end
		self.m_CatalogIndex[v.catalog] = i;	    
	end    
end

function Win_SecretarySearch:ExecuteSearch()
    local str = DlgApi.GetItemText(self.this, "Edit_KeyWord");
--    local str = string.gsub(s, "*", " ");
    local words = {}
--	local indexSet = {}
	self.m_ResultSet = {}
	local indexMask = {}
    self.m_Result = {}
    for word in string.gmatch(str, "%S+") do
        if(#words < 3) then
	       	table.insert(words, word)
    	end
    end
--	table.insert(words, str)
    if(#words == 0) then
       return;
    end

    for i, v in pairs(words) do
        if(self.m_SearchIndex[v] ~= nil) then
            self.m_ResultSet[v] = self.m_SearchIndex[v]
        elseif(string.find(v, "*") ~= nil) then
        	self:PatternMatch(v)
--        	if(pattern ~= nil) then
--        	    indexSet[v] = self.m_SearchIndex[pattern]
--    		end    
        else
            self:FuzzyMatch(v)
--            local similarKey = self:FuzzyMatch(v)
--            if( similarKey ~= nil) then
--	            indexSet[v] = self.m_SearchIndex[similarKey]
--    		end
    	end     
    end
    
    local keyNum = 0
    for k, v in pairs(self.m_ResultSet) do
        keyNum = keyNum +1
    	for key, val in pairs(v) do
    	    if(not indexMask[val]) then
    	        indexMask[val] = 0;
    		end
    		indexMask[val] = indexMask[val] + 2^(keyNum-1);
    	end
    end

    local mask = 2^(keyNum) - 1
    for k, v in pairs(indexMask) do
        if( v == mask ) then
			table.insert(self.m_Result, k)
    	end
    end            
    
    self:InitCommandTree();
    
--    for i,v in ipairs(self.m_Result)do
--    	GameAI.SecretarySetURL(SearchContent[v].content);
--       DlgApi.AppendItemText(self.this, "SearchResult2", SearchContent[v].content) 
--    end
end

function Win_SecretarySearch:FuzzyMatch(str)
	for k, v in pairs(self.m_SearchIndex) do
        if( string.find(k, str) ~= nil)then
        
            for ke, ve in pairs(self.m_SearchIndex[k]) do
                if(self.m_ResultSet[str] == nil) then
                    self.m_ResultSet[str] = {}
            	end
            	if(self.m_ResultSet[str][ve] == nil) then
               		table.insert(self.m_ResultSet[str], ve)
				end 
            end        
--          	return  k;
        end
    end
    return nil;
end

function Win_SecretarySearch:PatternMatch(str)
    local _, count = string.gsub(str, "[^\128-\193]", "")
    local pattern = string.gsub(str, "*", "%%S+")
    for k, v in pairs(self.m_SearchIndex) do
        local key = string.match(k, pattern)
        if(key ~= nil) then
            local _, len = string.gsub(key, "[^\128-\193]", "")
            if(len == count) then
                for ke, ve in pairs(self.m_SearchIndex[k]) do
                    if(self.m_ResultSet[str] == nil) then
                        self.m_ResultSet[str] = {}
                	end
                	if(self.m_ResultSet[str][ve] == nil) then
                   		table.insert(self.m_ResultSet[str], ve)
    				end 
                end
--                return k;
    		end
		end
	end
end

-------------------------------------
--		windows message
-------------------------------------
function Win_SecretarySearch:OnLButtonDown(item)
    if item == "tree_command" then
        return self:UpdateCommandInfo()                    
    end
    return false
end

function Win_SecretarySearch:OnKeyDown(msg, vkey)
    if vkey == VK_LEFT or vkey == VK_UP or vkey == VK_RIGHT or vkey == VK_DOWN then
        return self:UpdateCommandInfo()
    end
    return false
end

-------------------------------------
--		function called by others
-------------------------------------
function Win_SecretarySearch:UpdateCommandInfo()
    local _, pos = DlgApi.GetTreeSelectItem(self.this, "tree_command")
    if not pos then
        return false
    end
    
    local commandInfo = self:GetCommandInfo(pos)
    if commandInfo then
        GameAI.SecretarySetURL(SearchContent[commandInfo].content);
        return true
    end
--    if commandInfo then
--        DlgApi.SetItemText(self.this, "label_commandDesc", commandInfo.desc or "")
--        return true
--    else
--        DlgApi.SetItemText(self.this, "label_commandDesc", "")
--    end
    return false
end


function Win_SecretarySearch:Align()
    local deltaX = -30 * DlgApi.GetWindowScale()
    DlgApi.SetDialogPosition(self.this, deltaX, 0, "panel_chatSetting", AUIDIALOG_ALIGN_OUTSIDE,
							 AUIDIALOG_ALIGN_RIGHT, AUIDIALOG_ALIGN_INSIDE, AUIDIALOG_ALIGN_BOTTOM)
end


function Win_SecretarySearch:InitCommandTree()
    local treeInfo = {}    
    for i1, v1 in ipairs(self.m_Result) do
--        local folder = {v1.name, }
--        if #v1 > 0 then
--            for i2, v2 in ipairs(v1) do
--                table.insert(folder, {v2.name,})
--            end
--        end
        table.insert(treeInfo, {SearchContent[v1].title,})
    end
    DlgApi.SetTreeText(self.this, "tree_command", treeInfo)
end

function Win_SecretarySearch:GetCommandInfo(pos)
    if pos then
        local index = 1
        local item  = self.m_Result
        while pos[index] do
            item = item[pos[index] + 1]
            if not item then
                return
            end
            if not pos[index + 1] then
                return item
            end
            index = index + 1
        end
    end
end

