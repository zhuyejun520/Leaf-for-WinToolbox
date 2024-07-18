@echo off
setlocal enabledelayedexpansion
color 2
:main
cls
echo =============================================================================================
echo		叶子的Windows工具箱 v1.2.2.1 https://geminigame.cn/
echo				主界面
echo =============================================================================================
echo 1. 安装基础运行库
echo 2. 安装适用于Android的Windows子系统
echo 3. 安装Windows_to_go
echo 4. 安卓子系统的拓展功能
echo 5. 其他功能
echo 6. 检查更新
echo q. 退出
echo =============================================================================================
set /p choice=请输入数字：
if %choice%==1 goto install_Runtime
if %choice%==2 goto Android_So_Windows
if %choice%==3 goto Windows_to_go
if %choice%==4 goto ASWpro
if %choice%==5 goto function8
if %choice%==6 goto update
if %choice%==q exit
goto main

:Windows_to_go
echo 敬请期待
goto mian

:ASWpro
echo 敬请期待
goto mian

:install_Runtime
cls
echo =============================================================================================
echo		叶子的Windows工具箱 v1.2.2.1 https://geminigame.cn/
echo				安装基础运行库
echo =============================================================================================
echo 1. 安装Visual C++运行库（x86）
echo 2. 安装Visual C++运行库（x64）
echo 3. 修复DirectX的DLL组件
echo 4. 安装.NET组件
echo 5. 安装Open AL
echo 6. Microsoft XNA 4.0
echo 7. 返回
echo =============================================================================================
set /p choice=请输入数字：
if %choice%==1 goto function6
if %choice%==2 goto function7
if %choice%==3 goto function5
if %choice%==4 goto Net4
if %choice%==5 goto oalinst
if %choice%==6 goto xnafx40_redist
if %choice%==7 goto main
goto install_Runtime

:Net4
echo 开始从云端下载安装包
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://lz.qaiu.top/parser?url=https://pan.seeoss.com/s/r0WIJ', 'Net4.0.7z')"
Tool\7z.exe x -y Net4.0.7z -oRuntime
start Runtime\Net4.0.exe /q /norestart
del Net4.0.7z
goto install_Runtime

:oalinst
echo 开始从云端下载安装包
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://lz.qaiu.top/parser?url=https://pan.seeoss.com/s/7qxSg', 'oalinst.7z')"
Tool\7z.exe x -y oalinst.7z -oRuntime
start Runtime\oalinst.exe /SILENT
del oalinst.7z
goto install_Runtime

:xnafx40_redist
echo 开始从云端下载安装包
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://lz.qaiu.top/parser?url=https://pan.seeoss.com/s/zq6Fy', 'xnafx40_redist.7z')"
Tool\7z.exe x -y xnafx40_redist.7z -oRuntime
start Runtime\xnafx40_redist.msi /QN
del xnafx40_redist.7z
goto install_Runtime

