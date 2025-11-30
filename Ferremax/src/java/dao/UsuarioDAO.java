package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import dao.Conexion;
public class UsuarioDAO {

    public boolean validar(String usuario, String clave){
        String sql = "SELECT * FROM usuarios WHERE usuario=? AND clave=?";

        try (Connection con = Conexion.getConexion();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, usuario);
            ps.setString(2, clave);

            ResultSet rs = ps.executeQuery();
            return rs.next(); // si existe el usuario

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}

