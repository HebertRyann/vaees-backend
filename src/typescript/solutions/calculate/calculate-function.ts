type HandleOperationFunction = (first_number: number, second_number: number) => number | Error
type HandleOperationKey = 'add' | 'multiply' | 'subtract' | 'divide'

const HANDLE_OPERATION: { [operation in HandleOperationKey]: HandleOperationFunction } = {
  add: (first_number, second_number) => {
    return first_number + second_number
  },
  multiply: (first_number, second_number) => {
    return first_number * second_number
  },
  subtract: (first_number, second_number) => {
    return first_number - second_number
  },
  divide: (first_number, second_number) => {
    if(second_number === 0) {
      throw new Error('Division by zero')
    }
    return first_number / second_number
  },
}

export function calculate(operation: HandleOperationKey, first_number: number, second_number: number) {
  const handleCalculate = HANDLE_OPERATION[operation]
  if(!handleCalculate) {
    throw new Error(`Unsupported operation: ${operation}`)
  }
  return handleCalculate(first_number, second_number)
}

