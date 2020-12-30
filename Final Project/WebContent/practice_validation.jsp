<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel ="stylesheet" href ="./resources/css/bootstrap.min.css" />
<script type ="text/javascript" src ="./resources/js/validation.js"></script>
<title>상품 등록</title>
</head>

<body>
<jsp:include page="menu.jsp"/>
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">상품 등록</h1>
	</div>
</div>
<div class="container" >
	<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post">
		<div class="form-group row">
			<label class="col-sm-2">상품코드</label>
			<div class="col-sm-3">
				<input type="text" name="productID" class="form-control">
			</div>	
		</div>
		<div class="form-group row">
			<label class="col-sm-2">상품명</label>
			<div class="col-sm-3">
				<input type="text" name="name" class="form-control">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">가격</label>
			<div class="col-sm-3">
				<input type="text" name="unitPrice" class="form-control">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">상세 정보</label>
			<div class="col-sm-3">
				<textarea name="description" class="form-control" cols="50" rows="3"></textarea>
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">제조사</label>
			<div class="col-sm-3">
				<input type="text" name="manufacturer" class="form-control">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">분류</label>
			<div class="col-sm-3">
				<input type="text" name="category" class="form-control">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">상태</label>
			<div class="col-sm-3">
				<input type="radio" name="condition" value="New">신규제품
				<input type="radio" name="condition" value="Old">중고제품
				<input type="radio" name="condition" value="Refurbished">재생제품				
			</div>
		</div>
		<div class="form-group row">
			<div class="col-sm-10 col-sm-offset-2">
				<input type="submit" value="등록" class="btn btn-primary">
			</div>
		</div>
	</form>
</div>

</body>
</html>