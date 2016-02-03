@ECHO OFF
echo "Starting program........."

SET Files = Player.java GridMap.java GameCharacter.java clsMain.java
SET Exe = clsMain

if %1 == compile (
	echo "Compiling"
	javac.exe Player.java GridMap.java GameCharacter.java clsMain.java
)
if %1 == run (
	echo "Running"
	java.exe clsMain
)
if %1 == clean (
	echo "Removing classes"
	del *.class
)


echo ".........Goodbye"