Set-Variable TOP   ' __________'  -option constant
Set-Variable EYES  '(--[ .]-[ .]' -option constant
Set-Variable FATTY '(       O  )' -option constant
Set-Variable SLIM  '(_______O__)' -option constant
Set-Variable FAT   '(          )' -option constant
Set-Variable CHIN  '(__________)' -option constant

[int]$chins = 0

if ($args.length -gt 0) { $chins = $args[0]; }

if ($chins -lt 0) {
    Write-Error "Can't have a negachin"
    return
}

Write-Host $TOP
Write-Host $EYES

# -----------------
# SLIM GOON
#
if ($chins -eq 0) {
    Write-Host $SLIM
    return
}

# -----------------
# FAT GOON!
#
Write-Host $FATTY

while($chins--) { Write-Host $FAT }

Write-Host $CHIN