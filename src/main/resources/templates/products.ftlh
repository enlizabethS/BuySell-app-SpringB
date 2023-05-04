<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1> <hr>
<h4>List of products that can be purchased:</h4>
<#list products as product>
<div>
    <p><b>${product.title} <a>  </a> </b> ${product.price} ₽ | <a href="/product/${product.id}">Details</a></p>
</div>
</#list>
<hr>
<h3>Create new product</h3>
<form action="/product/create" method="post">
    Product name: <input type="text" name="title"/><br><br>
    Description: <input type="text" name="description"/><br><br>
    Price: <input type="text" name="price"/><br><br>
    City: <input type="text" name="city"/><br><br>
    Firstname: <input type="text" name="author"/><br><br>
    <input type="submit" value="Add product"/>
</form>

</body>
</html>