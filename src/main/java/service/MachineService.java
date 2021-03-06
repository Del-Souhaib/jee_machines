package service;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.Machine;
import beans.Salle;
import connexion.Connexion;
import dao.IDao;

public class MachineService implements IDao<Machine> {

    @Override
    public boolean create(Machine o) {
        String sql = "insert into  `machines`(`salle_id`, `reference`, `marque`, `date_achat`, `prix`) values ( ?,?, ?, ?, ?)";
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
            ps.setInt(1, o.getSalle().getId());
            ps.setString(2, o.getReference());
            ps.setString(3, o.getMarque());
            ps.setDate(4, new Date(o.getDateAchat().getTime()));
            ps.setDouble(5, o.getPrix());
            if (ps.executeUpdate() == 1) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("create : erreur sql : " + e.getMessage());
        }
        return false;
    }

    @Override
    public boolean delete(Machine o) {
        String sql = "delete from machines where id  = ?";
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
    public boolean update(Machine o) {

        String sql = "update machines set reference  = ? ,date_achat = ? , prix = ? ,marque=?,salle_id=? where id  = ?";
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
            ps.setString(1, o.getReference());
            ps.setDate(2, new Date(o.getDateAchat().getTime()));
            ps.setDouble(3, o.getPrix());
            ps.setString(4, o.getMarque());
            ps.setInt(5, o.getSalle().getId());
            ps.setInt(6, o.getId());
            if (ps.executeUpdate() == 1) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println("update : erreur sql : " + e.getMessage());

        }
        return false;
    }

    @Override
    public Machine findById(int id) {
        Machine m = null;
        String sql = "select * from machines where id  = ? limit 1";
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            SalleService ss = new SalleService();
            if (rs.next()) {
                Salle salle = ss.findById(rs.getInt("salle_id"));
                return new Machine(rs.getInt("id"), rs.getString("reference"), rs.getDate("date_achat"),
                        rs.getDouble("prix"), salle, rs.getString("marque"), rs.getDate("created_at"));
            }

        } catch (SQLException e) {
            System.out.println("findById " + e.getMessage());
        }
        return null;
    }

    @Override
    public List<Machine> findAll() {
        List<Machine> machines = new ArrayList<Machine>();

        String sql = "select * from machines m inner join salles s on s.id=m.salle_id";
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
            ;
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Salle salle = new Salle(rs.getInt("s.id"), rs.getString("s.code"), rs.getString("s.type"));
                machines.add(new Machine(rs.getInt("m.id"), rs.getString("m.reference"), rs.getDate("m.date_achat"),
                        rs.getDouble("m.prix"), salle, rs.getString("m.marque"), rs.getDate("created_at")));
            }

        } catch (SQLException e) {
            System.out.println("findAll " + e.getMessage());
        }
        return machines;
    }

    public List<Machine> findMachineByReference(String ref) {
        List<Machine> machines = new ArrayList<Machine>();

        String sql = "select * from machines where reference =  ?";
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
            ;
            ps.setString(1, ref);
            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                machines.add(new Machine(rs.getInt("id"), rs.getString("reference"), rs.getDate("dateAchat"),
//                        rs.getDouble("prix")));
//            }

        } catch (SQLException e) {
            System.out.println("findAll " + e.getMessage());
        }
        return machines;
    }

    public List<String> findReference() {
        List<String> references = new ArrayList<String>();
        String sql = "select distinct(reference) as ref from machines";
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);
            ;
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                references.add(rs.getString("ref"));
            }
        } catch (SQLException e) {
            System.out.println("findReference " + e.getMessage());
        }
        return references;
    }

    public List<Machine> findFilitred(Machine machine, boolean date_achat) {
        List<Machine> machines = new ArrayList<Machine>();

        String sql = "select * from machines m inner join salles s on s.id=m.salle_id where m.reference like" +
                " ? and m.marque like ? and s.code like ? and s.type like ?";
        if (machine.getId() != 0) {
            sql += " and m.id =  " + machine.getId();
        }
        if (machine.getPrix() != 0) {
            sql += " and m.prix =" + machine.getPrix();
        }
        if (date_achat) {
            sql += " and m.date_achat = ?";
        }
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);

            ps.setString(1, ("%" + machine.getReference() + "%"));
            ps.setString(2, ("%" + machine.getMarque() + "%"));
            ps.setString(3, ("%" + machine.getSalle().getCode() + "%"));
            ps.setString(4, ("%" + machine.getSalle().getType() + "%"));
            if (date_achat) {
                ps.setDate(5, new Date(machine.getDateAchat().getTime()));
            }
            ResultSet rs = ps.executeQuery();

            SalleService ss = new SalleService();
            while (rs.next()) {
                machines.add(new Machine(rs.getInt("id"), rs.getString("reference"),
                        rs.getDate("date_achat"), rs.getDouble("prix"),
                        ss.findById(rs.getInt("salle_id")), rs.getString("marque"),
                        rs.getDate("created_at")));
            }

        } catch (SQLException e) {
            System.out.println("findAll " + e.getMessage());
        }
        return machines;
    }

    public List<Machine> findby2dates(java.util.Date date1, java.util.Date date2) {
        List<Machine> machines = new ArrayList<Machine>();

        String sql = "select * from machines m inner join salles s on s.id=m.salle_id where " +
                "date_achat between ? and ?";
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);

            ps.setDate(1, new Date(date1.getTime()));
            ps.setDate(2, new Date(date2.getTime()));
            ResultSet rs = ps.executeQuery();

            SalleService ss = new SalleService();
            while (rs.next()) {
                machines.add(new Machine(rs.getInt("id"), rs.getString("reference"),
                        rs.getDate("date_achat"), rs.getDouble("prix"),
                        ss.findById(rs.getInt("salle_id")), rs.getString("marque"),
                        rs.getDate("created_at")));
            }

        } catch (SQLException e) {
            System.out.println("findAll " + e.getMessage());
        }
        return machines;
    }

    public int count() {
        String sql = "select count(*) as machin_total from machines ";
        try {
            PreparedStatement ps = Connexion.getInstane().getConnection().prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getInt("machin_total");
            }

        } catch (SQLException e) {
            System.out.println("findAll " + e.getMessage());
        }
        return 0;
    }
}
