/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import models.Account;
import models.Categories;
import models.Product;

/**
 *
 * @author dinhd513
 */
public class PagingProductDAO extends DAO {

    Connection conn = null;        // keets noois sql
    PreparedStatement ps = null;  // nems cau lenh query
    ResultSet rs = null;    // keet qua tra ve

    public int getTotalAllProduct() {
        String query = "select count (*) from Product_HE161048";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }

        } catch (Exception e) {
        }
        return 0;
    }

    public int getTotalAllProductBycaId(int caId) {
        String query = "select count (*) from Product_HE161048 where CaId = ? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, caId);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }

        } catch (Exception e) {
        }
        return 0;
    }

    public int getTotalAllProductBycoId(int coId) {
        String query = "select count (*) from Product_HE161048 where CoId = ? ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, coId);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }

        } catch (Exception e) {
        }
        return 0;
    }

    public int getTotalAllProductByName(String proName) {
        String query = "select count (*) from Product_HE161048 where ProName like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + proName + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }

        } catch (Exception e) {
        }
        return 0;
    }

    public List<Product> pagingAllProduct(int index) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product_HE161048 order by ProId offset ? rows fetch next 6 rows only";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 6);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7))
                );
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> pagingAllProductBycaId(int index, int caId) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product_HE161048 where CaId = ? order by CaId offset ? rows fetch next 6 rows only";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, caId);
            ps.setInt(2, (index - 1) * 6);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7))
                );
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> pagingAllProductBycoId(int index, int coId) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product_HE161048 where CoId = ? order by CoId offset ? rows fetch next 3 rows only";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, coId);
            ps.setInt(2, (index - 1) * 3);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7))
                );
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> pagingAllProductByproName(int index, String txtName) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product_HE161048 where ProName like ? order by ProId offset ? rows fetch next 6 rows only";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtName + "%");
            ps.setInt(2, (index - 1) * 6);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getFloat(4),
                        rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7))
                );
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        PagingProductDAO dao = new PagingProductDAO();
        List<Product> list = dao.pagingAllProductBycaId(1, 1);
        List<Product> list2 = dao.pagingAllProductByproName(2, "ok");
        List<Product> list3 = dao.pagingAllProductBycoId(1, 5);
        int av = dao.getTotalAllProductByName("ok");
        System.out.println(av);
        for (Product o : list3) {
            System.out.println(o.getProName());

        }

    }

}
