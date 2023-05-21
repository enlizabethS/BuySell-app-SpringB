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
<h3 >Editing a user ${user.name}</h3>
<form action="/admin/user/edit" method="post">
    <#list roles as role>
    <div>
        <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
    </div>
    </#list>
<input type="hidden" value="${user.id}" name="userId">
<input type="hidden" name="_csrf" value="${_csrf.token}">
<button style="border:none; background-color:#a89e16; color: white; font-size: 25px; padding:15px; border-radius: 10px" type="submit">Save</button>
</form>
    </div>
</div>
</body>
</html>