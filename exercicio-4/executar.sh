#!/bin/bash

rm -rf *.class *.java~ jcup.jar jflex.jar MeuParser.java sym.java MeuScanner.java

wget https://repo1.maven.org/maven2/de/jflex/jflex/1.8.2/jflex-1.8.2.jar -O jflex.jar
wget https://repo1.maven.org/maven2/com/github/vbmacher/java-cup/11b-20160615/java-cup-11b-20160615.jar -O jcup.jar

# Gerar o Analisador Léxico (com jcup.jar no classpath)
java -cp .:jflex.jar:jcup.jar jflex.Main exemplo.flex

# Gerar o Analisador Sintático
java -cp jcup.jar java_cup.Main -parser MeuParser exemplo.cup

# Compilar
javac -cp .:jcup.jar *.java

# Executar
java -cp .:jcup.jar Compilador entrada.txt