:Android_So_Windows
cls
echo =============================================================================================
echo		叶子的Windows工具箱 v1.2.2.1 https://geminigame.cn/
echo			安装适用于Android的Windows子系统
echo =============================================================================================
echo "          _____                            _____                            _____          "
echo "         /\    \                          /\    \                          /\    \         "
echo "        /::\    \                        /::\    \                        /::\____\        "
echo "       /::::\    \                      /::::\    \                      /:::/    /        "
echo "      /::::::\    \                    /::::::\    \                    /:::/   _/___      "
echo "     /:::/\:::\    \                  /:::/\:::\    \                  /:::/   /\    \     "
echo "    /:::/__\:::\    \                /:::/__\:::\    \                /:::/   /::\____\    "
echo "   /::::\   \:::\    \               \:::\   \:::\    \              /:::/   /:::/    /    "
echo "  /::::::\   \:::\    \            ___\:::\   \:::\    \            /:::/   /:::/   _/___  "
echo " /:::/\:::\   \:::\    \          /\   \:::\   \:::\    \          /:::/___/:::/   /\    \ "
echo "/:::/  \:::\   \:::\____\        /::\   \:::\   \:::\____\        |:::|   /:::/   /::\____\"
echo "\::/    \:::\  /:::/    /        \:::\   \:::\   \::/    /        |:::|__/:::/   /:::/    /"
echo " \/____/ \:::\/:::/    /          \:::\   \:::\   \/____/          \:::\/:::/   /:::/    / "
echo "          \::::::/    /            \:::\   \:::\    \               \::::::/   /:::/    /  "
echo "           \::::/    /              \:::\   \:::\____\               \::::/___/:::/    /   "
echo "           /:::/    /                \:::\  /:::/    /                \:::\__/:::/    /    "
echo "          /:::/    /                  \:::\/:::/    /                  \::::::::/    /     "
echo "         /:::/    /                    \::::::/    /                    \::::::/    /      "
echo "        /:::/    /                      \::::/    /                      \::::/    /       "
echo "        \::/    /                        \::/    /                        \::/____/        "
echo "         \/____/                          \/____/                          ~~              "
echo =============================================================================================
echo 下载安装适用于Android的Windows子系统组件
set /p choice=是否开始安装[yes/no]：
if %choice%==yes goto Ti_Si1
if %choice%==no goto main 

:Ti_Si1
set /p choice=是否在设置中已经勾选虚拟化和虚拟平台？[yes/no]：
if %choice%==yes goto :goto Ti_Si2
if %choice%==no start hy.html

:Ti_Si2
set /p choice=是否在设置中已经开启开发者模式？[yes/no]：
if %choice%==yes goto :ASM_install
if %choice%==no goto admin

:admin
REM 检查是否以管理员权限运行
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo 请以管理员身份运行此脚本。
    pause
    exit /b
)

REM 设置注册表键值
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Appx" /v "AllowDevelopmentWithoutDevLicense" /t REG_DWORD /d 1 /f

if %errorlevel% equ 0 (
    echo 成功创建并设置注册表键值。
) else (
    echo 创建或设置注册表键值时出错。
)
goto ASM_install

:ASM_install
cls
echo 开始从云端下载组件
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://lz.qaiu.top/parser?url=https://pan.seeoss.com/s/DOwTQ', 'ASW.7z')"
echo 开始解压组件
Tool\7z.exe x -y ASW.7z
echo 开始安装ASW
powershell cd ASW
powershell Add-AppxPackage -Register .\AppxManifest.xml
echo 已安装完成
pause
goto mian

:function2
cls
echo =============================================================================================
echo		叶子的Windows工具箱 v1.2.2.1 https://geminigame.cn/
echo				更好的Windows工具
echo =============================================================================================
echo 1. Windows激活工具
echo 2. DiskGenius分区工具
echo 3. CPU-Z处理器检测工具
echo 4. Geek软件强制删除工具
echo 5. 火绒安全管理工具
echo 6. VLC视频播放工具
echo 7. Betterncm网易云插件工具
echo 8. MToolBox文件夹美化工具
echo 9. 返回
echo =============================================================================================
set /p choice=请输入数字：
if %choice%==1 Tool\7z.exe x -y WinTool\HEU_KMS_Activator_Dragon.7z -oWinTool
if %choice%==1 start WinTool\HEU_KMS_Activator_Dragon.exe
if %choice%==2 Tool\7z.exe x -y WinTool\dg分区工具.7z -oWinTool
if %choice%==2 start WinTool\dg分区工具.exe
if %choice%==3 Tool\7z.exe x -y WinTool\cpuz.7z -oWinTool
if %choice%==3 start WinTool\cpuz.exe
if %choice%==4 Tool\7z.exe x -y WinTool\geek.7z -oWinTool
if %choice%==4 start WinTool\geek.exe
if %choice%==5 Tool\7z.exe x -y WinTool\sysdiag-all-5.0.75.3-2024.03.24.1.7z -oWinTool
if %choice%==5 start WinTool\sysdiag-all-5.0.75.3-2024.03.24.1.exe
if %choice%==6 Tool\7z.exe x -y WinTool\vlc视频播放器-3.0.20-win32.7z -oWinTool
if %choice%==6 start WinTool\vlc视频播放器-3.0.20-win32.exe
if %choice%==7 Tool\7z.exe x -y WinTool\betterncm_installer-1.1.3.7z -oWinTool
if %choice%==7 start WinTool\betterncm_installer-1.1.3.exe
if %choice%==8 Tool\7z.exe x -y WinTool\MToolBox.7z -oWinTool
if %choice%==8 start WinTool\MToolBox\MToolBox.exe
if %choice%==9 goto main
goto function2

