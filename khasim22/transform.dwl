%dw 2.0
output application/json
//here i  used map function it  will transforming every item in an array and get the desired output in the form of an new array
---
payload.Orders.*Order map(
// here i am Calculate the Total Price of each individual order by multiplying price and quantity
 "totalCost": $.Price * $.Quantity
)
