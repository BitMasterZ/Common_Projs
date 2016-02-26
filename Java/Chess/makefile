# Used for common java files

# Name for jar file
JAR = Chess.jar 

# name for main executable class
EXE = clsGame

#names of java files to be compiled
OBJECTS = clsGame.java ChessGame.java ChessRules.java
 
compile:
	javac $(OBJECTS)

run:
	java $(EXE)

jar:
	jar cvfe $(JAR) $(EXE) *.class

clean:
	rm *.class


