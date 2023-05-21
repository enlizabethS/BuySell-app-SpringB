<!DOCTYPE html>
<html lang="en">
<head>
    <title>SHOP</title>
</head>
<body style="background: rgb(185,163,55);
background: linear-gradient(90deg, rgba(185,163,55,1) 37%, rgba(203,175,35,1) 59%, rgba(225,198,21,1) 79%);
height:600px;">
<div class="container-authoriz" style="
color: white;
margin:0px;
">
<h1 class="header" style="color: white; background-color:#6f6223; font-size: 50px;
 padding: 20px; margin:0px;display: flex; flex-direction: row; justify-content:space-around; align-items: center; align-self: center; flex-basis: 120px;  position:relative;"> ProductShop
    <div class="header" style="display: flex; flex-direction: row; justify-content:space-around; align-items: center; align-self: center;  position:relative; padding: 10px;" >
    <a class="header" style=" margin:0 35px 0 0 ; border:none; background-color:#a89e16; color: white; font-size: 17px; padding:10px; border-radius: 7px; width: 80.5px; height: 47px; width:55%; height:55%; text-align:center;" href="/login">Sign in</a>
    <#if user.email??>
    <h3 class="header" style=" margin:0 35px 0 0 ; color:white; padding: 5px; font-size: 25px; ">Name: <i style=" margin:0 25px 0 0 ;"> ${user.name}</i></h3>
    <form class="header" action="/logout" method="post">
        <input class="header" type="hidden" name="_csrf" value="${_csrf.token}">
        <input class="header" style=" margin:0 35px 0 0 ;border:none; background-color:#a89e16;text-align:center; color: white; font-size: 15px; padding:15px; border-radius: 7px; width: 80.5px; height: 47px; text-align:center; width:75%; height:75%;" type="submit" value="Log out"/>
    </form>
    <#if user.isAdmin()>
    <a class="header" style="margin:0 35px 0 0 ; border:none; background-color:#a89e16; color: white; text-align:center; font-size: 15px; padding:10px; border-radius: 7px; width: 80.5px; height: 47px;text-align:center; width:55%; height:55%;" href="/admin">Admin Panel</a>
</#if>
</#if>
</div>
</h1>
    <hr>
<!--<#if user.email??>-->
<!--<h3 class="header" style="color:white; padding: 5px; ">Name: <i>${user.name}</i></h3>-->
<!--<form class="header" action="/logout" method="post">-->
<!--    <input class="header" type="hidden" name="_csrf" value="${_csrf.token}">-->
<!--    <input class="header" style="border:none; background-color:#a89e16; color: white; font-size: 15px; padding:15px; border-radius: 10px" type="submit" value="Log out"/>-->
<!--</form>-->
<!--<#if user.isAdmin()>-->
<!--  <a class="header" style="border:none; background-color:#a89e16; color: white; font-size: 15px; padding:15px; border-radius: 10px" href="/admin">Admin Panel</a>-->
<!--</#if>-->
<!--</#if>-->
</div>

<div class="container-product" style="
color: white;
width:1250px;
height:700px;
margin:10px;
padding:10px;
font-size:20px;">
<h4 style="font-size: 30px;color: #473f1c;">List of products that can be purchased:</h4>
<form style="padding: 5px;" action="/" method="get">
    Search by product name: <input style="padding: 7px;" type="text" name="title"><br><br>
    <input style=" border:none; background-color:#6f6223; color: white; font-size: 20px; padding:15px; border-radius: 10px" type="submit" value="Searching" />
</form>
<#list products as product>
<div>
    <p><b style="color: #473f1c; padding: 5px;">${product.title} <a> --> <a>  </b>   ${product.price} ₽ | <a style="color:white;" href="/product/${product.id}">Details</a></p>
</div>
<#else>
<h3>There are no products</h3>
</#list>
<#if user.email??>
<hr>
<h3 style=" padding: 5px; font-size:35px; color:#473f1c;" >Create new product</h3>
<form style=" padding: 7px; font-size: 25px;" action="/product/create" method="post" enctype="multipart/form-data">
    Product name: <input type="text" name="title"/><br><br>
    Description:  <input type="text" name="description"/><br><br>
    Price:        <input type="text" name="price"/><br><br>
    City:         <input type="text" name="city"/><br><br>
    Firstname:    <input type="text" name="author"/><br><br>
    First image:  <input type="file" name="file1" lang="en"/><br><br>
    Second image: <input type="file" name="file2" lang="en"/><br><br>
    Third image:  <input type="file" name="file3" lang="en"/><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}"> <br>
    <input style=" border:none; background-color:#6f6223; color: white; font-size: 20px; padding:15px; border-radius: 10px" type="submit" value="Add product"/>
    <br><br>
</form>
</#if>
</div>
</body>
</html>