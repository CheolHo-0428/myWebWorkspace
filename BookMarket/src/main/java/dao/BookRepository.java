package dao;

import java.util.ArrayList;
import dto.Book;

public class BookRepository {
	private ArrayList<Book> listOfBooks = new ArrayList<Book>();
	public static BookRepository instance = new BookRepository(); 
	
	public BookRepository() {
		Book html = new Book("P1234", "HTML5+CSS3", 15000);
		html.setAuthor("황재호");
		html.setDescription("워드나 PPT문서를 만들 수 있나요? 그러문 문제 없습니다. 지금 바로 웹페이지 제작에 도전해보세요. 지금 당장 컴퓨터가 없어도 괜찮습니다. 코드와 실행 화면이 바로 보여서 눈으로 확인가능합니다.");
		html.setPublisher("한빛미디어");
		html.setCategory("[Hello Coding]");
		html.setUnitsInStock(1000L);
		html.setTotalPages(300L);
		html.setReleaseDate("2016.12.12");
		html.setCondition("신규도서");
		
		Book it = new Book("P1235", "쉽게 배우는 자바 프로그래밍", 27000);
		it.setAuthor("우종중");
		it.setDescription("객체 지향의 핵심과 자바의 현대적 기능을 충실히 다루면서도 초보자가 쉽게 학습할 수 있게 구성했습니다. 시각화 도구를 활용한 개념 설명과 군더더기 없는 핵심 코드를 통해 개념과 구현.....");
		it.setPublisher("한빛아카데미");
		it.setCategory("[IT 모바일]");
		it.setUnitsInStock(1000L);
		it.setTotalPages(656);
		it.setReleaseDate("2017.05.05");
		it.setCondition("중고도서");
		
		Book spring = new Book("P1236", "스프링4 입문", 27000);
		spring.setAuthor("하세가와 유이치, 오모노 와타루, 토키 코헤이(권은철, 전민수)");
		spring.setDescription("스프링은 단순히 사용방법만 익히는 것보다 아키텍처를 어떻게 이해하고 설계하는지가 더 중요합니다. 예제를 복사해 붙여넣는식으로는 실제 개발에서 스프링을 제대로 활용할 수 없습니다.");
		spring.setPublisher("한빛미디어");
		spring.setCategory("[IT 모바일]");
		spring.setUnitsInStock(1000L);
		spring.setTotalPages(700);
		spring.setReleaseDate("2021.01.05");
		spring.setCondition("E-Book");
		
		listOfBooks.add(html);
		listOfBooks.add(it);
		listOfBooks.add(spring);
	}
	
	public ArrayList<Book> getAllBooks(){
		return listOfBooks;
	}
	
	public Book getBookById(String bookId){
		Book bookById = null;
		
		for(int i=0; i<listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);
			if(book != null && book.getBookId() != null && 
					book.getBookId().equals(bookId)) {
				bookById = book;
				break;
			}
		}
		return bookById;
	}
	
	public static BookRepository getBookRepositroy() {
		return instance;
	}
	
	public void addBook(Book addbook) {
		listOfBooks.add(addbook);
	}
}
