<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
        <link rel="stylesheet" href="style.css">


    <style>
        

        .login-container {
            background: #ffffff;
            padding: 30px;
            margin-right: auto;
            border-radius: 0px;
            text-align: center;
            width: var(--login-width);
            height: -webkit-fill-available;
            box-shadow: 0 0 10px rgba(0,0,0,0.5);
            position: relative;
            z-index: 1;
        }

        input, button {
            width: 90%;
            padding: 10px;
            margin-top: 10px;
            font-size: 15px;
        }

        button {
            cursor: pointer;
        }
    </style>

</head>
<body>

<div class="login-container">
    <h2>Login</h2>

    <form action="LoginServlet" method="post">
        <input type="text" name="usuario" placeholder="Usuario" required><br>
        <input type="password" name="clave" placeholder="Clave" required><br>
        <button type="submit">Entrar</button>
    </form>

    <% if (request.getAttribute("error") != null) { %>
        <p style="color:red"><%= request.getAttribute("error") %></p>
    <% } %>

</div>
<div id="imgb"></div>
<img class=image src="img/.jpg" alt="">

</div>

</body>
</html>
