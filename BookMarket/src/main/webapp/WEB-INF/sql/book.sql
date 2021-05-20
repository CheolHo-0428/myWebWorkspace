CREATE TABLE book(
	b_id VARCHAR(10) NOT NULL PRIMARY KEY,
	b_name VARCHAR(20),
	b_unitPrice INTEGER,
	b_author VARCHAR(50),
	b_publisher VARCHAR(20),
	b_description CLOB,
	b_category VARCHAR(20),
	b_unitsInStock LONG,
	b_totalPages INTEGER,
	b_releaseDate VARCHAR(20),
	b_condition VARCHAR(20),
	b_fileName VARCHAR(20)
)TABLESPACE BookMarketDB;

ALTER TABLE book MODIFY b_name VARCHAR(50);
ALTER TABLE book MODIFY b_author VARCHAR(150);

INSERT INTO book VALUES(
  'ISBN1234', 'HTML5+CSS3', 15000, '황재호', '한빛미디어',
  '워드나 PPT문서를 만들 수 있나요? 그러문 문제 없습니다. 지금 바로 웹페이지 제작에 도전해보세요. 지금 당장 컴퓨터가 없어도 괜찮습니다. 코드와 실행 화면이 바로 보여서 눈으로 확인가능합니다.',
  '[Hello Coding]', 1000, 300, '2016.12.12', '신규도서', 'HTML5.jpg');

INSERT INTO book VALUES(
  'ISBN1235', '쉽게 배우는 자바 프로그래밍', 27000, '우종중', '한빛아카데미',
  '객체 지향의 핵심과 자바의 현대적 기능을 충실히 다루면서도 초보자가 쉽게 학습할 수 있게 구성했습니다. 시각화 도구를 활용한 개념 설명과 군더더기 없는 핵심 코드를 통해 개념과 구현.....',
  '[IT 모바일]', 1000, 656, '2017.05.05', '중고도서', 'easyJava.jpg');

INSERT INTO book VALUES(
  'ISBN1236', '스프링4 입문', 27000, '하세가와 유이치, 오모노 와타루, 토키 코헤이(권은철, 전민수)','한빛미디어',
  '스프링은 단순히 사용방법만 익히는 것보다 아키텍처를 어떻게 이해하고 설계하는지가 더 중요합니다. 예제를 복사해 붙여넣는식으로는 실제 개발에서 스프링을 제대로 활용할 수 없습니다.',
  '[IT 모바일]', 1000, 700, '2021.01.05', 'E-Book', 'spring4.jpg');

COMMIT;

SELECT * FROM BOOK;