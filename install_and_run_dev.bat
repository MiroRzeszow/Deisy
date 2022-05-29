@echo off
echo ------------------------------------------------------
echo Install Server dependencies
echo ------------------------------------------------------

cd backend
npm install|more

cd ..\frontend
echo ------------------------------------------------------
echo Install Client dependencies
echo ------------------------------------------------------
npm install|more

echo ------------------------------------------------------
echo Rebuild frontend data and update server
echo ------------------------------------------------------
ng build|more

cd ..\backend
echo ------------------------------------------------------
echo Start server
echo ------------------------------------------------------
npm run dev

