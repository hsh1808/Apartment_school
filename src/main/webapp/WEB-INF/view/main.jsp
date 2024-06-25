<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>화이트 사이드바 예제</title>
    <!-- 부트스트랩 CSS CDN 포함 -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- 사용자 정의 CSS -->
    <style>
        body {
            background-color: #f8f9fa; /* 전체 배경색 */
            font-family: 'Noto Sans KR', sans-serif; /* 한국어 글꼴 설정 */
            margin: 0;
            padding: 0;
            height: 100vh;
            overflow: hidden;
            display: flex;
        }
        .nav-link {
            color: #333; /* 링크 글자색 */
            font-size: 1.1rem; /* 링크 글자 크기 */
            margin-bottom: 8px; /* 링크 아래 마진 */
            padding-left: 20px; /* 링크 좌측 여백 */
        }
        .nav-link:hover {
            color: #007bff; /* 링크 호버시 글자색 변경 */
        }
        .nav-link.active {
            font-weight: bold; /* 활성 링크 글꼴 굵게 */
            color: #000 !important; /* 활성 링크 글자색을 진한 검정색으로 */
        }
        .btn-outline-secondary {
            color: #007bff; /* 보조 버튼 글자색 */
            border-color: #007bff; /* 보조 버튼 테두리 색상 */
        }
        .btn-outline-secondary:hover {
            color: #fff; /* 버튼 호버시 글자색 변경 */
            background-color: #007bff; /* 버튼 호버시 배경색 변경 */
            border-color: #007bff; /* 버튼 호버시 테두리 색상 변경 */
        }
        .main-content {
            margin-left: 280px; /* 사이드바 너비만큼 마진 */
            padding: 20px;
            height: 100vh;
            overflow-y: auto; /* 메인 콘텐츠 스크롤 */
            flex-grow: 1; /* 메인 콘텐츠가 남은 공간을 채우도록 */
        }
        .dashboard-container {
            height: calc(100vh - 60px); /* 대시보드 높이: 전체 높이에서 패딩값 제외 */
        }
    </style>
</head>
<body>
    <!-- 인클루드된 사이드바 -->
    <%@ include file="./sidebar.jsp" %>

    <!-- 메인 컨텐츠 -->
    <main role="main" class="main-content">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1 class="h2">대시보드</h1>
        </div>

        <div class="dashboard-container">
            <div class='tableauPlaceholder' id='viz1719284842328' style='position: relative; height: 100%;'>
                <noscript>
                    <a href='#'><img alt='대시보드 1 ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;KQ&#47;KQJ3FPG3B&#47;1_rss.png' style='border: none' /></a>
                </noscript>
                <object class='tableauViz' style='display:none; height: 100%;'>
                    <param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' />
                    <param name='embed_code_version' value='3' />
                    <param name='path' value='shared&#47;KQJ3FPG3B' />
                    <param name='toolbar' value='yes' />
                    <param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;KQ&#47;KQJ3FPG3B&#47;1.png' />
                    <param name='animate_transition' value='yes' />
                    <param name='display_static_image' value='yes' />
                    <param name='display_spinner' value='yes' />
                    <param name='display_overlay' value='yes' />
                    <param name='display_count' value='yes' />
                    <param name='language' value='ko-KR' />
                    <param name='filter' value='publish=yes' />
                </object>
            </div>
        </div>
        <script type='text/javascript'>
            var divElement = document.getElementById('viz1719284842328');
            var vizElement = divElement.getElementsByTagName('object')[0];
            if (divElement.offsetWidth > 800) {
                vizElement.style.width='100%';
                vizElement.style.height=(divElement.offsetWidth*0.75)+'px';
            } else if (divElement.offsetWidth > 500) {
                vizElement.style.width='100%';
                vizElement.style.height=(divElement.offsetWidth*0.75)+'px';
            } else {
                vizElement.style.width='100%';
                vizElement.style.height='1377px';
            }
            var scriptElement = document.createElement('script');
            scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';
            vizElement.parentNode.insertBefore(scriptElement, vizElement);
        </script>
    </main>

    <!-- 부트스트랩 JS 및 jQuery CDN 포함 -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
