<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div>
	<ul class="pagination pagination-md justify-content-center" >
	
		<c:if test="${pageMaker.prev}">
			<li class="page-item">
				<a class="page-link" style="color:#7fad39;" href="all${pageMaker.makeQuery(pageMaker.startPage-1)}">[이전]</a>
			</li>
		</c:if>
				
		<!-- [1][2][3]... 표시 부분 -->
		<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="index" >
		 <c:choose>
		 	<c:when test="${pageMaker.criteria.pageNum==index}" >
		 		<li class="page-item active" >
		 			<a class="page-link" style="color:#FFFFFF; background-color:green;" onclick="filterSearch(${index}, ${pageMaker.criteria.rowsPerPage})">[${index}]</a>
		 		</li>
            </c:when>
            <c:otherwise>
            	<li class="page-item"><a class="page-link" style="color:#7fad39;" onclick="filterSearch(${index}, ${pageMaker.criteria.rowsPerPage})">${index}</a></li>
            </c:otherwise>
          </c:choose>
		</c:forEach>
		<c:if test="${pageMaker.next}">
			<li class="page-item">
				<a class="page-link" style="color:#7fad39;" href="all${pageMaker.makeQuery(pageMaker.endPage+1)}">[다음]</a>
			</li>
		</c:if>	
			
	</ul>
</div>


<script type="text/javascript">
function filterSearch(index, rowsPerPage) {
	var order = $("#order").val();
	var params = "pageNum="+index+"&rowsPerPage="+rowsPerPage+"&order="+order;
	
	$.ajax({
		url: "filter",
		method: "GET",
		data: params,
		dataType: "html",
		success: function(data){
			$('body').html(data);
			console.log("필터 적용 완료!");
		}
	});
}
</script>



