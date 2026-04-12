$ErrorActionPreference = "Stop"

$base = Get-Content -Raw "_base.html"
$footer = Get-Content -Raw "_footer.html"
$modules = Get-ChildItem "modules\*.html" | Sort-Object Name | ForEach-Object {
  Get-Content -Raw $_.FullName
}

$index = @($base) + $modules + @($footer)
Set-Content -Path "index.html" -Value ($index -join [Environment]::NewLine) -Encoding UTF8

Write-Host "Built index.html - open it in your browser."
