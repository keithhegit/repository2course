$ErrorActionPreference = "Stop"

$base = Get-Content -Raw -Encoding utf8 "_base.html"
$footer = Get-Content -Raw -Encoding utf8 "_footer.html"
$modules = Get-ChildItem "modules\*.html" | Sort-Object Name | ForEach-Object {
  Get-Content -Raw -Encoding utf8 $_.FullName
}

$index = @($base) + $modules + @($footer)
Set-Content -Path "index.html" -Value ($index -join [Environment]::NewLine) -Encoding utf8

Write-Host "Built index.html - open it in your browser."
