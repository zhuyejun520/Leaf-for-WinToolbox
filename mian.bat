@echo off
setlocal enabledelayedexpansion
color 2
:main
cls
echo =============================================================================================
echo		Ҷ�ӵ�Windows������ v1.2.2.1 https://geminigame.cn/
echo				������
echo =============================================================================================
echo 1. ��װ�������п�
echo 2. ��װ������Android��Windows��ϵͳ
echo 3. ��װWindows_to_go
echo 4. ��׿��ϵͳ����չ����
echo 5. ��������
echo 6. ������
echo q. �˳�
echo =============================================================================================
set /p choice=���������֣�
if %choice%==1 goto install_Runtime
if %choice%==2 goto Android_So_Windows
if %choice%==3 goto Windows_to_go
if %choice%==4 goto ASWpro
if %choice%==5 goto function8
if %choice%==6 goto update
if %choice%==q exit
goto main

:Windows_to_go
echo �����ڴ�
goto mian

:ASWpro
echo �����ڴ�
goto mian

:install_Runtime
cls
echo =============================================================================================
echo		Ҷ�ӵ�Windows������ v1.2.2.1 https://geminigame.cn/
echo				��װ�������п�
echo =============================================================================================
echo 1. ��װVisual C++���п⣨x86��
echo 2. ��װVisual C++���п⣨x64��
echo 3. �޸�DirectX��DLL���
echo 4. ��װ.NET���
echo 5. ��װOpen AL
echo 6. Microsoft XNA 4.0
echo 7. ����
echo =============================================================================================
set /p choice=���������֣�
if %choice%==1 goto function6
if %choice%==2 goto function7
if %choice%==3 goto function5
if %choice%==4 goto Net4
if %choice%==5 goto oalinst
if %choice%==6 goto xnafx40_redist
if %choice%==7 goto main
goto install_Runtime

:Net4
echo ��ʼ���ƶ����ذ�װ��
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://lz.qaiu.top/parser?url=https://pan.seeoss.com/s/r0WIJ', 'Net4.0.7z')"
Tool\7z.exe x -y Net4.0.7z -oRuntime
start Runtime\Net4.0.exe /q /norestart
del Net4.0.7z
goto install_Runtime

:oalinst
echo ��ʼ���ƶ����ذ�װ��
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://lz.qaiu.top/parser?url=https://pan.seeoss.com/s/7qxSg', 'oalinst.7z')"
Tool\7z.exe x -y oalinst.7z -oRuntime
start Runtime\oalinst.exe /SILENT
del oalinst.7z
goto install_Runtime

:xnafx40_redist
echo ��ʼ���ƶ����ذ�װ��
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://lz.qaiu.top/parser?url=https://pan.seeoss.com/s/zq6Fy', 'xnafx40_redist.7z')"
Tool\7z.exe x -y xnafx40_redist.7z -oRuntime
start Runtime\xnafx40_redist.msi /QN
del xnafx40_redist.7z
goto install_Runtime

:Android_So_Windows
cls
echo =============================================================================================
echo		Ҷ�ӵ�Windows������ v1.2.2.1 https://geminigame.cn/
echo			��װ������Android��Windows��ϵͳ
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
echo ���ذ�װ������Android��Windows��ϵͳ���
set /p choice=�Ƿ�ʼ��װ[yes/no]��
if %choice%==yes goto Ti_Si1
if %choice%==no goto main 

:Ti_Si1
set /p choice=�Ƿ����������Ѿ���ѡ���⻯������ƽ̨��[yes/no]��
if %choice%==yes goto :goto Ti_Si2
if %choice%==no start hy.html

:Ti_Si2
set /p choice=�Ƿ����������Ѿ�����������ģʽ��[yes/no]��
if %choice%==yes goto :ASM_install
if %choice%==no goto admin

:admin
REM ����Ƿ��Թ���ԱȨ������
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo ���Թ���Ա������д˽ű���
    pause
    exit /b
)

REM ����ע����ֵ
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Appx" /v "AllowDevelopmentWithoutDevLicense" /t REG_DWORD /d 1 /f

if %errorlevel% equ 0 (
    echo �ɹ�����������ע����ֵ��
) else (
    echo ����������ע����ֵʱ����
)
goto ASM_install

:ASM_install
cls
echo ��ʼ���ƶ��������
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://lz.qaiu.top/parser?url=https://pan.seeoss.com/s/DOwTQ', 'ASW.7z')"
echo ��ʼ��ѹ���
Tool\7z.exe x -y ASW.7z
echo ��ʼ��װASW
powershell cd ASW
powershell Add-AppxPackage -Register .\AppxManifest.xml
echo �Ѱ�װ���
pause
goto mian

