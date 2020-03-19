package com.hyt.model;

import java.sql.Connection;




import java.sql.SQLException;
import java.util.ArrayList;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;




import com.hyt.util.JDBCTools;

public class itemsDAO {
	public ArrayList<Item> getAllitems() {
		Connection connection = null;
		ArrayList<Item> list=null;
		try {
			connection=JDBCTools.getConnection();
			String sql = "select*from mistore;";
			QueryRunner queryRunner =new QueryRunner();
			list=(ArrayList<Item>)queryRunner.query(connection, sql,new BeanListHandler<>(Item.class));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}
	
	
	public Item getitemsById(int id) {
		Connection connection=null;
		Item item=null;
		try {
			connection=JDBCTools.getConnection();
			String sql="select*from mistore where id=?;";
			QueryRunner queryRunner=new QueryRunner();
			item = queryRunner.query(connection,sql,new BeanHandler<>(Item.class),id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return item;
	}

}
