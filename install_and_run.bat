@echo off
echo ------------------------------------------------------
echo Install Server dependencies
echo ------------------------------------------------------

cd .\ServerApp
npm install|more

cd ..\frontendApp
echo ------------------------------------------------------
echo Install Client dependencies
echo ------------------------------------------------------
npm install|more

echo ------------------------------------------------------
echo Rebuild frontend data and update server
echo ------------------------------------------------------
ng build|more

cd ..\ServerApp
echo ------------------------------------------------------
echo Start server
echo ------------------------------------------------------
node server.js

