$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "SampleFunc" {
    It "1を与えたら2が返る" {
        SampleFunc 1 | Should Be 2
    }
    It "2を与えたら4が返る" {
        SampleFunc 2 | Should Be 4
    }
    It "0を与えたら0が返る" {
        SampleFunc 0 | Should Be 0
    }
}
