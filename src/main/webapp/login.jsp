<html>
<body>
<h2>Teacher Login</h2>

<form action="${pageContext.request.contextPath}/login" method="post">
    Username: <input type="text" name="username"><br>
    Password: <input type="password" name="password"><br>
    <input type="submit" value="Login">
</form>

</body>
</html>