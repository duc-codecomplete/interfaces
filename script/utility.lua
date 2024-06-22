local pairs, setmetatable, type = pairs, setmetatable, type;

local function CopyTable(src)
	local inst={};
	local k, v;
	for k, v in pairs(src) do
		if type(v) == "table" then
			inst[k] = CopyTable(v);
		else
			inst[k] = v;
		end
	end
	local mt = getmetatable(src);
	setmetatable(inst, mt);
	return inst;
end

function CreateObj(template, obj)
	local inst = obj or {};
	local k, v;
	for k, v in pairs(template) do
		if (not inst[k]) and type(v) ~= "function" then
			if type(v)== "table" and v ~= template then
				inst[k] = CopyTable(v);
			end
		end
	end
	setmetatable(inst, template);
	template.__index = template;
	return inst;
end

-------------------------------------------------
--counter
Counter = 
{
	    m_Period = 0;
	    m_Counter = 0;
}


function Counter:new()
	  return CreateObj(self);
end

function Counter:SetPeriod(period)
			self.m_Period = period;
end

function Counter:GetPeriod()
			return self.m_Period;
end

function Counter:Reset()
		  self.m_Counter = 0;
end

function Counter:IncCounter(counter)
		self.m_Counter = self.m_Counter + counter;
		return (self.m_Counter >= self.m_Period);
end

function Counter:IsFull()
		 return (self.m_Counter >= self.m_Period);
end

