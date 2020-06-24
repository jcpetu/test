<#
    To avoid showing errors -ErrorAction SilentlyContinue
#>

#dir $PSScriptRoot
#make directory 
#md $PSScriptRoot\test -ErrorAction SilentlyContinue

#attrib -R $PSScriptRoot\FileBasic.ps1

<# cheack file attributes
$file = Get-Item $PSScriptRoot\FileBasic.ps1
if ($file.IsReadOnly -eq $true)  
{  
  $file.IsReadOnly = $false   
}  
#>

Remove-Item -Path $PSScriptRoot\borrar.ps1 -ErrorAction SilentlyContinue

$origen = $PSScriptRoot+"\2017-03-18 Bicicletas.docx"
$destino = $PSScriptRoot+"\test\2017-03-18 Bicicletas.docx"
Copy-Item -Path $origen -Destination $destino -Force -Verbose 
