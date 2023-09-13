package kr.co.kmarket.dao;

import kr.co.kmarket.db.DBHelper;
import kr.co.kmarket.db.SQL;
import kr.co.kmarket.dto.KmProductCartDTO;
import org.slf4j.Logger;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class KmProductCartDAO extends DBHelper {
    private final Logger logger = org.slf4j.LoggerFactory.getLogger(KmProductCartDAO.class);
    private KmProductCartDAO(){}
    private static KmProductCartDAO INSTANCE = new KmProductCartDAO();
    public static KmProductCartDAO getInstance() {
        return INSTANCE;
    }

    public void insertCart(KmProductCartDTO dto) {
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(SQL.INSERT_CART);
            psmt.setString(1, dto.getUid());
            psmt.setInt(2, dto.getProdNo());
            psmt.setInt(3, dto.getCount());
            psmt.setInt(4, dto.getPrice());
            psmt.setInt(5, dto.getDiscount());
            psmt.setInt(6, dto.getPoint());
            psmt.setInt(7, dto.getDelivery());
            psmt.setInt(8, dto.getTotal());
            psmt.setString(9, dto.getrDate());
            psmt.executeUpdate();
            close();
        } catch (SQLException e) {
            logger.error(e.getMessage());
        }
    }

    public void deleteCartUid(String uid) {
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(SQL.DELETE_CART_UID);
            psmt.setString(1, uid);
            psmt.executeUpdate();
            close();
        } catch (SQLException e) {
            logger.error(e.getMessage());
        }
    }

    public List<KmProductCartDTO> selectCarts(String uid) {
        List<KmProductCartDTO> list = new ArrayList<>();
        try {
            conn = getConnection();
            psmt = conn.prepareStatement(SQL.SELECT_CARTS);
            psmt.setString(1, uid);
            rs = psmt.executeQuery();
            while (rs.next()) {
                KmProductCartDTO dto = new KmProductCartDTO();
                dto = selectCartData();
                dto.setProdName(rs.getString("prodName"));
                dto.setDescript(rs.getString("descript"));
                list.add(dto);
            }
        } catch (SQLException e) {
            logger.error(e.getMessage());
        }
        return list;
    }
    public KmProductCartDTO selectCartData() throws SQLException {
        KmProductCartDTO dto = new KmProductCartDTO();
        dto.setCartNo(rs.getInt("cartNo"));
        dto.setUid(rs.getString("uid"));
        dto.setProdNo(rs.getInt("prodNo"));
        dto.setCount(rs.getInt("count"));
        dto.setPrice(rs.getInt("price"));
        dto.setDiscount(rs.getInt("discount"));
        dto.setPoint(rs.getInt("point"));
        dto.setDelivery(rs.getInt("delivery"));
        dto.setTotal(rs.getInt("total"));
        dto.setrDate(rs.getString("rDate"));
        return dto;
    }
}
