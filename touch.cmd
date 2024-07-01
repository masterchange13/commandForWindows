@echo off

REM 检查是否传递了文件名参数
if "%1"=="" (
    echo Usage: %0 ^<filename^>
    exit /b 1
)

REM 使用 echo 命令创建或更新文件的时间戳
echo. > "%1"
