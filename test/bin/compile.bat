@echo off
rem -------------------------------------------------------------------------------------
setlocal enabledelayedexpansion
set ocp=%CLASSPATH%

cd ..
set cp=.
for %%x in (..\lib\*.jar) do (
  set cp=!cp!;%%x
)
set cp=%cp%;..\build\web\WEB-INF\classes
set CLASSPATH=%cp%

set javac=%JAVA_HOME%\bin\javac

rem -------------------------------------------------------------------------------------
rmdir .\classes /s /q
mkdir .\classes
"%javac%" -d .\classes src/java/gov/nih/nci/evs/browser/utils/test/*.java

rem -------------------------------------------------------------------------------------
set CLASSPATH=%ocp%
@echo on