:function2
cls
echo =============================================================================================
echo		Ҷ�ӵ�Windows������ v1.2.2.1 https://geminigame.cn/
echo				���õ�Windows����
echo =============================================================================================
echo 1. Windows�����
echo 2. DiskGenius��������
echo 3. CPU-Z��������⹤��
echo 4. Geek���ǿ��ɾ������
echo 5. ���ް�ȫ������
echo 6. VLC��Ƶ���Ź���
echo 7. Betterncm�����Ʋ������
echo 8. MToolBox�ļ�����������
echo 9. ����
echo =============================================================================================
set /p choice=���������֣�
if %choice%==1 Tool\7z.exe x -y WinTool\HEU_KMS_Activator_Dragon.7z -oWinTool
if %choice%==1 start WinTool\HEU_KMS_Activator_Dragon.exe
if %choice%==2 Tool\7z.exe x -y WinTool\dg��������.7z -oWinTool
if %choice%==2 start WinTool\dg��������.exe
if %choice%==3 Tool\7z.exe x -y WinTool\cpuz.7z -oWinTool
if %choice%==3 start WinTool\cpuz.exe
if %choice%==4 Tool\7z.exe x -y WinTool\geek.7z -oWinTool
if %choice%==4 start WinTool\geek.exe
if %choice%==5 Tool\7z.exe x -y WinTool\sysdiag-all-5.0.75.3-2024.03.24.1.7z -oWinTool
if %choice%==5 start WinTool\sysdiag-all-5.0.75.3-2024.03.24.1.exe
if %choice%==6 Tool\7z.exe x -y WinTool\vlc��Ƶ������-3.0.20-win32.7z -oWinTool
if %choice%==6 start WinTool\vlc��Ƶ������-3.0.20-win32.exe
if %choice%==7 Tool\7z.exe x -y WinTool\betterncm_installer-1.1.3.7z -oWinTool
if %choice%==7 start WinTool\betterncm_installer-1.1.3.exe
if %choice%==8 Tool\7z.exe x -y WinTool\MToolBox.7z -oWinTool
if %choice%==8 start WinTool\MToolBox\MToolBox.exe
if %choice%==9 goto main
goto function2

:function8
cls
echo =============================================================================================
echo		Ҷ�ӵ�Windows������ v1.2.2.1 https://geminigame.cn/
echo				�칫����
echo =============================================================================================
echo 1. �޸���Ƶʱ����(��ǰ�����洴��Videos�ļ���,����Ҫ�޸�����Ƶ�Ž�ȥ)
echo 2. ts��Ƶ��ʽתmkv��Ƶ��ʽ(��ǰ�����洴��Videos�ļ���,����Ҫת������Ƶ�Ž�ȥ)
echo 3. �ɵ���������ƽ���
echo 3. ����
echo =============================================================================================
set /p choice=���������֣�
if %choice%==1 goto function9
if %choice%==2 goto function10
if %choice%==3 taskkill /f /im studentmain.exe
if %choice%==4 goto main
goto function8

:function9
cls
echo =============================================================================================
echo		Ҷ�ӵ�Windows������ v1.2.2.1 https://geminigame.cn/
echo	�޸���Ƶʱ����(��ǰ�����洴��Videos�ļ���,����Ҫ�޸�����Ƶ�Ž�ȥ)
echo =============================================================================================
setlocal enabledelayedexpansion

xcopy /y "Tool\ffmpeg.exe" "%USERPROFILE%\Desktop\Videos\"
cd /d %USERPROFILE%\Desktop\Videos
for %%f in (*.mp4 *.mkv *.avi) do (
    echo �����޸��� %%f
    ffmpeg -i "%%f" -c copy -metadata timecode=00:00:00:00 "�޸�_%%f"
    del "%%f"
    ren "�޸�_%%f" "%%f"
)
echo ������Ƶ�ļ���ʱ�������޸���ɡ�
del "%USERPROFILE%\Desktop\Videos\ffmpeg.exe"
echo =============================================================================================
set /p choice=��������1�˳���
if %choice%==1 goto exit
goto function9

