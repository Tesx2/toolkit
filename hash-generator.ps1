[System.Reflection.Assembly]::LoadWithPartialName('System.Security.Cryptography') | Out-Null

$password = 'Athena.123'
$salt = 'TOOLBOX_LOGIN_SALT'
$iterations = 150000
$keyLength = 32

$enc = [System.Text.Encoding]::UTF8
$passwordBytes = $enc.GetBytes($password)
$saltBytes = $enc.GetBytes($salt)

$pbkdf2 = New-Object System.Security.Cryptography.Rfc2898DeriveBytes($passwordBytes, $saltBytes, $iterations, 'SHA256')
$derivedKey = $pbkdf2.GetBytes($keyLength)

$hash = ([System.BitConverter]::ToString($derivedKey) -replace '-', '').ToLower()
Write-Host $hash
