package jdbcbasic;

import java.sql.SQLException;

import com.devsibong.app.console.NoticeConsole;

public class Program5 {

	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		NoticeConsole console = new NoticeConsole();

		EXIT: 
		while (true) {
			console.printNoticeList();
			int menu = console.inputNoticeMenu();

			switch (menu) {
			case 1:
				break;
			case 2:
				break;
			case 3:
				break;
			case 4:
				break;
			case 5:
				System.out.println("종료");
				break EXIT;
			case 6:
				console.inputSearchWord();
			default:
				System.out.println("올바른 숫자를 입력하십시오");
				break;
			}
		}

	}

}
