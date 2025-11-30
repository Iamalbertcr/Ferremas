<%@ page import="java.util.*, modelo.Producto" %>
<%
    HttpSession sesion = request.getSession(false);
    if (sesion == null || sesion.getAttribute("usuario") == null) { response.sendRedirect("login.jsp"); return; }
    List<Producto> lista = (List<Producto>) request.getAttribute("lista");
    if(lista==null) lista = new java.util.ArrayList<>();
    Producto producto = (Producto) request.getAttribute("producto");
    if(producto==null) producto = new Producto();
%>
<!DOCTYPE html><html><head><title>Productos</title></head><body>
<h2>Productos</h2>

<form action="ProductoServlet" method="post">
    <input type="hidden" name="id" value="<%= producto.getId() %>"/>
    Nombre: <input type="text" name="nombre" value="<%= producto.getNombre()==null?"":producto.getNombre() %>" required/>
    Precio: <input type="number" step="0.01" name="precio" value="<%= producto.getPrecio() %>" required/>
    Cantidad: <input type="number" name="cantidad" value="<%= producto.getCantidad() %>" required/>
    <% if(producto.getId()>0) { %>
        <button name="accion" value="actualizar">Actualizar</button>
    <% } else { %>
        <button name="accion" value="agregar">Agregar</button>
    <% } %>
</form>

<table border="1">
<tr><th>ID</th><th>Nombre</th><th>Precio</th><th>Cantidad</th><th>Acciones</th></tr>
<% for(Producto p : lista) { %>
<tr>
  <td><%=p.getId()%></td>
  <td><%=p.getNombre()%></td>
  <td><%=p.getPrecio()%></td>
  <td><%=p.getCantidad()%></td>
  <td>
    <a href="ProductoServlet?accion=obtener&id=<%=p.getId()%>">Seleccionar</a> |
    <a href="ProductoServlet?accion=eliminar&id=<%=p.getId()%>" onclick="return confirm('Eliminar?')">Eliminar</a>
  </td>
</tr>
<% } %>
</table>

<p><a href="index.jsp">Volver</a></p>
</body></html>
