echo=1/*>nul&@cls
@echo off
mode con lines=25 cols=60
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
call :http "https://raw.githubusercontent.com/googlehosts/hosts/master/hosts-files/hosts" %SystemRoot%\System32\drivers\etc\hosts
pause
goto :eof
:http
color 2f
ping -n 1 -w 500 1.1.1.1>nul 
echo √√    √√  √√√      √√√√  √√√√√    √√√√
echo   √    √  √      √  √      √  √  √  √  √      √
echo   √    √  √      √  √              √      √
echo   √√√√  √      √    √√          √        √√
echo   √    √  √      √        √        √            √
echo   √    √  √      √          √      √              √
echo   √    √  √      √  √      √      √      √      √
echo √√    √√  √√√    √√√√      √√√    √√√√
echo -----------------------------------------------------------
echo.
ping -n 1 -w 500 1.1.1.1>nul 
echo.如果安全软件提醒或需要管理员权限请允许
echo.
echo.本工具不产生hosts,只做hosts的搬运工
echo.hosts文件来源于 @googlehosts 版权所有
echo.
ping -n 1 -w 2000 1.1.1.1>nul 
echo.目标地址: "%~f2"
echo.
echo.正在下载，请稍后...
echo.
cscript -nologo -e:jscript "%~f0" "%~1" "%~2"


echo.成功!
echo.----------------------------------------------------------- 
ipconfig /flushdns
echo.----------------------------------------------------------- 
echo by weciao
goto :eof  

*/
var iLocal,iRemote,xPost,sGet;iLocal =WScript.Arguments(1); iRemote = WScript.Arguments(0); iLocal=iLocal.toLowerCase();iRemote=iRemote.toLowerCase();xPost = new ActiveXObject("Microsoft"+String.fromCharCode(0x2e)+"XMLHTTP");xPost.Open("GET",iRemote,0);xPost.Send();sGet = new ActiveXObject("ADODB"+String.fromCharCode(0x2e)+"Stream");sGet.Mode = 3;sGet.Type = 1; sGet.Open(); sGet.Write(xPost.responseBody);sGet.SaveToFile(iLocal,2);
