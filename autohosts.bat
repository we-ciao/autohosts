echo=1/*>nul&@cls
@echo off
mode con lines=30 cols=60
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit

call :http "https://raw.githubusercontent.com/googlehosts/hosts/master/hosts-files/hosts" %SystemRoot%\System32\drivers\etc\hosts

pause  
goto :eof  

:http
color 2f
echo �̡�    �̡�  �̡̡�      �̡̡̡�  �̡̡̡̡�    �̡̡̡�
echo   ��    ��  ��      ��  ��      ��  ��  ��  ��  ��      ��
echo   ��    ��  ��      ��  ��              ��      ��
echo   �̡̡̡�  ��      ��    �̡�          ��        �̡�
echo   ��    ��  ��      ��        ��        ��            ��
echo   ��    ��  ��      ��          ��      ��              ��
echo   ��    ��  ��      ��  ��      ��      ��      ��      ��
echo �̡�    �̡�  �̡̡�    �̡̡̡�      �̡̡�    �̡̡̡�
echo.----------------------------------------------------------- 
echo.���а�ȫ������ѣ�������
echo.
echo Դ��ַ: "%~1"
echo.
echo Ŀ���ַ: "%~f2"
echo.
echo �������أ����Ժ�...
echo.
cscript -nologo -e:jscript "%~f0" "%~1" "%~2"
echo �ɹ�!
echo.----------------------------------------------------------- 
ipconfig /flushdns

goto :eof  

*/
var iLocal,iRemote,xPost,sGet;
iLocal =WScript.Arguments(1); 
iRemote = WScript.Arguments(0); 
iLocal=iLocal.toLowerCase();
iRemote=iRemote.toLowerCase();
xPost = new ActiveXObject("Microsoft"+String.fromCharCode(0x2e)+"XMLHTTP");
xPost.Open("GET",iRemote,0);
xPost.Send();
sGet = new ActiveXObject("ADODB"+String.fromCharCode(0x2e)+"Stream");
sGet.Mode = 3;
sGet.Type = 1; 
sGet.Open(); 
sGet.Write(xPost.responseBody);
sGet.SaveToFile(iLocal,2); 

/*
by weciao
*/