package service;

import beans.Machine;
import beans.Salle;
import beans.User;
import connexion.Connexion;
import dao.IDao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserService implements IDao<User> {

    @Override
    public boolean create(User o) {
        String sql = "insert users salles values (null, ?, ?)";
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
            ps.setString(1, o.getNom());
            ps.setString(2, o.getEmail());
            ps.setString(2, o.getPassword());

            if (ps.executeUpdate() == 1) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("create : erreur sql : " + e.getMessage());

        }
        return false;
    }

    @Override
    public boolean delete(User o) {
        String sql = "delete from users where id  = ?";
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
    public boolean update(User o) {

        String sql = "update users set name  = ? ,email = ? ,password=? where id  = ?";
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
            ps.setString(1, o.getNom());
            ps.setString(2, o.getEmail());
            ps.setString(2, o.getPassword());
            ps.setInt(2, o.getId());

            if (ps.executeUpdate() == 1) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("update : erreur sql : " + e.getMessage());

        }
        return false;
    }

    public boolean update2(User o, boolean change_pass) {
        String sql;
        if (change_pass) {
            sql = "update users set name  = ? ,email = ? ,password=? where id  = ?";
        } else {
            sql = "update users set name  = ? ,email = ?  where id  = ?";
        }
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
            ps.setString(1, o.getNom());
            ps.setString(2, o.getEmail());
            if (change_pass) {
                ps.setString(3, o.getPassword());
                ps.setInt(4, o.getId());
            } else {
                ps.setInt(3, o.getId());
            }
            if (ps.executeUpdate() == 1) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("update : erreur sql : " + e.getMessage());

        }
        return false;
    }

    @Override
    public User findById(int id) {
        String sql = "select * from users where id  = ?";
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new User(rs.getInt("id"), rs.getString("name")
                        , rs.getString("email"), rs.getString("password"));
            }

        } catch (SQLException e) {
            System.out.println("findById " + e.getMessage());
        }
        return null;
    }

    public User findByEmail_Password(String email, String password) {
        String sql = "select * from users where email  = ? and password =? limit 1";
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return new User(rs.getInt("id"), rs.getString("name")
                        , rs.getString("email"), rs.getString("password"));
            } else {
                return null;
            }

        } catch (SQLException e) {
            System.out.println("findById " + e.getMessage());
        }
        return null;
    }

    @Override
    public List<User> findAll() {
        List<User> users = new ArrayList<User>();

        String sql = "select * from users";
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                users.add(new User(rs.getInt("id"), rs.getString("name")
                        , rs.getString("email"), rs.getString("password")));
            }

        } catch (SQLException e) {
            System.out.println("findAll " + e.getMessage());
        }
        return users;
    }


    public int count() {
        String sql = "select count(*) as user_total from users ";
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getInt("user_total");
            }

        } catch (SQLException e) {
            System.out.println("findAll " + e.getMessage());
        }
        return 0;
    }
}
