const data = [
  { id: 1, name: 'Alice' },
  { id: 2, name: 'Bob' }
];

function extractValues<Data, Key extends keyof Data>(data: Data[], key: Key): Data[Key][] {
  return data.map(item => item[key])
}

const result = extractValues(data, 'name');

console.log(result)