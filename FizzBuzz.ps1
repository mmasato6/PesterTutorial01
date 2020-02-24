function FizzBuzz([int]$number) {
    if (($number % 3) -eq 0) {
        return 'Fizz'    
    } elseif (($number % 5 -eq 0)) {
        return 'Buzz'
    } else {
        return $number    
    }
    
    
}