:function10
cls
echo =============================================================================================
echo		Ҷ�ӵ�Windows������ v1.2.2.1 https://geminigame.cn/
echo	ts��Ƶ��ʽתmkv��Ƶ��ʽ(��ǰ�����洴��Videos�ļ���,����Ҫת������Ƶ�Ž�ȥ)
echo =============================================================================================
cd %USERPROFILE%\Desktop\Videos
for %%f in (*.ts) do ren "%%f" "%%~nf.mkv"
echo ������Ƶ�ļ��ĸ�ʽ��ת����ɡ�
echo =============================================================================================
set /p choice=��������1�����޸�ʱ���᣺
if %choice%==1 goto function9
goto function10

:function3
cls
echo =============================================================================================
echo		Ҷ�ӵ�Windows������ v1.2.2.1 https://geminigame.cn/
echo				��������
echo =============================================================================================
echo 1. ǰ������BiliBili��ҳ
echo 2. ����steam�ٷ�������
echo 3. ����EPIC�ٷ�������
echo 4. �������̹ٷ�������
echo 5. ����EA�ٷ�������
echo 6. ����steam++������������1234��
echo 7. ����������
set /p choice=���������֣�
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
echo		Ҷ�ӵ�Windows������ v1.2.2.1 https://geminigame.cn/
echo				������
echo =============================================================================================
setlocal enabledelayedexpansion

set num=0
for /f "delims=" %%i in (1.txt) do set num=%%i
if !num! gtr 3 (
    echo ��ʼ���ظ���...
) else (
    echo �Ѿ������°汾
)
goto function4

:function5
cls
echo =============================================================================================
echo		Ҷ�ӵ�Windows������ v1.2.2.1 https://geminigame.cn/
echo				�޸�DirectX��DLL���
echo =============================================================================================
if exist C:\Windows\System32\d3dx9_24.dll (
    echo DLL����
) else (
    xcopy WinTool\DLL\ C:\Windows\System32\ /s /e /y
    echo DLL�쳣���޸�
)
echo 1. ����������
echo 2. �˳�
set /p choice=���������֣�
if %choice%==1 goto main
if %choice%==2 goto exit
goto function5

:function6
cls
echo =============================================================================================
echo		Ҷ�ӵ�Windows������ v1.2.2.1 https://geminigame.cn/
echo				��װVisual C++���п⣨x86��
echo =============================================================================================
echo ���ڰ�װVisual C++2005x86...
start WinTool\Cx86/C05.msi
echo ���ڰ�װVisual C++2008x86...
start WinTool\Cx86/cp08.exe
echo ���ڰ�װVisual C++2010x86...
start WinTool\Cx86/cp10.exe
echo ���ڰ�װVisual C++2012x86...
start WinTool\Cx86/cp12b.exe
echo ���ڰ�װVisual C++2013x86...
start WinTool\Cx86/cp13b.exe
echo ���ڰ�װVisual C++2015x86...
start WinTool\Cx86/cp15d.exe
echo ��װ��ɣ�
echo 1. ����������
echo 2. �˳�
set /p choice=���������֣�
if %choice%==1 goto main
if %choice%==2 goto exit
goto function6

:function7
cls
echo =============================================================================================
echo		Ҷ�ӵ�Windows������ v1.2.2.1 https://geminigame.cn/
echo				��װVisual C++���п⣨x64��
echo =============================================================================================
echo ���ڰ�װVisual C++2005x86...
start WinTool\Cx64/vcredist.msi
echo ���ڰ�װVisual C++2008x86...
start WinTool\Cx64/cp08a.exe
echo ���ڰ�װVisual C++2010x86...
start WinTool\Cx64/cp10a.exe
echo ���ڰ�װVisual C++2012x86...
start WinTool\Cx64/cp12c.exe
echo ���ڰ�װVisual C++2013x86...
start WinTool\Cx64/cp13c.exe
echo ���ڰ�װVisual C++2015x86...
start WinTool\Cx64/cp15e.exe
echo ��װ��ɣ�
echo 1. ����������
echo 2. �˳�
set /p choice=���������֣�
if %choice%==1 goto main
if %choice%==2 goto exit
goto function7

:update
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://lz.qaiu.top/parser?url=https://pan.seeoss.com/s/xZjuo', 'VersionNumber.txt')"
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://lz.qaiu.top/parser?url=https://pan.seeoss.com/s/mMGSz', 'update.txt')"
set num=0
for /f "delims=" %%i in (VersionNumber.txt) do set num=%%i
if !num! gtr 1 (
    echo �ѿ�ʼ���ظ���...
    set link=
    for /f "delims=" %%i in (update.txt) do set link=%%i
    powershell -Command "Invoke-WebRequest -Uri '!link!' -OutFile 'update.exe'"
    start update.exe
) else (
    echo �Ѿ������°汾
)

pause
goto main