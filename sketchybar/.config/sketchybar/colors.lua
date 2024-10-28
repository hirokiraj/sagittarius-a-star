return {
	black = 0xff232634,
	white = 0xffc6d0f5,
	red = 0xffe78284,
	green = 0xffa6d189,
	blue = 0xff8caaee,
	yellow = 0xffe5c890,
	orange = 0xffef9f76,
	magenta = 0xfff4b8e4,
	grey = 0xff838ba7,
	transparent = 0x00000000,

	bar = {
		bg = 0x00000000,
		border = 0x00000000,
	},
	popup = {
		bg = 0xff303446,
		border = 0xffbabbf1,
	},
	bg1 = 0xff303446,
	bg2 = 0xff949cbb,

	with_alpha = function(color, alpha)
		if alpha > 1.0 or alpha < 0.0 then
			return color
		end
		return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
	end,
}
