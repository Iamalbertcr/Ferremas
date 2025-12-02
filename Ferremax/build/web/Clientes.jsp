<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, modelo.Cliente" %>
<%
    List<Cliente> lista = (List<Cliente>) request.getAttribute("lista");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Clientes</title>
    <style>
        body { font-family: Arial; background: #f0f0f0; padding: 20px; }
        table { width: 100%; border-collapse: collapse; background: white; }
        th, td { padding: 10px; border: 1px solid #ddd; text-align: center; }
        th { background: #0056b3; color: white; }
        a.btn {
            padding: 8px 12px; 
            background: #007bff; 
            color: white; 
            text-decoration: none; 
            border-radius: 6px;
        }
        a.btn-danger { background: red; }
        a.btn-add { background: green; margin-bottom: 15px; display: inline-block; }
    </style>
</head>
<body>

<h2>Listado de Clientes</h2>

<a class="btn btn-add" href="ClienteServlet?accion=nuevo">+ Agregar Cliente</a>

<table>
    <tr>
        <th>ID</th><th>Nombre</th><th>Cédula</th><th>Correo</th><th>Acciones</th>
    </tr>

    <% if(lista != null) { 
        for(Cliente c : lista) { %>

            <tr>
                <td><%= c.getId() %></td>
                <td><%= c.getNombre() %></td>
                <td><%= c.getCedula() %></td>
                <td><%= c.getCorreo() %></td>
                <td>
                    <a class="btn" href="ClienteServlet?accion=editar&id=<%=c.getId()%>">Editar</a>
                    <a class="btn btn-danger" href="ClienteServlet?accion=eliminar&id=<%=c.getId()%>">Eliminar</a>
                </td>
            </tr>

    <% }} %>

</table>

<br>
<a href="panel.jsp">⬅ Volver al Panel</a>

</body>
</html>