:function8
cls
echo =============================================================================================
echo		叶子的Windows工具箱 v1.2.2.1 https://geminigame.cn/
echo				办公工具
echo =============================================================================================
echo 1. 修复视频时间轴(提前在桌面创建Videos文件夹,并将要修复的视频放进去)
echo 2. ts视频格式转mkv视频格式(提前在桌面创建Videos文件夹,并将要转换的视频放进去)
echo 3. 干掉极域电子云教室
echo 3. 返回
echo =============================================================================================
set /p choice=请输入数字：
if %choice%==1 goto function9
if %choice%==2 goto function10
if %choice%==3 taskkill /f /im studentmain.exe
if %choice%==4 goto main
goto function8

:function9
cls
echo =============================================================================================
echo		叶子的Windows工具箱 v1.2.2.1 https://geminigame.cn/
echo	修复视频时间轴(提前在桌面创建Videos文件夹,并将要修复的视频放进去)
echo =============================================================================================
setlocal enabledelayedexpansion

xcopy /y "Tool\ffmpeg.exe" "%USERPROFILE%\Desktop\Videos\"
cd /d %USERPROFILE%\Desktop\Videos
for %%f in (*.mp4 *.mkv *.avi) do (
    echo 正在修复： %%f
    ffmpeg -i "%%f" -c copy -metadata timecode=00:00:00:00 "修复_%%f"
    del "%%f"
    ren "修复_%%f" "%%f"
)
echo 所有视频文件的时间轴已修复完成。
del "%USERPROFILE%\Desktop\Videos\ffmpeg.exe"
echo =============================================================================================
set /p choice=输入数字1退出：
if %choice%==1 goto exit
goto function9

:function10
cls
echo =============================================================================================
echo		叶子的Windows工具箱 v1.2.2.1 https://geminigame.cn/
echo	ts视频格式转mkv视频格式(提前在桌面创建Videos文件夹,并将要转换的视频放进去)
echo =============================================================================================
cd %USERPROFILE%\Desktop\Videos
for %%f in (*.ts) do ren "%%f" "%%~nf.mkv"
echo 所有视频文件的格式已转换完成。
echo =============================================================================================
set /p choice=输入数字1进行修复时间轴：
if %choice%==1 goto function9
goto function10

:function3
cls
echo =============================================================================================
echo		叶子的Windows工具箱 v1.2.2.1 https://geminigame.cn/
echo				其他功能
echo =============================================================================================
echo 1. 前往作者BiliBili主页
echo 2. 下载steam官方启动器
echo 3. 下载EPIC官方启动器
echo 4. 下载育碧官方启动器
echo 5. 下载EA官方启动器
echo 6. 下载steam++加速器（密码1234）
echo 7. 返回主界面
set /p choice=请输入数字：
if %choice%==1 start https://space.bilibili.com/2063596657/
if %choice%==2 start https://media.st.dl.eccdnx.com/client/installer/SteamSetup.exe
if %choice%==3 start https://epicgames-download1.akamaized.net/Builds/UnrealEngineLauncher/Installers/Win32/EpicInstaller-15.17.1.msi?launcherfilename=EpicInstaller-15.17.1-9e2dc138e14f48b6b235dbbbdd64f770.msi
if %choice%==4 start https://static3.cdn.ubi.com/orbit/launcher_installer/UbisoftConnectInstaller.exe
if %choice%==5 start https://origin-a.akamaihd.net/EA-Desktop-Client-Download/installer-releases/EAappInstaller.exe
if %choice%==6 start https://wwn.lanzouy.com/b01v4iz1g
if %choice%==7 goto main
goto function3

