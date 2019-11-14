
@echo off


::获取日期 将文件格式设置为：2019_11_14.txt
	set datevar=%date:~0,4%_%date:~5,2%_%date:~8,2%
	set filevar=D:\Code\BAT\Log\%datevar%.txt

::获取时间中的小时 将格式设置为：24小时制
	set timevar=%time:~0,2%
	if %timevar% LSS 10 (
		set timevar=0%time:~1,1%
	)
	
if %taskOn%==1 ( 
	set taskOn=0
	echo %taskvar% End At: %timevar%:%time:~3,5% >> %filevar%
) else (
	set taskOn=1
	::输入任务名称
	set /p taskvar=Task:
	echo %taskvar% Begin at: %timevar%:%time:~3,5% >> %filevar%
)

pause
