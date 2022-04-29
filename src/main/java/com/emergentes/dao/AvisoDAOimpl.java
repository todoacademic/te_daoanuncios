package com.emergentes.dao;

import com.emergentes.modelo.Aviso;
import com.emergentes.utiles.ConexionBD;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class AvisoDAOimpl extends ConexionBD implements AvisoDAO{

    @Override
    public void insert(Aviso aviso) throws Exception {
        String sql = "insert into avisos (titulo,contenido) values (?,?)";
        this.conectar();
        PreparedStatement ps = this.conn.prepareStatement(sql);
        ps.setString(1, aviso.getTitulo());
        ps.setString(2, aviso.getContenido());
        ps.executeUpdate();
        this.desconectar();
    }

    @Override
    public void update(Aviso aviso) throws Exception {
        String sql = "update avisos set titulo=?, contenido=? where id=?";
        this.conectar();
        PreparedStatement ps = this.conn.prepareStatement(sql);
        ps.setString(1,aviso.getTitulo());
        ps.setString(2,aviso.getContenido());
        ps.setInt(3, aviso.getId());
        ps.executeUpdate();
        this.desconectar();
    }

    @Override
    public void delete(int id) throws Exception {
        String sql = "delete from avisos where id=?";
        this.conectar();
        PreparedStatement ps = this.conn.prepareStatement(sql);
        ps.setInt(1, id);
        ps.executeUpdate();
        this.desconectar();
    }

    @Override
    public List<Aviso> getAll() throws Exception {
        List<Aviso> lista = null;
        String sql = "select * from avisos";
        this.conectar();
        PreparedStatement ps = this.conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        
        lista = new ArrayList<Aviso>();
        while(rs.next()){
            Aviso avi = new Aviso();
            
            avi.setId(rs.getInt("id"));
            avi.setTitulo(rs.getString("titulo"));
            avi.setContenido(rs.getString("contenido"));
            
            lista.add(avi);
        }
        this.desconectar();
        return lista;
    }

    @Override
    public Aviso getById(int id) throws Exception {
        Aviso avi = new Aviso();
        try {
            String sql = "select * from avisos where id=?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                avi.setId(rs.getInt("id"));
                avi.setTitulo(rs.getString("titulo"));
                avi.setContenido(rs.getString("contenido"));
            }
        } catch (SQLException e) {
            throw e;
        } finally{
            this.desconectar();
        }
        return avi;
    }
    
}
