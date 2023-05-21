<!DOCTYPE html>
<html lang="en">
<head>
    <title>SHOP</title>
</head>
<body style="background: rgb(185,163,55);
background: linear-gradient(90deg, rgba(185,163,55,1) 37%, rgba(203,175,35,1) 59%, rgba(225,198,21,1) 79%);
height:600px;">
<h1 style="color: white; background-color:#6f6223; font-size: 50px;
 padding: 40px; margin:0px; display: flex; justify-content:space-between;">ProductShop</h1> <hr>
<div class="container-reg" style="
color: white;
width:1250px;
height:650px;
margin:0px;">
    <div class="registration" style="padding: 25px; margin: 80px 200px 200px 350px; font-size: 30px; border: 4px double #574d20; background-color:#6f6223; text-align: center; ">
<h4>Registration</h4>

<form action="/registration" method="post">
    User name : <input type="text" name="name"/><br><br>
    E-mail : <input type="email" name="email"/><br><br>
    Phone number : <input type="text" name="phoneNumber"/><br><br>
    Password : <input type="password" name="password"/><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input style="border:none; background-color:#a89e16; color: white; font-size: 25px; padding:15px; border-radius: 10px" type="submit" value="Register"/>
</form>
<#if errorMessage??>
<h2 style="color: red">${errorMessage}</h2>
</#if>
    </div>
</div>
</body>
</html>