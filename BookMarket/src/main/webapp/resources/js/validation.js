function CheckForm(){
	var bookId = document.getElementById("bookId");
	var name = document.getElementById("name");
	var unitPrice = document.getElementById("unitPrice");
	var unitsInStock = document.getElementById("unitsInStock");
	
	var regExpId = /^ISBN[0-9]{4,11}$/;
	
	if(!regExpId.test(bookId.value)){
		alert("[도서코드]\nISBN과 숫자를 조합하여 5~12자까지 입력하세요\n첫글자는 반드시 ISBN로 시작하세요");
		bookId.select();
		bookId.focus();
		return false;
	}
	
	if(name.value.length<4 || name.value.length>12){
		alert("[상품명]\n최소 4자에서 최대 12자까지 입력하세요");
		name.select();
		name.focus();
		return false;
	}
	
	if(unitPrice.value==0 || isNaN(unitPrice.value)){
		alert("[가격]\n숫자만 입력하세요");
		unitPrice.select();
		unitPrice.focus();
		return false;
	}
	if(unitPrice.value<0){
		alert("[가격]\n 음수는 입력할 수 없습니다.")
		unitPrice.select();
		unitPrice.focus();
		return false;
	}
	
	if(isNaN(unitsInStock.value)){
		alert("[재고 수]\n숫자만 입력하세요");
		unitsInStock.select();
		unitsInStock.focus();
		return false;
	}
	document.bookMember.submit();
}