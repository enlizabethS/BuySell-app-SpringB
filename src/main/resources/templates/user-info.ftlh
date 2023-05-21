<!DOCTYPE html>
<html lang="en">
<head>
    <title>BUYSELL</title>
</head>
<body style="background: rgb(185,163,55);
background: linear-gradient(90deg, rgba(185,163,55,1) 37%, rgba(203,175,35,1) 59%, rgba(225,198,21,1) 79%);
height:600px;">
<h1 style="color: white; background-color:#6f6223; font-size: 50px;
 padding: 40px; margin:0px; display: flex; justify-content:space-between;">ProductShop</h1> <hr>
<div class="container-u-info" style="
color: white;
width:1250px;
height:600px;
margin:0px;">
    <div class="u-info" style="padding: 25px; margin: 80px 200px 200px 350px; font-size: 35px; border: 4px double #574d20; background-color:#6f6223; text-align: center; ">
<h3 style="font-size: 30px;color: #473f1c;">Detailed information about the user</h3>
<b>User name: </b>${user.name}<br>
<b>Email: </b>${user.email}<br>
<b>User phone number: </b>${user.phoneNumber}<br>
<hr>
<h4>User products: ${user.name}</h4>
<#list products as product>
<div>
    <p><b>${product.title} <a>  </a> </b> ${product.price} ₽ | <a href="/product/${product.id}">Details</a></p>
</div>
<#else>
<h3>There are no products</h3>
</#list>
</div>
</div>
</body>
</html>