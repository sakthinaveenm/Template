@echo off
echo "Welcome to Template Generate For MERN STACK"
set /p PROJECTNAME="Enter Project Name : "
mkdir %PROJECTNAME%
cd %PROJECTNAME%
mkdir Frontend
mkdir Backend

setlocal EnableDelayedExpansion
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
set "getKeyMacro=powershell -noprofile "^
    while (-not (37..40+13).contains($x)) {^
        $x = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown').VirtualKeyCode^
    }^
    if ($x -eq 13) {^
    'enter'^
    }^
    ('left','up','right','down')[$x - 37]^
""

set "option1=0"
set "option2=0"
set "option3=0"
set "option4=0"
set "selected=1"
:select
cls
echo Select React Framework
echo use ^<right^> arrow to continue, ^<up^> and ^<down^> to select, and ^<enter^> to toggle
FOR /L %%G IN (1,1,4) DO (
set "display=[ ]"
if !option%%G! equ 1 set "display=[x]"
if %%G equ !selected! set "display=^>!display!
if %%G==1 echo  !display! CoreUI,Bootstrap,MaterialUI,React-Router,Redux
if %%G==2 echo  !display! Tailwind CSS,React-Router,Redux
if %%G==3 echo  !display! CoreUI Bootstrap MaterialUI
if %%G==4 echo  !display! CoreUI Bootstrap MaterialUI
)
FOR /F "delims==" %%G IN ('%getKeyMacro%') DO set "key=%%G"
if "%key%"=="up" set /a "selected-=1"
if "%key%"=="down" set /a "selected+=1"
if %selected% lss 1 set "selected=1"
if %selected% gtr 4 set "selected=4"
if "%key%"=="enter" goto toggle
if "%key%"=="right" goto OK
goto select

:toggle
set /a "option%selected%+=1"
set /a "option%selected%=!option%selected%!%%2"
goto select

:OK
set /p MONGOURL="DO You Have Mongo DB URL (Y/N) ? "
if %MONGOURL% == Y (set /p MONGOURLL="Enter Mongo URL : ") else if %MONGOURL% == Y (set /p MONGOURLL="Enter Mongo URL : ") else if %MONGOURL% == Yes (set /p MONGOURLL="Enter Mongo URL : ") else if %MONGOURL% == y (set /p MONGOURLL="Enter Mongo URL : ")
cd Backend
if %MONGOURL% == Y (echo ATLAS_URI= %MONGOURLL% >> .env) else if %MONGOURL% == Yes (echo ATLAS_URI= %MONGOURLL% >> .env) else if %MONGOURL% == y (echo ATLAS_URI= %MONGOURLL% >> .env) else (echo ATLAS_URI= %MONGOURLL% >> .env)
mkdir controller && mkdir models && mkdir routes && mkdir config && mkdir services &&  mkdir services
echo JWT_ENCRYPTION=JSJFAH >> .env
echo JWT_EXPIRATION=99999999 >> .env
echo JWT_SECRET=FFFJWIEJEKKCNCJSSK >> .env
echo JWT_SECRET=JDFJFD >> .env
echo node_modules/ >> .gitignore
echo npm-debug.* >> .gitignore
@REM echo const express = require('express'); >> app.js
@REM echo const bodyParser = require('body-parser'); >> app.js
@REM echo const cors = require('cors'); >> app.js
@REM echo const morgan = require('morgan'); >> app.js
@REM echo const app = express(); >> app.js
@REM echo const api = require('./routes/api'); >> app.js
@REM echo require('dotenv').config(); >> app.js
@REM echo app.use(cors()); >> app.js
@REM echo app.use(bodyParser.json()); >> app.js
@REM echo app.use(bodyParser.urlencoded({ extended: true })); >> app.js
@REM echo app.use(morgan("dev")) >> app.js
@REM echo app.use('/api', api); >> app.js
@REM echo // set Header >> app.js
@REM echo app.use((req,res,next)=>{ >> app.js
@REM echo // Website you wish to allow to connect >> app.js
@REM echo res.setHeader("Access-Control-Allow-Origin", "*"); >> app.js
@REM echo // Request methods you wish to allow >> app.js
@REM echo res.setHeader("Access-Control-Allow-Methods","GET, POST, OPTIONS, PUT, PATCH, DELETE") >> app.js
@REM echo // Request headers you wish to allow >> app.js
@REM echo res.setHeader( "Access-Control-Allow-Headers","X-Requested-With,content-type"); >> app.js
@REM echo // Set to true if you need the website to include cookies in the requests sent >> app.js
@REM echo // to the API (e.g. in case you use sessions) >> app.js
@REM echo res.setHeader("Access-Control-Allow-Credentials", true); >> app.js
@REM echo // Pass to next layer of middleware >> app.js
@REM echo next(); >> app.js
@REM echo }) >> app.js
@REM echo // Error Page >> app.js
@REM echo app.use((req,res,next)=>{ >> app.js
@REM echo var err = new Error('not found'); >> app.js
@REM echo err.status = 404; >> app.js
@REM echo next(err); >> app.js
@REM echo }) >> app.js
@REM echo // error handler >> app.js
@REM echo app.use(function (err, req, res, next) { >> app.js
@REM echo // set locals, only providing error in development >> app.js
@REM echo res.locals.message = err.message; >> app.js
@REM echo res.locals.error = req.app.get("env") === "development" ? err : {}; >> app.js
@REM echo undefined >> app.js
@REM echo if (err.status === 404) { >> app.js
@REM echo res.status(404).json({ message: err.message }); >> app.js
@REM echo } else { >> app.js
@REM echo res.status(500).json({ message: err.message }); >> app.js
@REM echo } >> app.js
@REM echo }); >> app.js
@REM echo module.exports = app; >> app.js
mkdir bin && cd bin
@REM echo const express = require('express'); >> www.js
@REM echo const bodyParser = require('body-parser'); >> www.js
@REM echo const cors = require('cors'); >> www.js
@REM echo const morgan = require('morgan'); >> www.js
@REM echo const app = express(); >> www.js
@REM echo const api = require('./routes/api'); >> www.js
@REM echo require('dotenv').config(); >> www.js
@REM echo app.use(cors()); >> www.js
@REM echo app.use(bodyParser.json()); >> www.js
@REM echo app.use(bodyParser.urlencoded({ extended: true })); >> www.js
@REM echo app.use(morgan("dev")) >> www.js
@REM echo app.use('/api', api); >> www.js
@REM echo // set Header >> www.js
@REM echo app.use((req,res,next)=>{ >> www.js
@REM echo // Website you wish to allow to connect >> www.js
@REM echo res.setHeader("Access-Control-Allow-Origin", "*"); >> www.js
@REM echo // Request methods you wish to allow >> www.js
@REM echo res.setHeader("Access-Control-Allow-Methods","GET, POST, OPTIONS, PUT, PATCH, DELETE") >> www.js
@REM echo // Request headers you wish to allow >> www.js
@REM echo res.setHeader( "Access-Control-Allow-Headers","X-Requested-With,content-type"); >> www.js
@REM echo // Set to true if you need the website to include cookies in the requests sent >> www.js
@REM echo // to the API (e.g. in case you use sessions) >> www.js
@REM echo res.setHeader("Access-Control-Allow-Credentials", true); >> www.js
@REM echo // Pass to next layer of middleware >> www.js
@REM echo next(); >> www.js
@REM echo }) >> www.js
@REM echo // Error Page >> www.js
@REM echo app.use((req,res,next)=>{ >> www.js
@REM echo var err = new Error('not found'); >> www.js
@REM echo err.status = 404; >> www.js
@REM echo next(err); >> www.js
@REM echo }) >> www.js
@REM echo // error handler >> www.js
@REM echo app.use(function (err, req, res, next) { >> www.js
@REM echo // set locals, only providing error in development >> www.js
@REM echo res.locals.message = err.message; >> www.js
@REM echo res.locals.error = req.app.get("env") === "development" ? err : {}; >> www.js
@REM echo if (err.status === 404) { >> www.js
@REM echo res.status(404).json({ message: err.message }); >> www.js
@REM echo } else { >> www.js
@REM echo res.status(500).json({ message: err.message }); >> www.js
@REM echo } >> www.js
@REM echo }); >> www.js
@REM echo module.exports = app; >> www.js
cd ..
cd services

