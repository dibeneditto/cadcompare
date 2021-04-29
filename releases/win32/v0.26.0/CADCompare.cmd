@echo off
cls
setlocal enableextensions
setlocal enabledelayedexpansion


rem ------------------------------------------------------------
rem TITLE: cadcompare.cmd
rem AUTHOR: Lukas W. DiBeneditto
rem CREATED: 2017-04-01
rem DESCRIPTION: Compares two PDF files for differences.
rem KEYWORDS: CADCompare, cad, compare, pdf, differences, diff
rem MODIFIED: 2017-05-11
rem PUBLISHER: Lukas W. DiBeneditto
rem COPYRIGHT: Lukas W. DiBeneditto, Rustin D. Webster, Purdue
rem     University, Purdue Polytechnic New Albany
rem ------------------------------------------------------------

rem ------------------------------------------------------------
rem set variables
rem ------------------------------------------------------------
rem echo DEBUG: START set variables

rem name of program
set me=CADCompare
set version=0.26.0

rem dirParent has trailing slash
set dirParent=%~dp0

rem directories no trailing slash
set dirRequired=required
set dirSource=teacherkey
set dirTarget=studentpdfs
set dirResult=results

rem exe
set exeCompare=%dirRequired%\compare.exe
set exeConvert=%dirRequired%\convert.exe

rem options
set optCompare=-highlight-color black -compose src-over
rem set optConvert=

rem dynamic
set fileCount=
set c=

set s=
set fileSourceFull=
set fileSourceName=
set fileSourceExt=

set t=
set fileTargetFull=
set fileTargetName=
set fileTargetExt=

set fileResultFull=

rem echo DEBUG: STOP set variables


rem ------------------------------------------------------------
rem check variable settings
rem ------------------------------------------------------------
rem echo DEBUG: START check variable settings

rem echo DEBUG: me=%me%
rem echo DEBUG: version=%version%

rem echo DEBUG: dirParent=%dirParent%

rem echo DEBUG: dirRequired=%dirRequired%
rem echo DEBUG: dirSource=%dirSource%
rem echo DEBUG: dirTarget=%dirTarget%
rem echo DEBUG: dirResult=%dirResult%

rem echo DEBUG: exeCompare=%exeCompare%
rem echo DEBUG: exeConvert=%exeConvert%

rem echo DEBUG: optCompare=%optCompare%
rem echo DEBUG: optConvert=%optConvert%

rem echo DEBUG: fileCount=%fileCount%
rem echo DEBUG: c=%c%

rem echo DEBUG: s=%s%
rem echo DEBUG: fileSourceFull=%fileSourceFull%
rem echo DEBUG: fileSourceName=%fileSourceName%
rem echo DEBUG: fileSourceExt=%fileSourceExt%

rem echo DEBUG: t=%t%
rem echo DEBUG: fileTargetFull=%fileTargetFull%
rem echo DEBUG: fileTargetName=%fileTargetName%
rem echo DEBUG: fileTargetExt=%fileTargetExt%

rem echo DEBUG: fileResultFull=%fileResultFull%

rem echo DEBUG: STOP check variable settings


rem ------------------------------------------------------------
rem preamble
rem ------------------------------------------------------------
rem echo DEBUG: START preamble

echo.
echo %me% Version %version%
echo Copyright (C) 2017 Lukas W. DiBeneditto, Rustin D. Webster, Purdue 
echo Univesity, Purdue Polytechnic New Albany
echo.

rem echo DEBUG: STOP preamble


rem ------------------------------------------------------------
rem get the source pdf file
rem ------------------------------------------------------------
rem echo DEBUG: START get the source pdf file

rem count the number of pdf files in dirSource
rem echo DEBUG: dirSource=%dirSource%
echo Checking folder "%dirSource%" that there is only one PDF file.
set /a fileCount=0
rem echo DEBUG: fileCount=%fileCount%
rem echo DEBUG: dirParentdirSource\*.pdf="%dirParent%%dirSource%\*.pdf"
for %%c in ("%dirParent%%dirSource%\*.pdf") do set /a fileCount+=1
rem echo DEBUG: dirSource has %fileCount% file(s).

rem check for at least one file in dirSource
rem echo DEBUG: fileCount=%fileCount%
if /i "%fileCount%" equ "0" (
  echo.
  rem echo DEBUG: dirSource=%dirSource%
  echo ERROR: No SOURCE PDF file in folder "%dirSource%".
  echo   Please add at least one SOURCE PDF file.
  goto error
)

rem check for more than one file in dirSource
rem echo DEBUG: fileCount=%fileCount%
if /i "%fileCount%" gtr "1" (
  echo.
  rem echo DEBUG: dirSource=%dirSource%
  echo ERROR: More than one SOURCE PDF file in folder "%dirSource%".
  echo   Please delete all other SOURCE PDF files except for one.
  goto error
)

