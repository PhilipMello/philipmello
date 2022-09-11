setlocal enableextensions disabledelayedexpansion

set "search=%NAME-YOU-WANT-TO-REPLACE"
set "replace=%NAME-AFTER-SEARCH"
set "textFile=SOME-FILE.txt"

    for /f "delims=" %%i in ('type "%textFile%" ^& break ^> "%textFile%" ') do (
        set "line=%%i"
        setlocal enabledelayedexpansion
        >>"%textFile%" echo(!line:%search%=%replace%!
        endlocal
    )