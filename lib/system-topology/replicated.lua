-- -*- mode: lua; tab-width: 2; indent-tabs-mode: 1; st-rulers: [70] -*-
-- vim: ts=4 sw=4 ft=lua noet

-- replicated is basically a noop. everything gets added in everywhere
-- so there is no reason to divide anything up
return function (data,id,is_alive)
	return data,{}
end
