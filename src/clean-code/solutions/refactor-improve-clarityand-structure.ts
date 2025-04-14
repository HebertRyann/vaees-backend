const DIVISOR_NUMBER = 2
const MULTIPLY_NUMBER = 2
const EVEN_DIVISION_REMAINDER = 0;


function doubleEvenNumbers(numbers: number[]): number[] {
  return numbers
    .filter((number) => number % DIVISOR_NUMBER === EVEN_DIVISION_REMAINDER)
    .map((number) => number * MULTIPLY_NUMBER);
}


const doubleEvenNumbersResult = doubleEvenNumbers([1,2,3,4,5,6,7,8,9,10])
console.log(doubleEvenNumbersResult)