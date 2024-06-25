<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>화이트 사이드바 예제</title>
<!-- 부트스트랩 CSS CDN 포함 -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<!-- 사용자 정의 CSS -->
<style>
body {
	background-color: #f8f9fa; /* 전체 배경색 */
	font-family: 'Noto Sans KR', sans-serif; /* 한국어 글꼴 설정 */
	height: 100vh;
	overflow: hidden;
	margin: 0;
	padding: 0;
	display: flex;
}

.container-fluid {
	height: 100vh;
	padding: 0;
}

.row {
	height: 100%;
	margin: 0;
}

.sidebar {
	position: fixed;
	top: 0;
	bottom: 0;
	left: 0;
	z-index: 100;
	padding-top: 20px; /* 사이드바 내부 패딩 */
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* 사이드바 그림자 */
	background-color: #ffffff; /* 사이드바 배경색 */
	width: 280px; /* 사이드바 너비 */
	overflow-y: auto; /* 사이드바 스크롤 */
}

.main-content {
	margin-left: 280px; /* 사이드바 너비만큼 마진 */
	padding: 20px;
	height: 100vh;
	overflow-y: auto; /* 메인 콘텐츠 스크롤 */
	flex-grow: 1; /* 메인 콘텐츠가 남은 공간을 채우도록 */
}

.content {
	padding: 20px;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<!-- 인클루드된 사이드바 -->
			<%@ include file="./sidebar.jsp"%>

			<!-- 메인 컨텐츠 -->
			<main role="main" class="main-content">
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
					<h1 class="h2">초품아-일반아파트 관계</h1>
				</div>
				<div class="content">
				<h1>test</h1>
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<h1 id="1">개요1</h1>
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<h1 id="2">어원</h1>
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<h1 id="3">명칭과 발음</h1>
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				<p>ssssssssssssssssssssssssssssssssssssssssss
				</div>
			</main>
		</div>
	</div>

</body>
</html>
					
						
