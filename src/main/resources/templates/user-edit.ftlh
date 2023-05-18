<!DOCTYPE html>
<html lang="en">
<head>
    <title>BUYSELL</title>
</head>
<body>
<h1>BUYSELL</h1> <hr>
<h3>Editing a user ${user.name}</h3>
<form action="/admin/user/edit" method="post">
    <#list roles as role>
    <div>
        <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")}>${role}</label>
    </div>
    </#list>
<input type="hidden" value="${user.id}" name="userId">
<input type="hidden" name="_csrf" value="${_csrf.token}">
<button type="submit">Save</button>
</form>
</body>
</html>