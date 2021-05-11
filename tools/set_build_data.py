from datetime import datetime
now = datetime.now()

#Get the current version
with open("src/version.txt") as v:
	version = v.read().split('.')

# Create the build string for the project.
with open("src/build.h","w") as f:
	f.write("#ifndef __BUILD_H__\n")
	f.write("#define __BUILD_H__\n")
	f.write("#define BUILD_DAY %d\n" % now.day)
	f.write("#define BUILD_MONTH %d\n" % now.month)
	f.write("#define BUILD_YEAR %d\n" % (now.year%2000))
	f.write("#define BUILD_HOUR %d\n" % now.hour)
	f.write("#define BUILD_MIN %d\n" % now.minute)
	f.write("#define BUILD_SEC %d\n" % now.second)
	f.write("#define BUILD_VER_HI %d\n" % int(version[0]))
	f.write("#define BUILD_VER_LO %d\n" % int(version[1]))
	f.write("#endif\n")	

