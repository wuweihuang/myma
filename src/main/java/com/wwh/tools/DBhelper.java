package com.wwh.tools;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.commons.dbutils.QueryRunner;

import java.sql.Connection;
import java.sql.SQLException;

public class DBhelper {
	private static ComboPooledDataSource datasource=null;
	public static Connection conn=null;
	//得到连接
		static {
			datasource = new ComboPooledDataSource("myc3p0");
		}
		//
		public static Connection getConn()
		{
			try {
				conn = datasource.getConnection();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return conn;
		}
		public static QueryRunner getQueryruRunner()
		{
			QueryRunner queryrunner = new QueryRunner(datasource);
			return queryrunner;
		}

}
