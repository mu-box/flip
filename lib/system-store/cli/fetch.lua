-- -*- mode: lua; tab-width: 2; indent-tabs-mode: 1; st-rulers: [70] -*-
-- vim: ts=4 sw=4 ft=lua noet

-- this will eventually be run by the cli when trying to find
-- something in the store
return function(bucket,id)
	logger:info("I am trying to fetch something from the cluster",bucket,id)
	local object,err = store:fetch(bucket,id)
	if err then
		logger:error("unable to find object",err)
		process:exit(1)
	else
		logger:info(object,err)
	end
end