@REM echo const { to } = require('await-to-js'); >> util.service.js
@REM echo module.exports.to = async(promise)=>{ >> util.service.js
@REM echo let err,res; >> util.service.js
@REM echo [err, res] = await to(promise); >> util.service.js
@REM echo if (err) return [err, null]; >> util.service.js
@REM echo return [null, res]; >> util.service.js
@REM echo } >> util.service.js
@REM echo module.exports.ReS=function(res,data,code){ >> util.service.js
@REM echo let send_data = { success: true }; >> util.service.js
@REM echo if (typeof data === 'object') send_data = Object.assign(data, send_data); >> util.service.js
@REM echo if (typeof code !== 'undefined') res.statusCode = code; >> util.service.js
@REM echo else { res.statusCode = 400 } >> util.service.js
@REM echo return res.json(send_data); >> util.service.js
@REM echo } >> util.service.js
@REM echo module.exports.ReE=function(res,err,code){ >> util.service.js
@REM echo if (typeof err === 'object' && err.message !== 'undefined') err = err.message; >> util.service.js
@REM echo if (typeof code !== 'undefined') res.statusCode = code; >> util.service.js
@REM echo return res.json({ success: false, error: err }); >> util.service.js
@REM echo } >> util.service.js
@REM echo module.exports.TE = function (err_message, log) { >> util.service.js
@REM echo if (log === true) { >> util.service.js
@REM echo console.error(err_message) >> util.service.js
@REM echo } >> util.service.js
@REM echo throw new Error(err_message); >> util.service.js
@REM echo } >> util.service.js
@REM echo module.exports.isNull = function (field) {return ( typeof field === 'undefined' || >> util.service.js
@REM echo field === 'undefined' || >> util.service.js
@REM echo field === "" || >> util.service.js
@REM echo field === null >> util.service.js
@REM echo ) >> util.service.js
@REM echo } >> util.service.js
@REM echo module.exports.isEmpty = function (obj) {return !Object.keys(obj).length > 0; >> util.service.js
@REM echo } >> util.service.js
@REM echo module.exports.validateEmail = (email) => { >> util.service.js
@REM echo const re = /^(([^<>()[]\.,;:s@"]+(.[^<>()[]\.,;:s@"]+)*)|(".+"))@(([[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}])|(([a-zA-Z-0-9]+.)+[a-zA-Z]{2,}))$/;return re.test(String(email).toLowerCase()); >> util.service.js
@REM echo } >> util.service.js
@REM echo "module.exports.containsSpecialChars = (str) => {const specialChars =``!@#$%^&*()_+-=[]{};':"\|,.<>/?~`;const result = specialChars.split('').some(specialChar => {if (str.includes(specialChar)) {return true;}return false;});return result; }""  >> util.service.js
@REM echo >> util.service.js
@REM echo  >> util.service.js
@REM echo   >> util.service.js >> util.service.js
npx npm init --y && cd Backend && npm i express mongoose 
FOR /L %%G IN (1,1,4) DO (
if !option%%G! equ 1 (
if %%G == 1 echo "The value of variable c is 15" 
echo %%G selected
)
)


PAUSE
