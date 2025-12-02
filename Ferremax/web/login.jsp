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
            min-width: 350px;
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
  align-items: center;
  background-color: #0A66C2;
  border: 0;
  border-radius: 100px;
  box-sizing: border-box;
  color: #ffffff;
  cursor: pointer;
  display: inline-flex;
  font-family: -apple-system, system-ui, system-ui, "Segoe UI", Roboto, "Helvetica Neue", "Fira Sans", Ubuntu, Oxygen, "Oxygen Sans", Cantarell, "Droid Sans", "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Lucida Grande", Helvetica, Arial, sans-serif;
  font-size: 16px;
  font-weight: 600;
  justify-content: center;
  line-height: 20px;
  max-width: 480px;
  min-height: 40px;
  min-width: 0px;
  overflow: hidden;
  padding: 0px;
  padding-left: 20px;
  padding-right: 20px;
  text-align: center;
  touch-action: manipulation;
  transition: background-color 0.167s cubic-bezier(0.4, 0, 0.2, 1) 0s, box-shadow 0.167s cubic-bezier(0.4, 0, 0.2, 1) 0s, color 0.167s cubic-bezier(0.4, 0, 0.2, 1) 0s;
  user-select: none;
  -webkit-user-select: none;
  vertical-align: middle;
}

.button:hover,
.button:focus { 
  background-color: #16437E;
  color: #ffffff;
}

.button:active {
  background: #09223b;
  color: rgb(255, 255, 255, .7);
}

.button:disabled { 
  cursor: not-allowed;
  background: rgba(0, 0, 0, .08);
  color: rgba(0, 0, 0, .3);

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
    <div class="img-container" ></div>


</div>

</body>
</html>
