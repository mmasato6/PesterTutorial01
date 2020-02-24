function FizzBuzz([int]$number) {
    if ($number % 15 -eq 0) {
        return 'FizzBuzz'
    } 
    if (($number % 3) -eq 0) {
        return 'Fizz'    
    } 
    if (($number % 5 -eq 0)) {
        return 'Buzz'
    } 
    return $number    
}
