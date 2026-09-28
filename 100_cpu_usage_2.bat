echo.       %f%%w%                      ██╗      ███████╗   ███████╗ ████████╗  ██████╗  ██████╗  ███████╗
echo.       %f%%w%                      ██║      ██╔════╝   ██╔════╝ ╚══██╔══╝ ██╔═══██╗ ██╔══██╗ ██╔════╝
echo.       %f%%w%                      ██║      ███████╗   ████████    ██║    ██║   ██║ ██████╔╝ █████╗
echo.       %f%%w%                      ██║      ╚════██║   ╚════██║    ██║    ██║   ██║ ██╔══██╗ ██╔══╝
echo.       %f%%w%                      ███████╗ ███████║   ███████║    ██║    ╚██████╔╝ ██║  ██║ ███████╗
echo.       %f%%w%                      ╚══════╝ ╚══════╝   ╚══════╝    ╚═╝     ╚═════╝  ╚═╝  ╚═╝ ╚══════╝
PowerCfg /SETACVALUEINDEX SCHEME_CURRENT SUB_PROCESSOR IDLEDISABLE 000
PowerCfg /SETACTIVE SCHEME_CURRENT
pause
echo off 
echo. check cpu usage