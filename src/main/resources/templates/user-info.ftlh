<!DOCTYPE html>
<html lang="en">
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1> <hr>
<h3>Detailed information about the user</h3>
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

</body>
</html>