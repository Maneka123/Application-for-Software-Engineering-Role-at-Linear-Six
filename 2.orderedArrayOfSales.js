console.log("Input array :");
const sales=[
	{amount:15000, quantity:5},
	{amount:56000, quantity:2},
	{amount:30000, quantity:9},
	{amount:54000, quantity:3},
	{amount:8700, quantity:10}

];
console.log(sales);
const clonedArray = sales.slice();
console.log("Cloned array");
console.log(clonedArray);
for (let i = 0; i < sales.length; i++) {
  clonedArray[i].total = sales[i].amount * sales[i].quantity;
}
console.log("Array with total:");
console.log(sales);

sales.sort((a, b) => a.total - b.total);//order by total

console.log("Ordered array of sales:");
console.log(sales);