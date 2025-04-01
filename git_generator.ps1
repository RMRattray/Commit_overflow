# Develop commit message from random verb, adjective, and noun
$verb = @("Refactored", "Extended", "Merged", "Added", "Debugged", "Fixed") | Get-Random
$adjective  = @("frontend", "backend", "main", "auxiliary", "user", "hidden") | Get-Random
$noun  = @("unit tests", "interface", "loop", "multithreading", "file access", "authentication") | Get-Random
$commit_msg = $verb + " " + $adjective + " " + $noun

# Generate a random string
$length = Get-Random -Minimum 6 -Maximum 18
$chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
$randomString = -join ((Get-Random -Count $length -InputObject $chars.ToCharArray())) + "`n"

# Append the random string to a file
Add-Content -Path "RandomStrings.txt" -Value $randomString

git add RandomStrings.txt 
git commit -m $commit_msg

# https://open.spotify.com/track/7uWFUpGuEfmxYeymkV95jn?si=5bf8dbe3b08043f8
