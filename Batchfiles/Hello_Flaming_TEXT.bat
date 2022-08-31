@for /f %%i in ('^<"%~f0" find/c /v ""') do @(
  for /f "delims=:" %%j in ('findstr/enc:"& :::::" "%~f0"') do @<"%~f0" (
   for /f %%k in ('forfiles /m "%~nx0" /c "cmd /c echo 0x08"') do @(
    for /l %%l in (1 1 %%i) do @(
     set x=& set/p x=&if %%l gtr %%j (
      if not defined x (echo.) else (
       if defined * (echo.) else (set *=*)
       for /f "delims=" %%m in ('cmd/u/v/c echo.!x!^| more^| findstr/n "^"') do @set y=%%m& (
        for /f "delims=" %%n in ('cmd/v/c echo."!y:*:=!"') do @<nul (
         if %%n neq " " (if %%n neq "=" (set/p=%%n) else (set/p=.%%k=)) else (set/p=.%%k %)
         >nul ping -n 1 -w 100 ""
        )
       )
      )
     )
    )
   )
  )
 )
@pause>nul& exit/b& :::::
     

Hello, Flaming_PC!

Here you can place
any large English text.

"="="="="="="="="=