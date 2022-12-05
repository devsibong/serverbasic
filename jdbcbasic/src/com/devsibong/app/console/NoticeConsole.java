package com.devsibong.app.console;

import java.sql.SQLException;
import java.util.List;
import java.util.Scanner;

import com.devsibong.app.entity.Notice;
import com.devsibong.app.service.NoticeService;

public class NoticeConsole {	
	private NoticeService service;
	private int page;
	private String searchWord;
	private String searchField;
	
	public NoticeConsole() {
		service = new NoticeService();
		searchWord = "";
		searchField = "";
	}
	public void printNoticeList() throws ClassNotFoundException, SQLException {
		List<Notice> list = service.getList(1);
		System.out.println("─────────────────────────────────────────────────");
		System.out.printf("<공지사항>전체%d 게시글\n", 12);
		System.out.println("─────────────────────────────────────────────────");
		
		for(Notice n : list) {
			System.out.printf("%d. %s / %s / %s\n", 
							n.getId(),
							n.getTitle(),
							n.getWriterId(),
							n.getRegDate()
							);
		}
		
		System.out.println("─────────────────────────────────────────────────");
		System.out.printf("           %d/%d pages\n", 1,2);
	}

	public int inputNoticeMenu() {
		Scanner scan = new Scanner(System.in);
		System.out.printf("1.상세조회/ 2.이전/ 3.다음/ 4.글쓰기/ 5.종료 /6.검색");
		String menu_ = scan.nextLine();
		int menu = Integer.parseInt(menu_);
		return menu;
		
	}
	public void inputSearchWord() {
		Scanner scan = new Scanner(System.in);
		System.out.println("검색 범주 중 한개를 입력하세요");
		System.out.print(" > ");
		searchField = scan.nextLine();
		searchWord = scan.nextLine();
				
		
	}
}
