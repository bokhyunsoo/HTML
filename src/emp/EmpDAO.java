package emp;

import java.sql.CallableStatement;
import java.sql.Connection;

import common.DB;

public class EmpDAO {
	public void updateSal(int empno){
		Connection conn = null; // 저장 프로시저 실행
		CallableStatement cstmt = null;
		try {
			conn = DB.getConn(); // 커넥션풀에서 커넥션1개 리턴
			// call 프로시저 이름(매개변수)
			String sql = "{call update_sal(?) }";
			cstmt = conn.prepareCall(sql);
			cstmt.setInt(1, empno);
			cstmt.execute(); // 저장 프로시저 실행
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(cstmt!=null) cstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			try {
				if(conn!=null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
