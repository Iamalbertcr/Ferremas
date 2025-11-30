<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
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

            /* Imagen de fondo desde tu carpeta img */
            background-image: url('img/LogoFerremax.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        .login-container {
            background: rgba(255,255,255,0.85);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.3);
            text-align: center;
            width: 300px;
        }

        label {
            display: block;
            margin-top: 10px;
            text-align: left;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border-radius: 5px;
            border: 1px solid #aaa;
        }

        button {
            margin-top: 15px;
            width: 100%;
            padding: 10px;
            border: none;
            background: #0066cc;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background: #004f99;
        }

        .error {
            color: red;
            margin-top: 10px;
        }
    </style>
</head>

<body>

<div class="login-container">
    <h2>Login</h2>

    <form method="post" action="LoginServlet">
        <label>Usuario:</label>
        <input type="text" name="usuario" required/>

        <label>Clave:</label>
        <input type="password" name="clave" required/>

        <button type="submit">Entrar</button>
    </form>

    <c:if test="${not empty error}">
        <p class="error">${error}</p>
    </c:if>
</div>

</body>
</html>
