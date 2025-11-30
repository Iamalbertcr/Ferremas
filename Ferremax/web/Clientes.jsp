<%-- 
    Document   : Clientes
    Created on : 29 nov 2025, 6:36:29?p. m.
    Author     : hidal
--%>

<%@ page import="java.util.*, modelo.Cliente" %>
<%
    List<Cliente> lista = (List<Cliente>) request.getAttribute("lista");
    Cliente cliente = (Cliente) request.getAttribute("cliente");
    if (cliente == null) cliente = new Cliente();
%>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"/><title>Clientes</title></head>
<body>

<h2>Clientes</h2>

<a href="ExportarClientesExcelServlet">Exportar Excel</a> |
<a href="ExportarClientesPDFServlet">Exportar PDF</a>

<form action="ClienteServlet" method="post">
    <input type="hidden" name="id" value="<%= cliente.getId() %>"/>
    Nombre: <input type="text" name="nombre" value="<%= cliente.getNombre() == null ? "" : cliente.getNombre() %>" required/><br/>
    Cédula: <input type="text" name="cedula" value="<%= cliente.getCedula() == null ? "" : cliente.getCedula() %>" /><br/>
    Correo: <input type="email" name="correo" value="<%= cliente.getCorreo() == null ? "" : cliente.getCorreo() %>" /><br/>
    <% if (cliente.getId() > 0) { %>
        <button name="accion" value="actualizar">Actualizar</button>
    <% } else { %>
        <button name="accion" value="agregar">Agregar</button>
    <% } %>
</form>

<h3>Lista de Clientes</h3>
<table border="1">
  <tr><th>ID</th><th>Nombre</th><th>Cedula</th><th>Correo</th><th>Acciones</th></tr>
  <% for (Cliente c : lista) { %>
    <tr>
      <td><%= c.getId() %></td>
      <td><%= c.getNombre() %></td>
      <td><%= c.getCedula() %></td>
      <td><%= c.getCorreo() %></td>
      <td>
        <a href="ClienteServlet?accion=obtener&id=<%= c.getId() %>">Seleccionar</a>
        |
        <a href="ClienteServlet?accion=eliminar&id=<%= c.getId() %>" 
           onclick="return confirm('Eliminar cliente?');">Eliminar</a>
      </td>
    </tr>
  <% } %>
</table>

<p><a href="index.html">Volver</a></p>
</body>
</html>
