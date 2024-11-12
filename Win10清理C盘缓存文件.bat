@echo off      
REM 停止Windows Search服务    
sc config WSearch start= disabled  
echo WSearch服务已禁用。  
sc stop WSearch  
echo WSearch服务已停止。 
echo 请等待30秒
 
timeout /t 10 /nobreak >nul  

REM 删除Windows.edb文件      
takeown /F "C:\ProgramData\Microsoft\Search\Data\Applications\Windows\Windows.edb"    
del "C:\ProgramData\Microsoft\Search\Data\Applications\Windows\Windows.edb"    
echo 文件已删除。 

echo 请等待三分钟
timeout /t 180 /nobreak >nul  

echo 正在重新启用Windows Search服务  
REM 重新启用Windows Search服务      
sc config WSearch start=auto    
sc start WSearch    
echo 服务已启用。    
echo 操作已完成。      
pause