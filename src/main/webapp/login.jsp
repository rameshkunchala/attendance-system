<html>
<body>
<h2>Teacher Login</h2>
<form action="${pageContext.request.contextPath}/login" method="post">
    Username: <input type="text" name="username"><br><br>
    Password: <input type="password" name="password"><br><br>
    <input type="submit" value="Login">
</form>
</body>
</html>