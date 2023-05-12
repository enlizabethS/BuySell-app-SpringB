<!DOCTYPE html>
<html lang="en">
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL | <a href="/login">Sign in</a></h1><hr>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Log out"/>
</form>
<h4>List of products that can be purchased:</h4>
<form action="/" method="get">
    Search by product name: <input type="text" name="title"><br>
    <input type="submit" value="Searching" />
</form>
<#list products as product>
<div>
    <p><b>${product.title} <a>  </a> </b> ${product.price} ₽ | <a href="/product/${product.id}">Details</a></p>
</div>
<#else>
<h3>There are no products</h3>
</#list>
<hr>
<h3>Create new product</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Product name: <input type="text" name="title"/><br><br>
    Description: <input type="text" name="description"/><br><br>
    Price: <input type="text" name="price"/><br><br>
    City: <input type="text" name="city"/><br><br>
    Firstname: <input type="text" name="author"/><br><br>
    First image: <input type="file" name="file1" lang="en"/><br><br>
    Second image: <input type="file" name="file2" lang="en"/><br><br>
    Third image: <input type="file" name="file3" lang="en"/><br><br>
    <input type="submit" value="Add product"/>
</form>

</body>
</html>