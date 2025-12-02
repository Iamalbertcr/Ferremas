<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, modelo.Producto" %>
<%
    List<Producto> lista = (List<Producto>) request.getAttribute("lista");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Productos</title>
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

<h2>Listado de Productos</h2>

<a class="btn btn-add" href="ProductoServlet?accion=nuevo">+ Agregar Producto</a>

<table>
    <tr>
        <th>ID</th><th>Nombre</th><th>Precio</th><th>Cantidad</th><th>Acciones</th>
    </tr>

    <% if(lista != null) { 
        for(Producto p : lista) { %>

            <tr>
                <td><%= p.getId() %></td>
                <td><%= p.getNombre() %></td>
                <td>₡<%= p.getPrecio() %></td>
                <td><%= p.getCantidad() %></td>
                <td>
                    <a class="btn" href="ProductoServlet?accion=editar&id=<%=p.getId()%>">Editar</a>
                    <a class="btn btn-danger" href="ProductoServlet?accion=eliminar&id=<%=p.getId()%>">Eliminar</a>
                </td>
            </tr>

    <% }} %>

</table>

<br>
<a href="panel.jsp">⬅ Volver al Panel</a>

</body>
</html>
