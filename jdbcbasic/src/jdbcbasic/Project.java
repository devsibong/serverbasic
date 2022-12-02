package jdbcbasic;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

public class Project {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		String url = "jdbc:oracle:thin:@192.168.56.1:1521/xepdb1";
		String sql = "SELECT * FROM NOTICE";
		String sql2 = "SELECT * FROM NOTICE WHERE HIT>10";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection(url, "choi", "1213");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		while (rs.next()) {
			int id = rs.getInt("ID");
			String title = rs.getString("TITLE");
			String writerId = rs.getString("WRITER_ID");
			Date regDate = rs.getDate("REGDATE");
			String content = rs.getString("CONTENT");
			int hit = rs.getInt("HIT");
			System.out.printf("id: %d, title: %s, writerId: %s, regDate: %s, content: %s, hit: %d\n", id, title,
					writerId, regDate, content, hit);
		}
		System.out.println("조회수가 10 이상인 글");
		ResultSet rs2 = st.executeQuery(sql2);
		while (rs2.next()) {
			int id = rs2.getInt("ID");
			String title = rs2.getString("TITLE");
			String writerId = rs2.getString("WRITER_ID");
			Date regDate = rs2.getDate("REGDATE");
			String content = rs2.getString("CONTENT");
			int hit = rs2.getInt("HIT");
			System.out.printf("id: %d, title: %s, writerId: %s, regDate: %s, content: %s, hit: %d\n", id, title,
					writerId, regDate, content, hit);
		}
		rs.close();
		st.close();
		con.close();

	}

}
