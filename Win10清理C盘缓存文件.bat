@echo off      
REM ֹͣWindows Search����    
sc config WSearch start= disabled  
echo WSearch�����ѽ��á�  
sc stop WSearch  
echo WSearch������ֹͣ�� 
echo ��ȴ�30��
 
timeout /t 10 /nobreak >nul  

REM ɾ��Windows.edb�ļ�      
takeown /F "C:\ProgramData\Microsoft\Search\Data\Applications\Windows\Windows.edb"    
del "C:\ProgramData\Microsoft\Search\Data\Applications\Windows\Windows.edb"    
echo �ļ���ɾ���� 

echo ��ȴ�������
timeout /t 180 /nobreak >nul  

echo ������������Windows Search����  
REM ��������Windows Search����      
sc config WSearch start=auto    
sc start WSearch    
echo ���������á�    
echo ��������ɡ�      
pause