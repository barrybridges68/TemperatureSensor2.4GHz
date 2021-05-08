from datetime import datetime
now = datetime.now()

#Get the current version
with open("src/version.txt") as v:
	version = v.read().split('.')

# Create the build string for the project.
with open("src/build.c","w") as f:
	f.write("#include \"packets.h\"\n");
	build_str = "sBuildData BuildData = {%d,%d,%d,%d,%d,%d,%d,%d};" %(now.day, now.month, now.year%2000, now.hour, now.minute, now.second, int(version[0]),int(version[1]))
	f.write( build_str )

