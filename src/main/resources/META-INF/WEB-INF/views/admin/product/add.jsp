<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<h2>${product.isEdit ? "Edit Product" : "Add Product"}</h2>

<form action="/admin/products/save" method="post" enctype="multipart/form-data">
	
	<input type="hidden" value="${product.isEdit}" name="isEdit">
	
	<input type="hidden" value="${product.id}" name="id">
	
	<label>Product Name</label><br> 
	<input type="text" name="name" value="${product.name}"><br>
	
	<label>Choose Images:</label><br>
	<input type="file" name="imageFile" value="${product.images}"><br>
	
	<label>Images</label><br>
	<input type="text" name="images" value="${product.images}"><br>
	
	<label>Quantity</label><br>
	<input type="text" name="quantity" value="${product.quantity}"><br>
	
	<label>Note</label><br>
	<input type="text" name="note" value="${product.note}"><br>
	
	<label>Type</label><br>
	<input type="text" name="type" value="${product.type}"><br>
	
	<label>Price</label><br>
	<input type="text" name="price" value="${product.price}"><br>
	
	<label>Tag</label><br>
	<input type="text" name="tag" value="${product.tag}"><br>
	
	<label>Hide</label><br>
	<input type="text" name="hide" value="${product.hide}"><br>
	
	<c:if test="${product.isEdit}">
		<input type="submit" value="Update">
	</c:if>
	
	<c:if test="${!product.isEdit}">
		<input type="submit" value="Insert">
	</c:if>
	
</form>
