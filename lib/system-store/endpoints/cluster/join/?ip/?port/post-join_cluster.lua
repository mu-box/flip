-- -*- mode: lua; tab-width: 2; indent-tabs-mode: 1; st-rulers: [70] -*-
-- vim: ts=4 sw=4 ft=lua noet

return function(req,res)
	store:begin_sync(req.env.ip,req.env.port,function(err)
		if err then
			local code = error_code(err)
			res:writeHead(code,{})
			res:finish(JSON.stringify({error = err}))
		else
			res:writeHead(200,{})
			res:finish(JSON.stringify({status = "joined"}))
		end
	end)
end
