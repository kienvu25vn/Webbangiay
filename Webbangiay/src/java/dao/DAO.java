/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Category;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProducts() {

        List<Product> list = new ArrayList<>();
        String query = "select * from sanpham";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7)));
            }

        } catch (Exception e) {
        }
        return list;
    }

    public Product getProductById(String id) {

        String query = "select * from sanpham where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public String getCidProduct(String id) {
        String query = "select cid from sanpham where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            rs.next();
            return rs.getString(1);
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> getAllProductsByCID(String cid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from sanpham where cid = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Category> getAllCategorys() {

        List<Category> list = new ArrayList<>();
        String query = "select * from category";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1), rs.getString(2)));
            }

        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getCategoryProducts(String cid) {

        List<Product> list = new ArrayList<>();

        String query = "select * from sanpham where cid = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public String getCategoryNameById(String cid) {
        String cname = "";
        String query = "select cname from category where cid = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            rs.next();
            cname = rs.getString(1);

        } catch (Exception e) {
        }
        return cname;
    }

//    public List<Product> getProductsByColor(String color) {
//        List<Product> list = new ArrayList<>();
//        String query = "select * from sanpham where color = ?";
//
//        try {
//            conn = new DBContext().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1, color);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7)));
//            }
//        } catch (Exception e) {
//        }
//        return list;
//    }
    public List<Product> getProductsByCidAndPriceAndColor(String Cid, String price, String color) {
        if (Cid == null) {
            if (price.equals("all")) {
                try {
                    conn = new DBContext().getConnection();
                    if (color.equals("all")) {
                        List<Product> list = new DAO().getAllProducts();
                        return list;
                    } else {
                        List<Product> list = new ArrayList<>();
                        String query = "select * from sanpham where color = ?";
                        ps = conn.prepareStatement(query);
                        ps.setString(1, color);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7)));
                        }
                        return list;

                    }
                } catch (Exception e) {
                }
            } else {
                int Price = Integer.parseInt(price);
                try {
                    conn = new DBContext().getConnection();
                    if (Price != 700) {
                        List<Product> list = new ArrayList<>();
                        String query = "";
                        if (!color.equals("all")) {
                            query = "select * from sanpham where price >= ? and price <= ? and color = ?";
                            ps = conn.prepareStatement(query);
                            ps.setInt(1, Price);
                            ps.setInt(2, Price + 200);
                            ps.setString(3, color);
                        } else {
                            query = "select * from sanpham where price >= ? and price <= ?";
                            ps = conn.prepareStatement(query);
                            ps.setInt(1, Price);
                            ps.setInt(2, Price + 200);

                        }
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7)));
                        }
                        return list;

                    } else {
                        List<Product> list = new ArrayList<>();
                        String query = "";
                        if (!color.equals("all")) {
                            query = "select * from sanpham where price >= 700 and color = ?";
                            ps = conn.prepareStatement(query);
                            ps.setString(1, color);
                        } else {
                            query = "select * from sanpham where price >= 700 ";
                            ps = conn.prepareStatement(query);
                        }
                        rs = ps.executeQuery();

                        while (rs.next()) {
                            list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7)));
                        }
                        return list;
                    }

                } catch (Exception e) {
                }
            }
        } else {
            if (price.equals("all")) {
                try {
                    conn = new DBContext().getConnection();
                    if (color.equals("all")) {
                        List<Product> list = new DAO().getAllProductsByCID(Cid);
                        return list;
                    } else {
                        List<Product> list = new ArrayList<>();
                        String query = "select * from sanpham where cid = ? and color = ?";
                        ps = conn.prepareStatement(query);
                        ps.setString(1, Cid);
                        ps.setString(2, color);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7)));
                        }
                        return list;

                    }
                } catch (Exception e) {
                }
            } else {
                int Price = Integer.parseInt(price);
                try {
                    conn = new DBContext().getConnection();
                    if (Price != 700) {
                        List<Product> list = new ArrayList<>();
                        String query = "";
                        if (!color.equals("all")) {
                            query = "select * from sanpham where cid = ? and price >= ? and price <= ? and color = ?";
                            ps = conn.prepareStatement(query);
                            ps.setString(1, Cid);
                            ps.setInt(2, Price);
                            ps.setInt(3, Price + 200);
                            ps.setString(4, color);
                        } else {
                            query = "select * from sanpham where cid = ? and  price >= ? and price <= ?";
                            ps = conn.prepareStatement(query);
                            ps.setString(1, Cid);
                            ps.setInt(2, Price);
                            ps.setInt(3, Price + 200);

                        }
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7)));
                        }
                        return list;

                    } else {
                        List<Product> list = new ArrayList<>();
                        String query = "";
                        if (!color.equals("all")) {
                            query = "select * from sanpham where cid = ? and price >= 700 and color = ?";
                            ps = conn.prepareStatement(query);
                            ps.setString(1, Cid);
                            ps.setString(2, color);
                        } else {
                            query = "select * from sanpham where cid= ? and price >= 700 ";
                            ps = conn.prepareStatement(query);
                            ps.setString(1, Cid);
                        }
                        rs = ps.executeQuery();

                        while (rs.next()) {
                            list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDouble(5), rs.getString(6), rs.getString(7)));
                        }
                        return list;
                    }

                } catch (Exception e) {
                }
            }
        }
        return null;
    }

    public void deleteProduct(String pid) {
        String query = "delete from sanpham\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void insertProduct(String name, String title, String description,
            double price, String image, String color, int amount,
            int size1, int size2, int size3, int cid) {
        String query = "INSERT INTO `sanpham`\n"
                + "(name,title,description,price,image,color,amount,size1,size2,size3,cid)\n"
                + "VALUES(?,?,?,?,?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, title);
            ps.setString(3, description);
            ps.setDouble(4, price);
            ps.setString(5, image);
            ps.setString(6, color);
            ps.setInt(7, amount);
            ps.setInt(8, size1);
            ps.setInt(9, size2);
            ps.setInt(10, size3);
            ps.setInt(11, cid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editProduct(String name, String title, String description,
            double price, String image, String color, int cid, int id) {
        String query = "update `sanpham`\n"
                + "set name = ?,\n"
                + "title = ?,\n"
                + "description = ?,\n"
                + "price = ?,\n"
                + "image = ?,\n"
                + "color = ?,\n"
                + "cid = ?\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, title);
            ps.setString(3, description);
            ps.setDouble(4, price);
            ps.setString(5, image);
            ps.setString(6, color);
            ps.setInt(7, cid);
            ps.setInt(8, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Account login(String user, String pass) {
        String query = "select * from account\n"
                + "where user = ?\n"
                + "and pass = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkAccountExist(String user) {
        String query = "select * from account\n"
                + "where user = ?\n";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void singup(String user, String pass) {
        String query = "insert into account (user,pass,isAdmin)\n"
                + "values(?,?,0)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        System.out.print(new DAO().getCidProduct("1"));
    }
}