:function4
cls
echo =============================================================================================
echo		叶子的Windows工具箱 v1.2.2.1 https://geminigame.cn/
echo				检查更新
echo =============================================================================================
setlocal enabledelayedexpansion

set num=0
for /f "delims=" %%i in (1.txt) do set num=%%i
if !num! gtr 3 (
    echo 开始下载更新...
) else (
    echo 已经是最新版本
)
goto function4

:function5
cls
echo =============================================================================================
echo		叶子的Windows工具箱 v1.2.2.1 https://geminigame.cn/
echo				修复DirectX的DLL组件
echo =============================================================================================
if exist C:\Windows\System32\d3dx9_24.dll (
    echo DLL正常
) else (
    xcopy WinTool\DLL\ C:\Windows\System32\ /s /e /y
    echo DLL异常已修复
)
echo 1. 返回主界面
echo 2. 退出
set /p choice=请输入数字：
if %choice%==1 goto main
if %choice%==2 goto exit
goto function5

:function6
cls
echo =============================================================================================
echo		叶子的Windows工具箱 v1.2.2.1 https://geminigame.cn/
echo				安装Visual C++运行库（x86）
echo =============================================================================================
echo 正在安装Visual C++2005x86...
start WinTool\Cx86/C05.msi
echo 正在安装Visual C++2008x86...
start WinTool\Cx86/cp08.exe
echo 正在安装Visual C++2010x86...
start WinTool\Cx86/cp10.exe
echo 正在安装Visual C++2012x86...
start WinTool\Cx86/cp12b.exe
echo 正在安装Visual C++2013x86...
start WinTool\Cx86/cp13b.exe
echo 正在安装Visual C++2015x86...
start WinTool\Cx86/cp15d.exe
echo 安装完成！
echo 1. 返回主界面
echo 2. 退出
set /p choice=请输入数字：
if %choice%==1 goto main
if %choice%==2 goto exit
goto function6

:function7
cls
echo =============================================================================================
echo		叶子的Windows工具箱 v1.2.2.1 https://geminigame.cn/
echo				安装Visual C++运行库（x64）
echo =============================================================================================
echo 正在安装Visual C++2005x86...
start WinTool\Cx64/vcredist.msi
echo 正在安装Visual C++2008x86...
start WinTool\Cx64/cp08a.exe
echo 正在安装Visual C++2010x86...
start WinTool\Cx64/cp10a.exe
echo 正在安装Visual C++2012x86...
start WinTool\Cx64/cp12c.exe
echo 正在安装Visual C++2013x86...
start WinTool\Cx64/cp13c.exe
echo 正在安装Visual C++2015x86...
start WinTool\Cx64/cp15e.exe
echo 安装完成！
echo 1. 返回主界面
echo 2. 退出
set /p choice=请输入数字：
if %choice%==1 goto main
if %choice%==2 goto exit
goto function7

:update
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://lz.qaiu.top/parser?url=https://pan.seeoss.com/s/xZjuo', 'VersionNumber.txt')"
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://lz.qaiu.top/parser?url=https://pan.seeoss.com/s/mMGSz', 'update.txt')"
set num=0
for /f "delims=" %%i in (VersionNumber.txt) do set num=%%i
if !num! gtr 1 (
    echo 已开始下载更新...
    set link=
    for /f "delims=" %%i in (update.txt) do set link=%%i
    powershell -Command "Invoke-WebRequest -Uri '!link!' -OutFile 'update.exe'"
    start update.exe
) else (
    echo 已经是最新版本
)

pause
goto main