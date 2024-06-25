<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>화이트 사이드바 예제</title>
    <!-- 부트스트랩 CSS CDN 포함 -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa; /* 전체 배경색 */
            font-family: 'Noto Sans KR', sans-serif; /* 한국어 글꼴 설정 */
            min-height: 100vh;
            min-height: -webkit-fill-available;
        }

        html {
            height: -webkit-fill-available;
        }

        main {
            height: 100vh;
            height: -webkit-fill-available;
            max-height: 100vh;
            overflow-x: auto;
            overflow-y: hidden;
        }

        .sidebar {
            position: fixed;
            top: 0;
            bottom: 0;
            left: 0;
            z-index: 100;
            padding: 0 0 0; /* 사이드바 위쪽 여백 */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* 사이드바 그림자 */
            background-color: #ffffff; /* 사이드바 배경색 */
            width: 280px; /* 사이드바 너비 */
            overflow-y: auto; /* 사이드바 스크롤 */
        }

        .sidebar-sticky {
            padding-top: 20px; /* 사이드바 내부 패딩 */
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

        .embed-responsive {
            position: relative;
            display: block;
            width: 100%;
            padding: 0;
            overflow: hidden;
        }

        .embed-responsive iframe {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border: 0;
        }

        /* Home 링크에만 추가적인 스타일 */
        .nav-item:first-child .nav-link {
            margin-bottom: 50px; /* 첫 번째 링크에만 아래쪽 마진 부여 */
        }

        .dropdown-toggle { outline: 0; }

        .btn-toggle {
            padding: .25rem .5rem;
            font-weight: 600;
            color: var(--bs-emphasis-color);
            background-color: transparent;
        }

        .btn-toggle:hover,
        .btn-toggle:focus {
            color: rgba(var(--bs-emphasis-color-rgb), .85);
            background-color: var(--bs-tertiary-bg);
        }

        .btn-toggle::before {
            width: 1.25em;
            line-height: 0;
            content: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' viewBox='0 0 16 16'%3e%3cpath fill='none' stroke='rgba%280,0,0,.5%29' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M5 14l6-6-6-6'/%3e%3c/svg%3e");
            transition: transform .35s ease;
            transform-origin: .5em 50%;
        }

        [data-bs-theme="dark"] .btn-toggle::before {
            content: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' viewBox='0 0 16 16'%3e%3cpath fill='none' stroke='rgba%28255,255,255,.5%29' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M5 14l6-6-6-6'/%3e%3c/svg%3e");
        }

        .btn-toggle[aria-expanded="true"] {
            color: rgba(var(--bs-emphasis-color-rgb), .85);
        }

        .btn-toggle[aria-expanded="true"]::before {
            transform: rotate(90deg);
        }

        .btn-toggle-nav a {
            padding: .1875rem .5rem;
            margin-top: .125rem;
            margin-left: 1.25rem;
        }

        .btn-toggle-nav a:hover,
        .btn-toggle-nav a:focus {
            background-color: var(--bs-tertiary-bg);
        }

        .scrollarea {
            overflow-y: auto;
        }
    </style>
</head>
<body>
    <div class="col-md-2 d-none d-md-block sidebar">
    <div class="sidebar-sticky">
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link active" href="main">
                    <span data-feather="file"></span> Home
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link font-weight-bold" href="./AES_data">
                    <span data-feather="file"></span> 초품아 데이터 분석
                </a>
                <div class="collapse show" id="collapseMenu1">
                    <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                        <li><a class="nav-link" href="./AES_data#1">개요</a></li>
                        <li><a class="nav-link" href="./AES_data#2">어원</a></li>
                        <li><a class="nav-link" href="./AES_data#3">명칭과 발음</a></li>
                        <li><a class="nav-link" href="#">test</a></li>
                    </ul>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link font-weight-bold" href="#example">
                    <span data-feather="file"></span> 예시
                </a>
                <div class="collapse show" id="collapseMenu2">
                    <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                        <li><a class="nav-link" href="#example1">예시1</a></li>
                        <li><a class="nav-link" href="#example2">예시2</a></li>
                        <li><a class="nav-link" href="#example3">예시3</a></li>
                    </ul>
                </div>
            </li>
        </ul>
    </div>
</div>

<!-- 부트스트랩 JS 및 필요한 종속성 CDN 포함 -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
