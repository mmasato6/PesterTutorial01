$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "FizzBuzz" {
    It "3,5の約数以外はそのまま" {
        FizzBuzz -Number 1 | Should Be '1'
    }
}
