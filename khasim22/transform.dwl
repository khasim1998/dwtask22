%dw 2.0
output application/json
//here i am used map function to map the Total Price of each individual order 
---
payload.Orders.*Order map(
// here i am Calculate the Total Price of each individual order by multiplying price and quantity
 "totalCost": $.Price * $.Quantity
)
