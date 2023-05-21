<!DOCTYPE html>
<html lang="en">
<head>
    <title>SHOP</title>
</head>
<body style="background: rgb(185,163,55);
background: linear-gradient(90deg, rgba(185,163,55,1) 37%, rgba(203,175,35,1) 59%, rgba(225,198,21,1) 79%);
width:1250px;
height:650px;">
<div class="container-user-edit" style="
color: white;

margin:0px;">
    <h1 class="header" style="color: white; background-color:#6f6223; font-size: 50px;
 padding: 20px; margin:0px; display: flex; justify-content:space-between;
   position:relative; "> ProductShop</h1> <hr>
    <div class="user-edit" style="padding: 70px; margin: 80px 200px 200px 200px; font-size:15px;
    border: 4px double #574d20; background-color:#6f6223;">
<h4 style="text-align:center; font-size:30px">Admin panel</h4>
<table border="1">
    <tr>
        <th>Email</th>
        <th>Phone number</th>
        <th>Active</th>
        <th>Role</th>
        <th>Ban</th>
        <th>Delete</th>
        <th>Editing</th>
        <th>Details</th>
    </tr>
    <#list users as user>
    <tr>
        <th>${user.email}</th>
        <th>${user.phoneNumber}</th>
        <th><#if user.active>true <#else>false</#if></th>
        <th><#list user.roles as role>${role}</#list></th>
        <th>
            <form action="/admin/user/ban/${user.id}" method="post">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input style="border:none; background-color:#a89e16; color: white; font-size: 15px; padding:10px; border-radius: 10px" type="submit" value="BAN">
            </form>
        </th>
        <th>
            <form action="/admin/user/delete/${user.id}" method="post">
                <input type="hidden" name="_csrf" value="${_csrf.token}">
                <input style="border:none; background-color:#a89e16; color: white; font-size: 15px; padding:10px; border-radius: 10px" type="submit" value="Delete">
            </form>
        </th>
        <th><a style="border:none; background-color:#a89e16; color: white; font-size: 15px; padding:10px; border-radius: 10px" href="/admin/user/edit/${user.id}"> Editing</a></th>
        <th><a style="border:none; background-color:#a89e16; color: white; font-size: 15px; padding:10px; border-radius: 10px" href="/user/${user.id}"> Details</a></th>

    </tr>
    <#else>
    <h3>There is no user</h3>
    </#list>
</table>
    </div>
</div>
</body>
</html>