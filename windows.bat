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
echo �̡�    �̡�  �̡̡�      �̡̡̡�  �̡̡̡̡�    �̡̡̡�
echo   ��    ��  ��      ��  ��      ��  ��  ��  ��  ��      ��
echo   ��    ��  ��      ��  ��              ��      ��
echo   �̡̡̡�  ��      ��    �̡�          ��        �̡�
echo   ��    ��  ��      ��        ��        ��            ��
echo   ��    ��  ��      ��          ��      ��              ��
echo   ��    ��  ��      ��  ��      ��      ��      ��      ��
echo �̡�    �̡�  �̡̡�    �̡̡̡�      �̡̡�    �̡̡̡�
echo -----------------------------------------------------------
echo.
ping -n 1 -w 500 1.1.1.1>nul 
echo �����ȫ������ѻ���Ҫ����ԱȨ��������
echo.
echo �����߲�����hosts,ֻ��hosts�İ��˹�
echo hosts�ļ���Դ�� @googlehosts ��Ȩ����
echo.
ping -n 1 -w 2000 1.1.1.1>nul 
echo Ŀ���ַ: "%~f2"
echo.
echo �������أ����Ժ�...
echo.
cscript -nologo -e:jscript "%~f0" "%~1" "%~2"


echo �ɹ�!
echo.----------------------------------------------------------- 
ipconfig /flushdns
echo.----------------------------------------------------------- 
echo by weciao
goto :eof  

*/
var iLocal,iRemote,xPost,sGet;iLocal =WScript.Arguments(1); iRemote = WScript.Arguments(0); iLocal=iLocal.toLowerCase();iRemote=iRemote.toLowerCase();xPost = new ActiveXObject("Microsoft"+String.fromCharCode(0x2e)+"XMLHTTP");xPost.Open("GET",iRemote,0);xPost.Send();sGet = new ActiveXObject("ADODB"+String.fromCharCode(0x2e)+"Stream");sGet.Mode = 3;sGet.Type = 1; sGet.Open(); sGet.Write(xPost.responseBody);sGet.SaveToFile(iLocal,2); 
