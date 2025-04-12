const DIVISOR_NUMBER = 2
const MULTIPLY_NUMBER = 2
const EVEN_DIVISION_REMAINDER = 0;


function doubleEvenNumbers(numbers: number[]): number[] {
  return numbers
    .filter((number) => number % DIVISOR_NUMBER === EVEN_DIVISION_REMAINDER)
    .map((number) => number * MULTIPLY_NUMBER);
}