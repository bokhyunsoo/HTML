package common;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
// dbcp
public class DB {
	public static Connection getConn(){
		DataSource ds = null;
		Connection conn = null;
		try {
			//context.xml의 내용을 분석
			Context context = new InitialContext();
			//Resource 태그 검색
			ds = (DataSource)context.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
