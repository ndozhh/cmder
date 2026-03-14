;= @echo off
;= rem Call DOSKEY and use this file as the macrofile
;= %SystemRoot%\system32\doskey /listsize=1000 /macrofile=%0%
;= rem In batch mode, jump to the end of the file
;= goto:eof
;= Add aliases below here
e.=explorer .
pwd=cd
clear=cls
unalias=alias /d $1
vi=vim $*
cmderr=cd /d "%CMDER_ROOT%"
pwsh=%SystemRoot%/System32/WindowsPowerShell/v1.0/powershell.exe -ExecutionPolicy Bypass -NoLogo -NoProfile -NoExit -Command "Invoke-Expression '. ''%CMDER_ROOT%/vendor/profile.ps1'''"

save_terminal=cp %TERMINAL_SETTINGS% $1
load_terminal=cp $1 %TERMINAL_SETTINGS%  


..=cd ..
...=cd ../..
....=cd ../../..

gs=git status
ga=git add $*
gc=git commit $*
gps=git push $*
gpl=git pull $*
gl=git log --oneline --decorate $*
gch=git checkout $*
gb=git branch $*
gd=git diff $*
gf=git fetch $*
grs=git restore $*
gr=git rebase $*

reload=call %CMDER_ROOT%\vendor\init.bat

cl=clear

exp=explorer .

ports=netstat -an
cc=claude --dangerously-skip-permissions  

nrd=npm run dev
nrp=npm run preview
nrb=npm run build
nrt=npm run test
