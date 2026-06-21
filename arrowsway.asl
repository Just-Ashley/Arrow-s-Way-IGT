state("arrows_way")
{
	double timer: "arrows_way.exe", 0x023A8870, 0x1E0, 0x140, 0x110, 0x0, 0x60, 0x38, 0x80;
	byte menu: "arrows_way.exe", 0x023A8870, 0xF8, 0x140, 0x110, 0x0, 0x60, 0x38, 0x98;
}

isLoading
{
	if(current.timer == old.timer && old.timer != 0)
		return true;
}

gameTime
{
	return TimeSpan.FromSeconds(current.timer);
}

start
{
	if(current.timer != 0)
		return true;
}

reset
{
	if(current.timer == 0 && old.timer == 0)
		return true;
}

split
{
	if(old.menu == 1 && current.menu == 0)
		return true;
}
