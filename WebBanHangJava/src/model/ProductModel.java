package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import controller.MyConnect;
import entities.Product;


/**
 * @author Admin
 *
 */
public class ProductModel {
	Product Product = new Product();

	public ProductModel(entities.Product Product) {
		super();
		this.Product = Product;
	}

	public ProductModel() {
		super();
	}

	public Product getProduct() {
		return Product;
	}

	public void setProduct(Product Product) {
		this.Product = Product;
	}
	public ArrayList<Product> getlist() {
		ArrayList<Product> list = new ArrayList<Product>();
		Connection cnConnection = new MyConnect().getcn();
		if (cnConnection == null) {
			return null;
		}
		try {
			String sqlString = "Select * from SanPham";
			PreparedStatement pStatement = cnConnection.prepareStatement(sqlString);
			ResultSet rSet = pStatement.executeQuery();
			while (rSet.next()) {
				Product temP = new Product(rSet.getString(1), rSet.getString(2), rSet.getInt(3), rSet.getInt(4),rSet.getDate(5),rSet.getString(6),rSet.getString(7),rSet.getString(8));
				list.add(temP);
				System.out.println(temP.getIdSP()+temP.getGia()+temP.getHinhSP()+temP.getTenSP()+rSet.getString(8));

			}
			pStatement.close();
			cnConnection.close();
		} catch (SQLException e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		return list;

	}
	public Product getProductLoai(String tenLoai) {
		Connection cnConnection = new MyConnect().getcn();
		Product pro = null;
		if (cnConnection == null) {
			return null;
		}
		try {
			String sqlString = "Select SanPham.* from SanPham,LoaiSanPham where SanPham.idLoai=LoaiSanPham.idLoai&& LoaiSanPham.tenLoai=?";
			PreparedStatement pStatement = cnConnection.prepareStatement(sqlString);
			System.out.println("hihi");
			pStatement.setString(1, tenLoai);
			ResultSet rSet = pStatement.executeQuery();
			if (rSet.next()) {
			 pro = new Product(rSet.getString(1), rSet.getString(2), rSet.getInt(3), rSet.getInt(4),rSet.getDate(5),rSet.getString(6),rSet.getString(7));
				System.out.println(pro);

			}
			pStatement.close();
			cnConnection.close();
		} catch (SQLException e) {
			e.printStackTrace();
			// TODO: handle exception
		}
//		Product pro= new Product(masp,"trang",10,"hi");
		return pro;

	}
	public Product getProductloaiIdSP(String idSP, String tenLoai) {
		Connection cnConnection = new MyConnect().getcn();
		Product pro = null;
		if (cnConnection == null) {
			return null;
		}
		try {
			String sqlString = "Select SanPham.* from SanPham,LoaiSanPham where idSP=?&& SanPham.idLoai=LoaiSanPham.idLoai&& LoaiSanPham.tenLoai=?";
			PreparedStatement pStatement = cnConnection.prepareStatement(sqlString);
			System.out.println("hihi");
			pStatement.setString(1, idSP);
			pStatement.setString(2, tenLoai);
			ResultSet rSet = pStatement.executeQuery();
			if (rSet.next()) {
			 pro = new Product(rSet.getString(1), rSet.getString(2), rSet.getInt(3), rSet.getInt(4),rSet.getDate(5),rSet.getString(6),rSet.getString(7));
				System.out.println(pro);

			}
			pStatement.close();
			cnConnection.close();
		} catch (SQLException e) {
			e.printStackTrace();
			// TODO: handle exception
		}
//		Product pro= new Product(masp,"trang",10,"hi");
		return pro;

	}
	public Product getProductIdSP(String idSP) {
		Connection cnConnection = new MyConnect().getcn();
		Product pro = null;
		if (cnConnection == null) {
			return null;
		}
		try {
			String sqlString = "Select * from SanPham where idSP=?";
			PreparedStatement pStatement = cnConnection.prepareStatement(sqlString);
			System.out.println("hihi");
			pStatement.setString(1, idSP);
			ResultSet rSet = pStatement.executeQuery();
			if (rSet.next()) {
			 pro = new Product(rSet.getString(1), rSet.getString(2), rSet.getInt(3), rSet.getInt(4),rSet.getDate(5),rSet.getString(6),rSet.getString(7));
				System.out.println(pro);

			}
			pStatement.close();
			cnConnection.close();
		} catch (SQLException e) {
			e.printStackTrace();
			// TODO: handle exception
		}
//		Product pro= new Product(masp,"trang",10,"hi");
		return pro;

	}

}
