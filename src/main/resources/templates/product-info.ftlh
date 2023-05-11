<!DOCTYPE html>
<html>
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1> <hr>
<h4>Description about product:</h4>
<img src="/images/${project.images.get(0)}" height="60px"/><br> <br>
<img src="/images/${project.images.get(1)?if_exists}" height="60px"/><br> <br>
<img src="/images/${project.images.get(2)?if_exists}" height="60px"/><br> <br>
<b> Product name: </b>${product.title}<br>
<b> Description: </b>${product.description}<br>
<b> Price: </b>${product.price}<br>
<b> City: </b>${product.city}<br>
<b> Firstname: </b>${product.author}<br>
<hr>

<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Delete"/>
</form>

</body>
</html>