@echo off

set DATA_COLLECTOR_HOME=%cd%\data
set REC_ENGINE_HOME=%cd%\engine
set WEB_CODE_HOME=%cd%\webCode

echo "Please wait for the server to launch..."

pushd %WEB_CODE_HOME%
start gradlew bootrun --args=%REC_ENGINE_HOME%\recList.txt
popd