local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi

Win_SecretaryMain= DlgTemplate:new({this = "Win_SecretaryMain"})


function Win_SecretaryMain:Init()
    
    self:RegisterEvent("CmdToHelp",self.OnCmdToHelp);
    self:RegisterEvent("CmdToSearchLHJ",self.OnCmdToSearch);
--    self:RegisterEvent("CmdToMemo", self.OnCmdToMemo);
	  
end


function Win_SecretaryMain:OnCmdToHelp()
    DlgApi.ShowDialog(self.this, false);
    DlgApi.ShowDialog("Win_Help_SearchResult", true);
end

function Win_SecretaryMain:OnCmdToSearch()
   DlgApi.ShowDialog(self.this, false);
   DlgApi.ShowDialog("Win_Help_SearchResult", true);
end

function Win_SecretaryMain:OnCmdToMemo()
   DlgApi.ShowDialog(self.this, false);
   DlgApi.ShowDialog("Win_Help_SearchResult", true);
end

