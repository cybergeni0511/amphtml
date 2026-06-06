@echo off
REM 엠알31헤어 웹스토리 로컬 실행 (Windows)
cd /d "%~dp0"
set PORT=8000
echo.
echo  엠알31헤어 웹스토리 서버를 시작합니다...
echo  http://localhost:%PORT%/index.html   (종료: Ctrl+C)
echo.
start "" "http://localhost:%PORT%/index.html"
python -m http.server %PORT%
