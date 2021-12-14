[CmdletBinding()]
param()

$scriptRoot = $PSScriptRoot

$projFilePath = Join-Path -Path $scriptRoot -ChildPath "SmallsOnline.Dotnet.Templates.csproj"
$pkgOutPath = Join-Path -Path $scriptRoot -ChildPath "_build"

if (Test-Path -Path $pkgOutPath) {
    Remove-Item -Path $pkgOutPath -Recurse -Force
}
$null = New-Item -Path $pkgOutPath -ItemType "Directory"

dotnet pack --configuration "Release" --output $pkgOutPath $projFilePath