package res;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


public class ResDAO {
	private Connection conn;
	private ResultSet rs;
	
	public ResDAO() {
		try {
			String dbURL="jdbc:mysql://localhost:3306/FDR";
			String dbID = "root";
			String dbPassword="1234";
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
			
		}catch (Exception e) {
			System.out.println("오류1");
			// TODO: handle exception
		}
	}
	
	public ArrayList<Res> getList(){
		String SQL ="select * from res";
		ArrayList<Res> list = new ArrayList<Res>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				Res res = new Res(rs.getInt(1),rs.getString(2),rs.getString(3),
						rs.getString(4),rs.getString(5));
				list.add(res);
			}
		} catch (Exception e) {
			System.out.println("오류2");
			e.printStackTrace();
			// TODO: handle exception
		}
		return list; //데이터베이스 오류
	}
	
}
