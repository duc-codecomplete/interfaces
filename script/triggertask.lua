-- 触发任务 特定的事件id可以触发特定的任务

trigger_task = {}

trigger_task['19804'] = { eventid = 30035, eventarg = 0, taskid = 19804 }
trigger_task['19805'] = { eventid = 30045, eventarg = 0, taskid = 19805 }


function trigger_task:GetTriggerTask()
	return self;
end
	
complete_task = {}

-- 特定的事件可以完成特定的任务，事件可以附带参数，

complete_task['19806'] = { eventid = 30051, eventarg = 218, taskid = 19806 }
complete_task['19807'] = { eventid = 30064, eventarg = 0, taskid = 19807 }
complete_task['20142'] = { eventid =30001, eventarg =0, taskid =20142 }
complete_task['20193'] = { eventid =30001, eventarg =0, taskid =20193 }
complete_task['20195'] = { eventid =30002, eventarg =0, taskid =20195 }
complete_task['20197'] = { eventid =30010, eventarg =0, taskid =20197 }
complete_task['20199'] = { eventid =30025, eventarg =0, taskid =20199 }
complete_task['20201'] = { eventid =30030, eventarg =0, taskid =20201 }
complete_task['20203'] = { eventid =30031, eventarg =0, taskid =20203 }
complete_task['20205'] = { eventid =30032, eventarg =0, taskid =20205 }
complete_task['20207'] = { eventid =30035, eventarg =0, taskid =20207 }
complete_task['20209'] = { eventid =30036, eventarg =0, taskid =20209 }
complete_task['20211'] = { eventid =30065, eventarg =0, taskid =20211 }
complete_task['20213'] = { eventid =30051, eventarg =218, taskid =20213 }
complete_task['20215'] = { eventid =30066, eventarg =0, taskid =20215 }
complete_task['20217'] = { eventid =30064, eventarg =0, taskid =20217 }
complete_task['20219'] = { eventid =30036, eventarg =0, taskid =20219 }
complete_task['20221'] = { eventid =30078, eventarg =0, taskid =20221 }
complete_task['20223'] = { eventid =30034, eventarg =0, taskid =20223 }
complete_task['20144'] = { eventid =30002, eventarg =0, taskid =20144 }
complete_task['20146'] = { eventid =30010, eventarg =0, taskid =20146 }
complete_task['20149'] = { eventid =30025, eventarg =0, taskid =20149 }
complete_task['20152'] = { eventid =30030, eventarg =0, taskid =20152 }
complete_task['20155'] = { eventid =30031, eventarg =0, taskid =20155 }
complete_task['20158'] = { eventid =30032, eventarg =0, taskid =20158 }
complete_task['20161'] = { eventid =30035, eventarg =0, taskid =20161 }
complete_task['20164'] = { eventid =30036, eventarg =0, taskid =20164 }
complete_task['20170'] = { eventid =30065, eventarg =0, taskid =20170 }
complete_task['20173'] = { eventid =30066, eventarg =0, taskid =20173 }
complete_task['20176'] = { eventid =30051, eventarg =1843, taskid =20176 }
complete_task['20304'] = { eventid =30051, eventarg =1883, taskid =20304 }
complete_task['20179'] = { eventid =30064, eventarg =0, taskid =20179 }
complete_task['20182'] = { eventid =30036, eventarg =0, taskid =20182 }
complete_task['20185'] = { eventid =30034, eventarg =0, taskid =20185 }

complete_task['20411'] = { eventid =30005, eventarg =0, taskid =20411 }
complete_task['20412'] = { eventid =30042, eventarg =0, taskid =20412 }
complete_task['20413'] = { eventid =30064, eventarg =0, taskid =20413 }
complete_task['20414'] = { eventid =30041, eventarg =0, taskid =20414 }
complete_task['19932'] = { eventid =30038, eventarg =13943, taskid =19932 }
complete_task['21257'] = { eventid =30051, eventarg =2411, taskid =21257 }
complete_task['21255'] = { eventid =30051, eventarg =2459, taskid =21255 }

complete_task['21612'] = { eventid =30038, eventarg =41133, taskid =21612 }
complete_task['21615'] = { eventid =30038, eventarg =41134, taskid =21615 }
complete_task['21618'] = { eventid =30038, eventarg =41135, taskid =21618 }
complete_task['21621'] = { eventid =30038, eventarg =41136, taskid =21621 }
complete_task['21677'] = { eventid =30038, eventarg =41134, taskid =21677 }
complete_task['21679'] = { eventid =30038, eventarg =41135, taskid =21679 }
complete_task['21681'] = { eventid =30038, eventarg =41135, taskid =21681 }
complete_task['21683'] = { eventid =30038, eventarg =41136, taskid =21683 }
complete_task['21685'] = { eventid =30038, eventarg =41136, taskid =21685 }
complete_task['21687'] = { eventid =30038, eventarg =41133, taskid =21687 }
complete_task['21689'] = { eventid =30038, eventarg =41133, taskid =21689 }
complete_task['21691'] = { eventid =30038, eventarg =41134, taskid =21691 }



function complete_task:GetCompleteTask()
	return self;
end
	

triggerTaskIndex = {}

-- 由触发开启的任务 taskid 对应的 索引，从1开始向后累计(不可重复)
triggerTaskIndex['19805'] = { taskid = 19805, index = 1}

function triggerTaskIndex:GetTriggerTaskIndex()
    return self;
end

completeTaskIndex = {}
-- 由触发完成的任务 taskid 对应的 索引，从1开始向后累计（不可重复）
completeTaskIndex['19807'] = {taskid = 19807, index = 1}


function completeTaskIndex:GetCompleteTaskIndex()
	return self;
end