rem get first pdf file in dirSource
rem echo DEBUG: fileSourceFull=%fileSourceFull%
rem echo DEBUG: fileSourceName=%fileSourceName%
rem echo DEBUG: fileSourceExt=%fileSourceExt%
rem echo DEBUG: dirParentdirSource\*.pdf="%dirParent%%dirSource%\*.pdf"
for %%s in ("%dirParent%%dirSource%\*.pdf") do (

  rem file name and extension only
  rem example: source1.pdf
  set fileSourceFull=%%~nxs
  rem echo DEBUG: fileSourceFull=!fileSourceFull!

  rem file name only
  rem example: source1
  set fileSourceName=%%~ns
  rem echo DEBUG: fileSourceName=!fileSourceName!

  rem file extension only
  rem example: .pdf
  set fileSourceExt=%%~xs
  rem echo DEBUG: fileSourceExt=!fileSourceExt!

  echo SOURCE folder "%dirSource%" file is "!fileSourceFull!".
  echo.
  rem This is needed to just get the first file
  goto fileSourceBreak
)
:fileSourceBreak
rem echo DEBUG: fileSourceFull=%fileSourceFull%
rem echo DEBUG: fileSourceName=%fileSourceName%
rem echo DEBUG: fileSourceExt=%fileSourceExt%

rem echo DEBUG: STOP get the source pdf file


rem ------------------------------------------------------------
rem compare and convert
rem ------------------------------------------------------------
rem echo DEBUG: START compare and convert

rem count the number of pdf files in dirSource
rem echo DEBUG: fileCount=%fileCount%
set /a fileCount=0
rem echo DEBUG: fileCount=%fileCount%
rem echo DEBUG: dirParentdirTarget\*.pdf="%dirParent%%dirTarget%\*.pdf"
for %%c in ("%dirParent%%dirTarget%\*.pdf") do set /a fileCount+=1
rem echo DEBUG: dirTarget has %fileCount% file(s).
echo TARGET folder "%dirTarget%" has %fileCount% files(s).

rem check for at least one file in dirTarget
if /i "%fileCount%" equ "0" (
  echo.
  echo ERROR: No TARGET file in folder "%dirTarget%".
  echo   Please add at least one TARGET PDF file.
  goto error
)

rem compare fileSource to dirTarget output dirResult
rem convert dirResult to dirResult with filename 

rem compare.exe -highlight-color black -compose src-over "test1.pdf" 
rem   "test2.pdf" "test4-diff.pdf"
rem convert "test4-diff.pdf" -append label:"test4-diff" -gravity north 
rem   -compose over -composite "test4-diff.pdf"

rem compare.exe [options ...] image reconstruct difference
rem convert.exe [options ...] file [ [options ...] file ...] 
rem   [options ...] file

rem echo DEBUG: dirParentdirTarget\*.pdf="%dirParent%%dirTarget%\*.pdf"
for %%t in ("%dirParent%%dirTarget%\*.pdf") do (

  rem file name and extension only
  rem example: target1.pdf
  set fileTargetFull=%%~nxt
  rem echo DEBUG: fileTargetFull=!fileTargetFull!

  rem file name only
  rem example: target1
  set fileTargetName=%%~nt
  rem echo DEBUG: fileTargetName=!fileTargetName!

  rem file extension only
  rem example: .pdf
  set fileTargetExt=%%~xt
  rem echo DEBUG: fileTargetExt=!fileTargetExt!

  rem create difference file name
  rem example: target1-diff.pdf
  set fileResultFull=!fileTargetName!-diff!fileTargetExt!
  rem echo DEBUG: fileResultFull=!fileResultFull!

  echo Comparing file "!fileTargetFull!".
  rem echo DEBUG: COMPARE COMMAND LINE
  rem echo DEBUG: dirParent=%dirParent%
  rem echo DEBUG: exeCompare=%exeCompare%
  rem echo DEBUG: optCompare=%optCompare%
  rem echo DEBUG: dirSource\fileSourceFull="%dirSource%\%fileSourceFull%"
  rem echo DEBUG: dirTarget\fileTargetFull="%dirTarget%\!fileTargetFull!"
  rem echo DEBUG: dirResult\fileResultFull="%dirResult%\!fileResultFull!"
  %dirParent%%exeCompare% %optCompare% ^
    "%dirParent%%dirSource%\%fileSourceFull%" ^
    "%dirParent%%dirTarget%\!fileTargetFull!" ^
    "%dirParent%%dirResult%\!fileResultFull!"

  echo Creating file "!fileResultFull!".
  rem echo DEBUG: CONVERT COMMAND LINE
  rem echo DEBUG: dirParent=%dirParent%
  rem echo DEBUG: exeConvert=%exeConvert%
  rem echo DEBUG: dirResult\fileResultFull="%dirResult%\!fileResultFull!"
  rem echo DEBUG: -append label:"
  rem echo DEBUG: fileSourceFull=%fileSourceFull%
  rem echo DEBUG: and
  rem echo DEBUG: fileTargetName=!fileTargetName!
  rem echo DEBUG: differences"
  rem echo DEBUG: -gravity north -compose over 
  rem echo DEBUG: -composite
  rem echo DEBUG: dirResult\fileResultFull="%dirResult%\!fileResultFull!"
  %dirParent%%exeConvert% "%dirParent%%dirResult%\!fileResultFull!" ^
    -append label:"%fileSourceFull% and !fileTargetFull! differences" ^
    -gravity north -compose over ^
    -composite "%dirParent%%dirResult%\!fileResultFull!"

)

echo.
echo Finished. Please see "%dirResult%" folder.

rem echo DEBUG: STOP compare and convert
rem skip over error
goto end


:error
rem ------------------------------------------------------------
rem end
rem ------------------------------------------------------------
rem echo DEBUG: START error

echo %me% exited without comparing files.
echo.

rem echo DEBUG: STOP error


:end
rem ------------------------------------------------------------
rem end
rem ------------------------------------------------------------
rem echo DEBUG: START end

endlocal
pause
echo.

rem echo DEBUG: STOP end
exit /b

