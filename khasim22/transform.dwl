%dw 2.0
output application/json
---
payload.Orders.*Order map(
 "totalCost": $.Price * $.Quantity
)


// here i am Calculate the Total Price of each individual order