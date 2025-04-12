const numbers = [-1, 2, -3, 4];

function makeAllPositive(arrayOfNumbers: number[]): number[] {
  return arrayOfNumbers.map(item => Math.abs(item))
}

const resultNumbers = makeAllPositive(numbers);

console.log(resultNumbers)