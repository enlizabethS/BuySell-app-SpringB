<!DOCTYPE html>
<html lang="en">
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1> <hr>
<h4>Description about product:</h4>
<#list images as img >
<img src="/images/${img.id}" height="60px" lang="en"/><br> <br>
</#list>
<!--<img src="/images/${project.images.get(1)?if_exists}" height="60px" lang="en"/><br> <br>-->
<!--<img src="/images/${project.images.get(2)?if_exists}" height="60px" lang="en"/><br> <br>-->
<b> Product name: </b>${product.title}<br>
<b> Description: </b>${product.description}<br>
<b> Price: </b>${product.price}<br>
<b> City: </b>${product.city}<br>
<b> Firstname: </b><a href="/user/${product.user.id}"> ${product.user.name}</a><br>


</body>
</html>