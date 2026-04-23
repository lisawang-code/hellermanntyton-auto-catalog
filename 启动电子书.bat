@echo off
chcp 65001 >nul
echo 正在启动电子书服务器...
echo.
echo 请稍候，浏览器将自动打开...
echo.

REM 启动HTTP服务器（后台运行）
start /B python -m http.server 8080

REM 等待服务器启动
timeout /t 2 /nobreak >nul

REM 用默认浏览器打开
start http://localhost:8080

echo.
echo 服务器已启动，正在打开浏览器...
echo 如果浏览器没有自动打开，请手动访问：http://localhost:8080
echo.
pause
