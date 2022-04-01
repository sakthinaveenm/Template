@echo off
echo "Welcome to Template Generate For MERN STACK"
set /p MYNAME="Enter Project Name : "
mkdir %MYNAME%
cd %MYNAME%
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
echo const express = require('express'); >> app.js
echo const bodyParser = require('body-parser'); >> app.js
echo const cors = require('cors'); >> app.js
echo const morgan = require('morgan'); >> app.js
echo const app = express(); >> app.js
echo const api = require('./routes/api'); >> app.js
echo require('dotenv').config(); >> app.js
echo app.use(cors()); >> app.js
echo app.use(bodyParser.json()); >> app.js
echo app.use(bodyParser.urlencoded({ extended: true })); >> app.js
echo app.use(morgan("dev")) >> app.js
echo app.use('/api', api); >> app.js
echo // set Header >> app.js
echo app.use((req,res,next)=>{ >> app.js
echo // Website you wish to allow to connect >> app.js
echo res.setHeader("Access-Control-Allow-Origin", "*"); >> app.js
echo // Request methods you wish to allow >> app.js
echo res.setHeader("Access-Control-Allow-Methods","GET, POST, OPTIONS, PUT, PATCH, DELETE") >> app.js
echo // Request headers you wish to allow >> app.js
echo res.setHeader( "Access-Control-Allow-Headers","X-Requested-With,content-type"); >> app.js
echo // Set to true if you need the website to include cookies in the requests sent >> app.js
echo // to the API (e.g. in case you use sessions) >> app.js
echo res.setHeader("Access-Control-Allow-Credentials", true); >> app.js
echo // Pass to next layer of middleware >> app.js
echo next(); >> app.js
echo }) >> app.js
echo // Error Page >> app.js
echo app.use((req,res,next)=>{ >> app.js
echo var err = new Error('not found'); >> app.js
echo err.status = 404; >> app.js
echo next(err); >> app.js
echo }) >> app.js
echo // error handler >> app.js
echo app.use(function (err, req, res, next) { >> app.js
echo // set locals, only providing error in development >> app.js
echo res.locals.message = err.message; >> app.js
echo res.locals.error = req.app.get("env") === "development" ? err : {}; >> app.js
echo undefined >> app.js
echo if (err.status === 404) { >> app.js
echo res.status(404).json({ message: err.message }); >> app.js
echo } else { >> app.js
echo res.status(500).json({ message: err.message }); >> app.js
echo } >> app.js
echo }); >> app.js
echo module.exports = app; >> app.js
mkdir bin && cd bin
echo const express = require('express'); >> www.js
echo const bodyParser = require('body-parser'); >> www.js
echo const cors = require('cors'); >> www.js
echo const morgan = require('morgan'); >> www.js
echo const app = express(); >> www.js
echo const api = require('./routes/api'); >> www.js
echo require('dotenv').config(); >> www.js
echo app.use(cors()); >> www.js
echo app.use(bodyParser.json()); >> www.js
echo app.use(bodyParser.urlencoded({ extended: true })); >> www.js
echo app.use(morgan("dev")) >> www.js
echo app.use('/api', api); >> www.js
echo // set Header >> www.js
echo app.use((req,res,next)=>{ >> www.js
echo // Website you wish to allow to connect >> www.js
echo res.setHeader("Access-Control-Allow-Origin", "*"); >> www.js
echo // Request methods you wish to allow >> www.js
echo res.setHeader("Access-Control-Allow-Methods","GET, POST, OPTIONS, PUT, PATCH, DELETE") >> www.js
echo // Request headers you wish to allow >> www.js
echo res.setHeader( "Access-Control-Allow-Headers","X-Requested-With,content-type"); >> www.js
echo // Set to true if you need the website to include cookies in the requests sent >> www.js
echo // to the API (e.g. in case you use sessions) >> www.js
echo res.setHeader("Access-Control-Allow-Credentials", true); >> www.js
echo // Pass to next layer of middleware >> www.js
echo next(); >> www.js
echo }) >> www.js
echo // Error Page >> www.js
echo app.use((req,res,next)=>{ >> www.js
echo var err = new Error('not found'); >> www.js
echo err.status = 404; >> www.js
echo next(err); >> www.js
echo }) >> www.js
echo // error handler >> www.js
echo app.use(function (err, req, res, next) { >> www.js
echo // set locals, only providing error in development >> www.js
echo res.locals.message = err.message; >> www.js
echo res.locals.error = req.app.get("env") === "development" ? err : {}; >> www.js
echo if (err.status === 404) { >> www.js
echo res.status(404).json({ message: err.message }); >> www.js
echo } else { >> www.js
echo res.status(500).json({ message: err.message }); >> www.js
echo } >> www.js
echo }); >> www.js
echo module.exports = app; >> www.js
cd ..
cd services
echo const { to } = require('await-to-js'); >> util.service.js
echo module.exports.to = async(promise)=>{ >> util.service.js
echo let err,res; >> util.service.js
echo [err, res] = await to(promise); >> util.service.js
echo if (err) return [err, null]; >> util.service.js
echo return [null, res]; >> util.service.js
echo } >> util.service.js
echo module.exports.ReS=function(res,data,code){ >> util.service.js
echo let send_data = { success: true }; >> util.service.js
echo if (typeof data === 'object') send_data = Object.assign(data, send_data); >> util.service.js
echo if (typeof code !== 'undefined') res.statusCode = code; >> util.service.js
echo else { res.statusCode = 400 } >> util.service.js
echo return res.json(send_data); >> util.service.js
echo } >> util.service.js
echo module.exports.ReE=function(res,err,code){ >> util.service.js
echo if (typeof err === 'object' && err.message !== 'undefined') err = err.message; >> util.service.js
echo if (typeof code !== 'undefined') res.statusCode = code; >> util.service.js
echo return res.json({ success: false, error: err }); >> util.service.js
echo } >> util.service.js
echo module.exports.TE = function (err_message, log) { >> util.service.js
echo if (log === true) { >> util.service.js
echo console.error(err_message) >> util.service.js
echo } >> util.service.js
echo throw new Error(err_message); >> util.service.js
echo } >> util.service.js
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
