::The program saves the names of all files on disks "D,E,F,G" using ::the tree command to the listings "tree_{drive number}.txt"
::ver.1.0
::=================================================================================================

D:
attrib %USERPROFILE%\Documents\tree\tree_D.txt -R
tree /f /a > %USERPROFILE%\Documents\tree\tree_D.txt
attrib %USERPROFILE%\Documents\tree\tree_D.txt +R

E:
attrib %USERPROFILE%\Documents\tree\tree_E.txt -R
tree /f /a > %USERPROFILE%\Documents\tree\tree_E.txt
attrib %USERPROFILE%\Documents\tree\tree_E.txt +R

F:
attrib %USERPROFILE%\Documents\tree\tree_F.txt -R
tree /f /a > %USERPROFILE%\Documents\tree\tree_F.txt
attrib %USERPROFILE%\Documents\tree\tree_F.txt +R

G:
attrib %USERPROFILE%\Documents\tree\tree_G.txt -R
tree /f /a > %USERPROFILE%\Documents\tree\tree_G.txt
attrib %USERPROFILE%\Documents\tree\tree_G.txt +R

::=================================================================================================
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"

set "fullstamp=%YYYY%-%MM%-%DD%_%HH%-%Min%-%Sec%"
::=================================================================================================

attrib %USERPROFILE%\Documents\tree\log.txt -R
echo All sucesfully created at: > %USERPROFILE%\Documents\tree\log.txt
echo %fullstamp% >> %USERPROFILE%\Documents\tree\log.txt
attrib %USERPROFILE%\Documents\tree\log.txt +R

pause
