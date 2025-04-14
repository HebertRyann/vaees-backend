const LIMIT_ONE_HUNDRED_PRICE_VALUE = 100
const EIGHTY_PERCENT_IN_DECIMAL = 0.8
const NINETY_PERCENT_IN_DECIMAL = 0.9

function calculatePremiumDiscount(price: number): number {
  if (price > LIMIT_ONE_HUNDRED_PRICE_VALUE) {
    return price * EIGHTY_PERCENT_IN_DECIMAL;
  }
  return price * NINETY_PERCENT_IN_DECIMAL;
}
function calculateNonPremiumDiscount(price: number): number {
  if (price > LIMIT_ONE_HUNDRED_PRICE_VALUE) {
    return price * NINETY_PERCENT_IN_DECIMAL;
  }
  return price;
}
function calculateDiscount(price: number, isPremium: boolean): number {
  if (isPremium) {
    return calculatePremiumDiscount(price)
  }
  return calculateNonPremiumDiscount(price)
}

const calculateDiscountResult = calculateDiscount(150, true)
console.log(calculateDiscountResult)