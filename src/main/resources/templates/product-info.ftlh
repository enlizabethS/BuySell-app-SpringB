<!DOCTYPE html>
<html lang="en">
<head>
    <title>SHOP</title>
</head>
<body style="background: rgb(185,163,55);
background: linear-gradient(90deg, rgba(185,163,55,1) 37%, rgba(203,175,35,1) 59%, rgba(225,198,21,1) 79%);
height:600px;">
<div class="container-user-edit" style="
color: white;
width:1250px;
height:650px;
margin:0px;">
<h1 class="header" style="color: white; background-color:#6f6223; font-size: 50px;
 padding: 20px; margin:0px;display: flex; flex-direction: row;
 justify-content:space-around; align-items: center; align-self: center;
 flex-basis: 120px;  position:relative;"> ProductShop</h1> <hr>
    <div class="user-edit" style="padding: 25px; margin: 80px 200px 200px 350px; font-size: 30px;
    border: 4px double #574d20; background-color:#6f6223; text-align: center; ">
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
</div>
</div>
</body>
</html>