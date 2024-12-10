<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div align="center">
    <sec:authorize access="isAuthenticated()">
        Welcome <b><sec:authentication property="name"/></b>
        &nbsp;
        <i><sec:authentication property="principal.authorities"/></i>
    </sec:authorize>

    <form action="/logout" method="post">
        <input type="submit" value="logout">
    </form>

    <h1>Product Manager</h1>
    <sec:authorize access="hasAnyAuthority('CREATOR', 'ADMIN')">
        <a href="/admin/products/add">Add Product</a>
    </sec:authorize>
	
    <c:if test="${message != null}">
        <i>${message}</i>
    </c:if>

    <form action="/admin/products/searchpaginated">
        <input type="text" id="name" name="name" placeholder="Nhập từ khóa để tìm" />
        <button>Search</button>
    </form>

    <c:if test="${!productPage.hasContent()}">No Product</c:if>

    <c:if test="${productPage.hasContent()}">
        <table>
            <tr>
                <th>STT</th>
                <th>Images</th>
                <th>Product Name</th>
                <th>Quantity</th>
                <th>Note</th>
                <th>Type</th>
                <th>Price</th>
                <th>Tag</th>
                <th>Hide</th>
                <sec:authorize access="hasAnyAuthority('EDITOR', 'ADMIN')">
                	<th>Action</th>
                </sec:authorize>
            </tr>

            <c:forEach items="${productPage.content}" var="product" varStatus="stt">
                <tr>
                    <td>${stt.index+1}</td>
                    <td>
                        <c:if test="${not empty product.images}">
                            <img src="/admin/products/images/${product.images}" alt="Image" width="100" height="100" />
                        </c:if>
                        <c:if test="${empty product.images}">
                            <img src="/static/images/noimage.jpg" alt="Image" width="100" height="100" />
                        </c:if>
                    </td>
                    <td>${product.name}</td>
                    <td>${product.quantity}</td>
                    <td>${product.note}</td>
                    <td>${product.type}</td>
                    <td>${product.price}</td>
                    <td>${product.tag}</td>
                    <td>${product.hide}</td>
                    <sec:authorize access="hasAnyAuthority('EDITOR', 'ADMIN')">
	                    <td>
	                    	<a href="/admin/products/edit/${product.id}">Edit</a>
	                    	&nbsp;&nbsp;&nbsp;&nbsp;
	                    	<sec:authorize access="hasAuthority('ADMIN')">
	                    		<a href="/admin/products/delete/${product.id}" onclick="return confirm('Are you sure you want to delete this product?')">Delete</a>
	                    	</sec:authorize>
	                    </td>
	                </sec:authorize>
                </tr>
            </c:forEach>

        </table>
    </c:if>

    <form action="">
        Page size: 
        <select name="size" id="size" onchange="this.form.submit()">
            <option ${productPage.size == 3 ? 'selected' : ''} value="3">3</option>
            <option ${productPage.size == 5 ? 'selected' : ''} value="5">5</option>
            <option ${productPage.size == 10 ? 'selected' : ''} value="10">10</option>
            <option ${productPage.size == 15 ? 'selected' : ''} value="15">15</option>
            <option ${productPage.size == 20 ? 'selected' : ''} value="20">20</option>
        </select>
    </form>

    <c:if test="${productPage.totalPages > 0}">
        <ul>
            <c:forEach items="${pageNumbers}" var="pageNumber">
                <c:if test="${productPage.totalPages > 1}">
                    <li class="${pageNumber == productPage.number + 1 ? 'page-item active' : 'page-item'}">
                        <a href="<c:url value='/admin/products/searchpaginated?name=${name}&size=${productPage.size}&page=${pageNumber}'/>">${pageNumber}</a>
                    </li>
                </c:if>
            </c:forEach>
        </ul>
    </c:if>
</div>
