@echo off

REM 检查是否传递了目录名称参数
if "%1"=="" (
    echo Usage: %0 ^<directory_name^>
    exit /b 1
)

REM 创建目录
mkdir "%1"

REM 检查目录是否成功创建
if not errorlevel 1 (
    REM 进入目录并将当前目录压入堆栈
    pushd "%1"
    REM 提示当前目录
    echo Entered directory: %cd%
) else (
    echo Failed to create directory '%1'.
    exit /b 1
)

REM 可选：在此处添加额外的命令，如执行其他操作

REM 离开目录并返回到原来的目录（批处理文件的原始目录）
popd
