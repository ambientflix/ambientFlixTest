@echo off

set DATA_COLLECTOR_HOME=%cd%\data
set REC_ENGINE_HOME=%cd%\engine
set WEB_CODE_HOME=%cd%\webCode

echo "Gathering ambient data..."
pushd %DATA_COLLECTOR_HOME%
python3 dataCollection.py
popd

echo "Reving the REC ENGINE..."
echo "This will take a few minutes. The recommendation engine is hard at work pairing your ambient data with movie suggestions..."

pushd %REC_ENGINE_HOME%
gradlew bootRun --args=%DATA_COLLECTOR_HOME%\outputFile.txt 
popd

echo "Launching page..."
start http://localhost:8080/hello/