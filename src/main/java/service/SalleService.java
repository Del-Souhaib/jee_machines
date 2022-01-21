package service;

import beans.Machine;
import beans.Salle;

import connexion.Connexion;
import dao.IDao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class SalleService implements IDao<Salle> {

    @Override
    public boolean create(Salle o) {
        String sql = "insert into `salles`(`code`, `type`) values ( ?, ?)";
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
            ps.setString(1, o.getCode());
            ps.setString(2, o.getType());
            if (ps.executeUpdate() == 1) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("create : erreur sql : " + e.getMessage());

        }
        return false;
    }

    @Override
    public boolean delete(Salle o) {
        String sql = "delete from salles where id  = ?";
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
            ps.setInt(1, o.getId());
            if (ps.executeUpdate() == 1) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("delete : erreur sql : " + e.getMessage());

        }
        return false;
    }

    @Override
    public boolean update(Salle o) {

        String sql = "update salles set code  = ? ,type = ?  where id  = ?";
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
            ps.setString(1, o.getCode());
            ps.setString(2, o.getType());
            ps.setInt(3, o.getId());

            if (ps.executeUpdate() == 1) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("update : erreur sql : " + e.getMessage());

        }
        return false;
    }

    @Override
    public Salle findById(int id) {
        Machine m = null;
        String sql = "select * from salles where id  = ?";
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new Salle(rs.getInt("id"), rs.getString("code"), rs.getString("type"),rs.getDate("created_at"));
            }

        } catch (SQLException e) {
            System.out.println("findById " + e.getMessage());
        }
        return null;
    }

    @Override
    public List<Salle> findAll() {
        List<Salle> salles = new ArrayList<Salle>();

        String sql = "select * from salles";
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);;
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                salles.add(new Salle(rs.getInt("id"), rs.getString("code"), rs.getString("type"),rs.getDate("created_at")));
            }

        } catch (SQLException e) {
            System.out.println("findAll " + e.getMessage());
        }
        return salles;
    }

    public List<Salle> findFilitred(Salle salle,Boolean created_at) {
        List<Salle> salles = new ArrayList<Salle>();
        String sql;
        if(created_at==true){
             sql= "select * from salles where code like ? and type like ? and created_at like ? ";
        }
        else{
             sql= "select * from salles where code like ? and type like ?  ";
        }

        if(salle.getId()!=0){
             sql += " and id = ? ";
        }
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
            if(salle.getId()!=0){
                ps.setInt(4,salle.getId());
            }

            ps.setString(1, ("%"+salle.getCode()+"%"));
            ps.setString(2, ("%"+ salle.getType()+"%"));
            if(created_at){
                ps.setDate(3, (new Date(salle.getCreated_at().getTime())));
            }

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                salles.add(new Salle(rs.getInt("id"), rs.getString("code"), rs.getString("type"),rs.getDate("created_at")));
            }

        } catch (SQLException e) {
            System.out.println("findAll " + e.getMessage());
        }
        return salles;
    }


}
