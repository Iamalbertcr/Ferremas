<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession(false);
    if(sesion==null || sesion.getAttribute("usuario")==null){
        response.sendRedirect("login.jsp"); 
        return;
    }
    String usuario = (String) sesion.getAttribute("usuario");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Panel</title>

    <style>

        /* ===============================
                FONDO COMPLETO
        =============================== */
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Segoe UI', sans-serif;

            background-image: url('img/LogoFerremax.jpg');
            background-size: cover;
            background-position: center;
        }

        /* ===============================
                 CONTENEDOR PANEL
        =============================== */
        .panel {
            background: rgba(255, 255, 255, 0.12);
            padding: 40px;
            border-radius: 20px;
            width: 450px;
            backdrop-filter: blur(12px);
            box-shadow: 0 0 25px rgba(0,0,0,0.4);
            text-align: center;
            color: white;
        }

        .panel h2 {
            margin: 0 0 30px;
            font-size: 26px;
            font-weight: 600;
            color: white;
        }

        /* ===============================
                    GRID DE BOTONES
        =============================== */
        .menu-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            grid-gap: 18px;
            margin-top: 15px;
        }

        .menu-grid a {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 18px;
            background: rgba(0, 123, 255, 0.35);
            border-radius: 12px;
            text-decoration: none;
            color: white;
            font-size: 16px;
            font-weight: 500;
            transition: 0.25s ease;
            border: 1px solid rgba(255,255,255,0.25);
        }

        .menu-grid a:hover {
            background: rgba(0, 123, 255, 0.7);
            transform: translateY(-3px);
        }

        /* Botón de cierre de sesión */
        .logout-btn {
            margin-top: 25px;
            padding: 15px;
            display: block;
            background: rgba(255, 0, 0, 0.45);
            border-radius: 12px;
            text-decoration: none;
            color: white;
            font-size: 17px;
            transition: 0.25s ease;
            border: 1px solid rgba(255,255,255,0.25);
        }

        .logout-btn:hover {
            background: rgba(255, 0, 0, 0.75);
            transform: translateY(-3px);
        }
    </style>

</head>
<body>

<div class="panel">
    <h2>Bienvenido Ferremax</h2>

    <div class="menu-grid">
        <a href="ProductoServlet?accion=listar">📦 Productos</a>
        <a href="ClienteServlet?accion=listar">👥 Clientes</a>
        <a href="ExportarProductosExcelServlet">📊 Exportar Excel</a>
        <a href="ExportarProductosPDFServlet">📄 Exportar PDF</a>
    </div>

    <a class="logout-btn" href="LogoutServlet">⛔ Cerrar sesión</a>
</div>

</body>
</html>
