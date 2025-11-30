<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    HttpSession sesion = request.getSession(false);
    if (sesion == null || sesion.getAttribute("usuario") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
    String usuario = (String) sesion.getAttribute("usuario");
%>
<!DOCTYPE html><html><head><title>Principal</title></head><body>
<h2>Bienvenido, <%= usuario %></h2>
<ul>
  <li><a href="ProductoServlet?accion=listar">Productos</a></li>
  <li><a href="ClienteServlet?accion=listar">Clientes</a></li>
  <li><a href="ExportarProductosExcelServlet">Exportar Productos (Excel)</a></li>
  <li><a href="ExportarProductosPDFServlet">Exportar Productos (PDF)</a></li>
  <li><a href="LogoutServlet">Cerrar sesión</a></li>
</ul>
</body></html>
