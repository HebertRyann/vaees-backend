const PRICE_VALUE_LIMIT_CONSIDERED_EXPENSIVE = 100

interface ProcessItemsProps {
  name: string;
  price: number;
}


function printExpensiveItems(items: ProcessItemsProps[]): void {
  items.forEach(currentItem => {
    if (currentItem.price > PRICE_VALUE_LIMIT_CONSIDERED_EXPENSIVE) {
      console.log(`${currentItem.name} is expensive`);
    }
  })
}