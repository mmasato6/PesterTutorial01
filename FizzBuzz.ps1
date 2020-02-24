function FizzBuzz([int]$number) {
    if ($number % 15 -eq 0) {
        return 'FizzBuzz'
    } elseif (($number % 3) -eq 0) {
        return 'Fizz'    
    } elseif (($number % 5 -eq 0)) {
        return 'Buzz'
    } else {
        return $number    
    }
    
    
}
