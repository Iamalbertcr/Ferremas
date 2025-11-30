<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: Arial, sans-serif;

            /* Fondo de la imagen */
            background-image: url('img/LogoFerremax.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .login-container {
            background: rgba(255, 255, 255, 0.85); 
            padding: 30px;
            border-radius: 10px;
            text-align: center;
            width: 300px;
            box-shadow: 0 0 10px rgba(0,0,0,0.5);
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

</body>
</html>
