package servlet;
import dao.ProductoDAO;
import modelo.Producto;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

public class ProductoServlet extends HttpServlet {
    private ProductoDAO dao = new ProductoDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        String accion = req.getParameter("accion");
        if(accion==null) accion="listar";
        switch(accion){
            case "listar":
                List<Producto> lista = dao.listar();
                req.setAttribute("lista", lista);
                req.getRequestDispatcher("productos.jsp").forward(req,resp);
                break;
            case "obtener":
                int id = Integer.parseInt(req.getParameter("id"));
                Producto p = dao.obtenerPorId(id);
                req.setAttribute("producto", p);
                req.setAttribute("lista", dao.listar());
                req.getRequestDispatcher("productos.jsp").forward(req,resp);
                break;
            case "eliminar":
                dao.eliminar(Integer.parseInt(req.getParameter("id")));
                resp.sendRedirect("ProductoServlet?accion=listar");
                break;
            default:
                resp.sendRedirect("ProductoServlet?accion=listar");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
        throws ServletException, IOException {
        String accion = req.getParameter("accion");
        if("agregar".equals(accion)){
            Producto p = new Producto();
            p.setNombre(req.getParameter("nombre"));
            p.setPrecio(Double.parseDouble(req.getParameter("precio")));
            p.setCantidad(Integer.parseInt(req.getParameter("cantidad")));
            dao.agregar(p);
            resp.sendRedirect("ProductoServlet?accion=listar");
        } else if("actualizar".equals(accion)){
            Producto p = new Producto();
            p.setId(Integer.parseInt(req.getParameter("id")));
            p.setNombre(req.getParameter("nombre"));
            p.setPrecio(Double.parseDouble(req.getParameter("precio")));
            p.setCantidad(Integer.parseInt(req.getParameter("cantidad")));
            dao.actualizar(p);
            resp.sendRedirect("ProductoServlet?accion=listar");
        }
    }
}
