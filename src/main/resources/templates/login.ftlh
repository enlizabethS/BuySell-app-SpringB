<!DOCTYPE html>
<html lang="en">
<head>
    <title>SHOP</title>
<!--    <link rel="stylesheet" href="style.css" type=src/main/resources/static/css/style.css/>-->
</head>
<body style="background: rgb(185,163,55);
background: linear-gradient(90deg, rgba(185,163,55,1) 37%, rgba(203,175,35,1) 59%, rgba(225,198,21,1) 79%);
height:600px;">
<h1 style="color: white; background-color:#6f6223; font-size: 50px;
 padding: 40px; margin:0px; display: flex; justify-content:space-between;">ProductShop</h1> <hr>
<div class="container-login" style="
color: white;
width:1250px;
height:600px;
margin:0px;">
     <div class="login" style="padding: 25px; margin: 80px 200px 200px 350px; font-size: 35px; border: 4px double #574d20; background-color:#6f6223; text-align: center; ">
<h4>Authorization</h4>
<form action="/login" method="post">
    E-mail : <input type="email" name="username"><br><br>
    Password : <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input style="border:none; background-color:#a89e16; color: white; font-size: 25px; padding:15px; border-radius: 10px" type="submit" value="Sign in"/>
</form>
<a href="/registration" style="color:white; padding: 14px; font-size: 25px;"> Register </a>
     </div>
</div>
</body>
</html>