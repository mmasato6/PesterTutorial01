$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "FizzBuzz" {
    It "3,5の倍数以外はそのまま" {
        FizzBuzz -Number 1 | Should Be '1'
    }
    It "3の倍数ならFizz"{
        FizzBuzz -Number 3 | Should Be 'Fizz'
    }
    It "5の倍数ならBuzz"{
        FizzBuzz -Number 5 | Should Be 'Buzz'
    }
    It "3と5の倍数ならFizzBuzz"{
        FizzBuzz -Number 15 | Should Be 'FizzBuzz'
    }
}
