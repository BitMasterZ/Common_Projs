# Used for common java files

# Name for jar file
JAR = Chess.jar

# name for main executable class
EXE = clsMain

#names of java files to be compiled
OBJECTS = clsMain.java GameCharacter.java CubeWorld.java Player.java

compile:
	javac $(OBJECTS)

run:
	java $(EXE)

jar:
	jar cvfe $(JAR) $(EXE) *.class

clean:
	rm *.class
