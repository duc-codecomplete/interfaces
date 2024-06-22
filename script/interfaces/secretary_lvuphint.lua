local DlgTemplate = DlgTemplate
local DlgApi  = DlgApi

Win_SecretaryLvUpHint= DlgTemplate:new({this = "Win_SecretaryLvUpHint"})


function Win_SecretaryLvUpHint:Init()
    
--    self:RegisterEvent("CmdHelp",self.OnCmdHelp);
--    self:RegisterEvent("CmdSearch",self.OnCmdSearch);
--    self:RegisterEvent("CmdMemo", self.OnCmdMemo);
    self:RegisterEvent("CmdToMain", self.OnCmdToMain);
	  
end

function Win_SecretaryLvUpHint:OnCmdHelp()
    DlgApi.ShowDialog(self.this, false);
    DlgApi.ShowDialog("Win_SecretaryHelp", true);
end

function Win_SecretaryLvUpHint:OnCmdSerach()
   DlgApi.ShowDialog(self.this, false);
   DlgApi.ShowDialog("Win_SecretarySearch", true);
end

function Win_SecretaryLvUpHint:OnCmdMemo()
   DlgApi.ShowDialog(self.this, false);
   DlgApi.ShowDialog("Win_SecretarySearch", true);
end

function Win_SecretaryLvUpHint:OnCmdToMain()
   DlgApi.ShowDialog(self.this, false);
   DlgApi.ShowDialog("Win_SecretaryMain", true); 
end

