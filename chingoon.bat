@echo off
set n=%1
echo  __________
echo (--[ .]-[ .]
if %n% equ 0 echo (_______O__) && goto ret
echo (       O  )
:chins
if %n% leq 1 goto end
echo (          )
set /a n=%n%-1
goto chins
:end
echo (__________)
:ret
