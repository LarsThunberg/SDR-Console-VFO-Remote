local kb = libs.keyboard;
local mouse = libs.mouse;

local width = 0;
local height = 0;
local dist = 0;
local last = 0;
local free = true;
local noOfScroll = 1;

actions.done = function (id)
	free = true;
end

actions.abs = function (id, x, y)
	local angel = math.atan2(y-height, x-width) * 180 / math.pi;
	angel = angel + 180;
	
	if (free) then
		last = angel;
		dist = 0;
		free = false;
	else
		local delta = angel - last;
		dist = dist + delta;
		if (math.abs(dist) > 10) then
			if (dist < 0) then
				mouse.vscroll(-noOfScroll);
			else
				mouse.vscroll(noOfScroll);
			end
			dist = 0;
		end
		last = angel;
	end
end

actions.size = function (w, h)
	width = w / 2;
	height = h / 2;
end

actions.left = function ()
	kb.stroke("left");
end

actions.right = function ()
	kb.stroke("right");
end

actions.up = function ()
	kb.stroke("up");
end

actions.down = function ()
	kb.stroke("down");
end

actions.Space = function ()
	kb.stroke("space");
end

actions.VFOx1 = function ()
	noOfScroll = 1;
end

actions.VFOx2 = function ()
	noOfScroll = 2;
end

actions.VFOx3 = function ()
	noOfScroll = 3;
end
