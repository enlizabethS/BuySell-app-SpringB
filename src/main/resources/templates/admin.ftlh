<!DOCTYPE html>
<html lang="en">
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1> <hr>
<h4>Admin panel</h4>
<table>
    <tr>
        <th>Email</th>
        <th>Phone number</th>
        <th>Active</th>
        <th>Role</th>
        <th>Ban</th>
        <th>Editing</th>
        <th>Details</th>
    </tr>
    <#list users as user>
    <tr>
        <th>${user.email}</th>
        <th>${user.phoneNumber}</th>
        <th>${user.active}</th>
        <th><#list user.roles as role><${role}<#sep>, </#list></th>
        <th>
            <form action="/admin/user/ban/${user.id}">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" value="BAN">
        </form>
        </th>
        <th><a href="/admin/user/edit/${user.id}"> Editing</a></th>
        <th><a href="/user/${user.id}"> Details</a></th>

    </tr>
    <#else>
    <h3>There is no user</h3>
    </#list>
</table>

</body>
</html>