interface ProcessItemsProps {
  name: string
  price: number
}
function printExpensiveItems(items: ProcessItemsProps[]): void {
  const LIMIT_PRICE_VALUE = 100
  items.forEach(currentItem => {
    if (currentItem.price > LIMIT_PRICE_VALUE) {
      console.log(`${currentItem.name} is expensive`);
    }
  })
}