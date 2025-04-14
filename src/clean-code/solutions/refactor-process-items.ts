const PRICE_VALUE_LIMIT_CONSIDERED_EXPENSIVE = 100

interface ProcessItemsProps {
  name: string;
  price: number;
}


function printExpensiveItems(items: ProcessItemsProps[]): void {
  items
  .filter(filterItem => filterItem.price > PRICE_VALUE_LIMIT_CONSIDERED_EXPENSIVE)
  .forEach(currentItem => {
    console.log(`${currentItem.name} is expensive`);
  })
}

printExpensiveItems([
  {
    name: 'Television',
    price: 150
  },
  {
    name: 'Notebook',
    price: 100
  },
  {
    name: 'Smartphone',
    price: 100
  },
  {
    name: 'Computer monitor',
    price: 200
  }
])