<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<nav class="navbar navbar-light bg-light p-3">
		<div
			class="d-flex col-12 col-md-3 col-lg-2 mb-2 mb-lg-0 flex-wrap flex-md-nowrap justify-content-between">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/index.do">커뮤니티</a>
			<button class="navbar-toggler d-md-none collapsed mb-3" type="button"
				data-toggle="collapse" data-target="#sidebar"
				aria-controls="sidebar" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
		<div
			class="col-12 col-md-5 col-lg-8 d-flex align-items-center justify-content-md-end mt-3 mt-md-0">
			<div class="dropdown">
				<%-- <c:out value="${email}" /> --%>
				<c:choose>
				    <c:when test="${empty userInfo}">
				        <button class="btn btn-secondary" type="button" id="dropdownMenuButton" aria-expanded="false" onclick="window.location.href='/toyProject/login.do';" style="background-color: #4CAF50; color: white;">NaverLogin</button>
				    </c:when>
				    <c:otherwise>
				        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-expanded="false" style="background-color: #4CAF50; color: white;">
				        	${userInfo.email}
				        	<!-- map방법 다시 찾기 -->
				        </button>
				    </c:otherwise>
				</c:choose>
				
				
				<c:if test="${not empty userInfo}">
				    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				        <li><a class="dropdown-item" href="/toyProject/logout.do">로그아웃</a></li>
				    </ul>
				</c:if>
			</div>
		</div>
	</nav>