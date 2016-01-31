@echo off
echo "Start"
cd C:\Program Files\Java\jdk1.8.0_60\bin
if %1==compile (
	echo "Compiling"
	javac C:\Users\shobhit\Documents\GitHub\Private\Common_Projs\Java\Chess\*.java
)
if %1==jar (
	echo "Creating jar"
	jar cvf Chess.jar C:\Users\shobhit\Documents\GitHub\Private\Common_Projs\Java\Chess\clsGame.class
)
cd C:\Users\shobhit\Documents\GitHub\Private\Common_Projs\Java\Chess
if %1==run (
	echo "Running"
	java clsGame
)
if %1==clean (
	echo "Cleaning"
	del *.class
)
echo "End"