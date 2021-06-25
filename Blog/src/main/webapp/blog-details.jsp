<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-js" lang="ko">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <title>블로그 (Bootstrap5 적용)</title>
    <meta name="description" content="KH정보교육원 학생을 위한 블로그 템플릿" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <meta
      name="robots"
      content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1"
    />
    <link rel="canonical" href="#" />
    <meta property="og:locale" content="en_US" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content="블로그 템플릿" />
    <meta property="og:url" content="" />
    <meta property="og:site_name" content="" />
    <meta property="og:image" content="" />
    <!-- Favicon -->
    <link rel="icon" href="assets/images/favicon.png" />

    <!-- CSS
        ============================================ -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/vendor/bootstrap.min.css" />

    <!-- Gordita Fonts CSS -->
    <link rel="stylesheet" href="assets/fonts/gordita-fonts.css" />

    <!-- Icofont CSS -->
    <link rel="stylesheet" href="assets/css/vendor/icofont.min.css" />

    <!-- Light gallery CSS -->
    <link rel="stylesheet" href="assets/css/plugins/lightgallery.min.css" />

    <!-- Swiper bundle CSS -->
    <link rel="stylesheet" href="assets/css/plugins/swiper-bundle.min.css" />

    <!-- AOS CSS -->
    <link rel="stylesheet" href="assets/css/plugins/aos.css" />

    <!-- Vendor & Plugins CSS (Please remove the comment from below vendor.min.css & plugins.min.css for better website load performance and remove css files from avobe) -->

    <!-- <link rel="stylesheet" href="assets/css/vendor/vendor.min.css">
        <link rel="stylesheet" href="assets/css/plugins/plugins.min.css"> -->

    <!-- 메인스타일 CSS -->
    <link rel="stylesheet" href="assets/css/style.css" />
  </head>

  <body>
    <!--========  헤더영역  =========-->
    <header class="header">
      <div class="header-mid-area">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-lg-3 col-md-2 col-5">
              <div class="logo">
                <a href="index.html">
                  <img src="assets/images/logo/logo.png" alt="" />
                </a>
              </div>
            </div>
            <div class="col-lg-6 col-md-6 d-md-block d-none">
              <div class="header-add-banner text-center">
                <a href="#">
                  <img src="assets/images/banners/net01.jpg" alt="" />
                  <h6 class="header-add-text">딱! 한달 프리미엄 이용권</h6>
                </a>
              </div>
            </div>
            <div class="col-lg-3 col-md-4 col-7">
              <div class="header-mid-right-side">
                <a
                  href="javascript:void(0)"
                  id="search-overlay-trigger"
                  class="single-action-item"
                >
                  <img src="assets/images/icons/search.png" alt="" />
                </a>
                <a href="#" class="single-action-item">
                  <img src="assets/images/icons/notification.png" alt="" />
                </a>
                <a href="#" class="single-action-item">
                  <img src="assets/images/icons/bookmark.png" alt="" />
                </a>
                <a href="register.html" class="single-action-item">
                  <img src="assets/images/icons/user.png" alt="" />
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="header-bottom-area">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-lg-4 col-9">
              <ul class="social-share-area mt-15 mb-15">
                <li>
                  <a href="#"><i class="icofont-facebook"></i></a>
                </li>
                <li>
                  <a href="#"><i class="icofont-skype"></i></a>
                </li>
                <li>
                  <a href="#"><i class="icofont-twitter"></i></a>
                </li>
                <li>
                  <a href="#"><i class="icofont-linkedin"></i></a>
                </li>
              </ul>
            </div>
            <div class="col-lg-8 col-3">
              <div class="main-menu-area text-end">
                <nav class="navigation-menu">
                  <ul>
                    <li>
                      <a href="index.html"><span>홈</span></a>
                    </li>
                    <li>
                      <a href="about-us.html"><span>소개</span></a>
                    </li>
                    <li class="has-children">
                      <a href="category.html"><span>카테고리</span></a>
                      <ul class="submenu">
                        <li>
                          <a href="category.html"><span>영화 리뷰</span></a>
                        </li>
                        <li>
                          <a href="category.html"><span>기사</span></a>
                        </li>
                        <li>
                          <a href="category.html"><span>랭킹</span></a>
                        </li>
                        <li>
                          <a href="category.html"
                            ><span>전문가리뷰 & 평점</span></a
                          >
                        </li>
                      </ul>
                    </li>
                    <li class="has-children">
                      <a href="#"><span>기타페이지</span></a>
                      <ul class="submenu">
                        <li>
                          <a href="blog-details.html"
                            ><span>블로그 상세페이지</span></a
                          >
                        </li>
                        <li>
                          <a href="author-post.html"><span>작성자 글</span></a>
                        </li>
                        <li>
                          <a href="register.html"><span>회원가입</span></a>
                        </li>
                        <li>
                          <a href="write-post.html"><span>글작성</span></a>
                        </li>
                      </ul>
                    </li>
                    <li>
                      <a href="contact-us.html"><span>연락 </span></a>
                    </li>
                  </ul>
                </nav>
              </div>
              <!-- mobile menu -->
              <div class="mobile-menu-right">
                <div
                  class="mobile-navigation-icon d-block d-lg-none"
                  id="mobile-menu-trigger"
                >
                  <i></i>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!--======== 헤더영역 종료  =========-->

    <!-- breadcrumb-area start -->
    <div class="breadcrumb-area">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="breadcrumb_box text-center">
              <!-- <h2 class="breadcrumb-title">@@title</h2> -->
              <!-- breadcrumb-list start -->
              <ul class="breadcrumb-list">
                <li class="breadcrumb-item"><a href="index.html">홈</a></li>
                <li class="breadcrumb-item active">상세보기</li>
              </ul>
              <!-- breadcrumb-list end -->
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- breadcrumb-area end -->

    <div id="main-wrapper">
      <div class="site-wrapper-reveal">
        <!-- Blog Details Wrapper Start -->
        <div class="blog-details-wrapper section-space--ptb_80">
          <div class="container">
            <div class="row row--17">
              <div class="blog-details-col-8">
                <!-- blog details Post Start -->
                <div class="blog-details-post-wrap">
                  <div class="blog-details-thum">
                    <img src="assets/images/blog/blog-details-1.jpg" alt="" />
                  </div>
                  <div class="blog-details-post-content">
                    <div class="blog-details-meta-box">
                      <div class="post-meta-left-side mb-2">
                        <div class="trending-blog-post-category">
                          <a href="#">비즈니스</a>
                        </div>
                        <div class="following-blog-post-author">
                          By <a href="#">홍길동</a>
                        </div>
                      </div>

                      <div class="post-mid-side mb-2">
                        <span class="post-meta-left-side">
                          <span class="post-date">
                            <i class="icofont-ui-calendar"></i>
                            <a href="#">2021.06.15</a>
                          </span>
                        </span>
                        <span>10분 읽기</span>
                      </div>

                      <div class="post-meta-right-side mb-2">
                        <a href="#"
                          ><img
                            src="assets/images/icons/small-bookmark.png"
                            alt=""
                        /></a>
                        <a href="#"
                          ><img src="assets/images/icons/heart.png" alt=""
                        /></a>
                      </div>
                    </div>
                    <h3 class="following-blog-post-title">
                      <a href="#"
                        >올 추석에 인원제한 없이 가족 모임 할 수 있나요?
                      </a>
                    </h3>

                    <div class="post-details-text">
                      <p>
                        다음달 1일부터 새 사회적 거리두기 개편안이 적용된다.
                        개편안이 적용되면 이전에 견줘 무엇이 달라지는지, 어떤
                        활동 등이 가능해지는지 문답 형식으로 정리했다.
                      </p>

                      <p>
                        “아니다. 정해진 횟수의 접종을 모두 받고 2주가 지난
                        예방접종 완료자는 모든 거리두기 단계에서 사적모임 제한
                        조처의 예외로 둔다. 접종 완료자는 모임·행사·집회
                        인원제한에서도 제외된다. 정부는 예방접종 진행과 유행
                        상황을 고려해 접종 완료자를 대상으로 행사 개최 때 좌석
                        띄우기, 스탠딩 공연 금지 해제, 영화·상영관 음식 섭취
                        금지 해제 방안 등을 검토할 예정이다. 덧붙여 다음달부터
                        1차 이상 접종자는 실외 다중이용시설 인원제한에서
                        제외하고, 접종 완료자는 실내·외 다중이용시설
                        인원제한에서 제외된다.”
                      </p>

                      <h3 class="title mb-3">
                        ―접종 완료자 외에 인원제한 예외 대상은 누가 있나?
                      </h3>

                      <p>
                        “동거가족, 아동·노인·장애인 등 돌봄, 임종을 지키는 경우,
                        스포츠 경기 구성을 위한 최소 인원(종목별 인원 1.5배)이
                        필요한 경우에도 단계와 상관없이 사적모임 인원제한의 예외
                        대상이 된다.”
                      </p>

                      <p>
                        “2단계 상황에선 직계가족 모임에 사적인원 모임 제한을
                        적용하지 않아 인원제한 없이 모일 수 있다. 2단계에선
                        돌잔치도 16인까지 모임을 허용한다. 하지만 3단계부터는
                        이런 예외를 두지 않는다. 단, 3~4단계에서도 접종 완료자는
                        사적모임 제한의 예외로 적용받는다.”
                      </p>

                      <h3 class="title mb-3">
                        ―하반기에 우리 회사에서 포럼을 주최하려 하는데, 인원이
                        제한되나?
                      </h3>

                      <p>
                        “인원제한 없는 모임은 법령 등에 근거해 일정 인원 이상이
                        대면으로 모여야 하거나 시한이 정해져 취소나 연기가
                        불가한 경우 등이다. 예를 들어, 기업 정기 주주총회나
                        예산·법안 처리 등을 위한 국회 회의, 방송 제작·송출 등
                        기업의 필수 경영활동 및 공무에 필요한 경우를 말한다.
                        이밖에 법인·단체·공공기관·국가 등에서 개최하는 축제,
                        설명회, 공청회, 기념일 행사, 기념식, 수련회, 사인회,
                        강연, 대회, 훈련 등은 1단계에선 500명 이상 지방자치단체
                        사전신고, 2단계는 100명 이상 금지, 3단계에서는 50명 이상
                        금지 등 단계별 기준을 적용한다. 집회도 1~3단계엔 유사한
                        기준을 적용하고 4단계에선 1인 시위 외엔 모두 금지하지만,
                        지자체별로 강화된 조처를 적용할 수 있다. 다만,
                        전시회·박람회, 국제회의·학술행사, 대규모 콘서트 등은
                        별도 방역 수칙을 적용해 운영한다. 전시회·박람회는
                        1단계에서 시설면적 4㎡당 1명, 2~4단계에서 6㎡당 1명이다.
                        국제회의·학술행사는 1단계에서 좌석 한 칸 띄우기 또는
                        좌석 간 1ｍ 거리두기, 2~4단계에선 좌석 두 칸 띄우기 또는
                        좌석 간 2ｍ 거리두기를 지켜야 한다. 페스티벌과 대규모
                        콘서트는 지정 좌석제로 운영하고, 2단계부터 5천명까지
                        허용한다.”
                      </p>

                      <p>
                        “마스크 착용은 개인 방역 5대 수칙과 시설 공통
                        방역수칙으로 모든 단계, 대부분 시설에서 계속 지켜야
                        한다. 사무 공간과 공용공간, 실내운동시설,
                        콜라텍·무도장에서 춤추는 동안, 유흥시설과 노래연습장에서
                        노래를 부를 때 모두 마스크를 써야 한다. 식당과 카페,
                        결혼식장, 장례식장, 피시방 등에서 음식을 섭취할 때 외엔
                        마스크를 써야 한다. 목욕장업소에서 탕 안, 발한실
                        이외에는 마스크를 벗는 행동이 금지한다. 이·미용업에서
                        면도나 메이크업, 얼굴관리 등 부득이 마스크를 쓸 수 없을
                        경우를 제외하고는 마스크를 착용해야 한다. 다만, 백신
                        접종 인센티브로 1차 접종 뒤 14일이 지난 1차 접종자와 2차
                        접종(얀센은 1차 접종) 뒤 14일이 지나간 접종 완료자는
                        다음달부터 공원과 등산로 등 실외에서는 마스크를 착용하지
                        않아도 된다. 다만 이들도 다수가 모이는 실외 집회나
                        행사에서는 마스크를 계속 착용해야 한다.”
                      </p>

                      <div class="video-banner-area video-popup mb-4">
                        <a
                          href="https://www.youtube.com/watch?v=9No-FiEInLA"
                          class="video-link mt-30"
                        >
                          <div class="single-popup-wrap">
                            <img
                              class="img-fluid"
                              src="assets/images/blog/blog-details-video.jpg"
                              alt=""
                            />
                            <div class="ht-popup-video video-button">
                              <div class="video-mark">
                                <div class="wave-pulse wave-pulse-1"></div>
                                <div class="wave-pulse wave-pulse-2"></div>
                              </div>
                              <div class="video-button__two">
                                <div class="video-play">
                                  <span class="video-play-icon"></span>
                                </div>
                              </div>
                            </div>
                          </div>
                        </a>
                      </div>

                      <p>
                        “마스크 착용은 개인 방역 5대 수칙과 시설 공통
                        방역수칙으로 모든 단계, 대부분 시설에서 계속 지켜야
                        한다. 사무 공간과 공용공간, 실내운동시설,
                        콜라텍·무도장에서 춤추는 동안, 유흥시설과 노래연습장에서
                        노래를 부를 때 모두 마스크를 써야 한다. 식당과 카페,
                        결혼식장, 장례식장, 피시방 등에서 음식을 섭취할 때 외엔
                        마스크를 써야 한다. 목욕장업소에서 탕 안, 발한실
                        이외에는 마스크를 벗는 행동이 금지한다. 이·미용업에서
                        면도나 메이크업, 얼굴관리 등 부득이 마스크를 쓸 수 없을
                        경우를 제외하고는 마스크를 착용해야 한다. 다만, 백신
                        접종 인센티브로 1차 접종 뒤 14일이 지난 1차 접종자와 2차
                        접종(얀센은 1차 접종) 뒤 14일이 지나간 접종 완료자는
                        다음달부터 공원과 등산로 등 실외에서는 마스크를 착용하지
                        않아도 된다. 다만 이들도 다수가 모이는 실외 집회나
                        행사에서는 마스크를 계속 착용해야 한다.”
                      </p>

                      <h3 class="title mb-3">
                        All of these amazing features come at an affordable
                        price!
                      </h3>

                      <p>
                        “마스크 착용은 개인 방역 5대 수칙과 시설 공통
                        방역수칙으로 모든 단계, 대부분 시설에서 계속 지켜야
                        한다. 사무 공간과 공용공간, 실내운동시설,
                        콜라텍·무도장에서 춤추는 동안, 유흥시설과 노래연습장에서
                        노래를 부를 때 모두 마스크를 써야 한다. 식당과 카페,
                        결혼식장, 장례식장, 피시방 등에서 음식을 섭취할 때 외엔
                        마스크를 써야 한다. 목욕장업소에서 탕 안, 발한실
                        이외에는 마스크를 벗는 행동이 금지한다. 이·미용업에서
                        면도나 메이크업, 얼굴관리 등 부득이 마스크를 쓸 수 없을
                        경우를 제외하고는 마스크를 착용해야 한다. 다만, 백신
                        접종 인센티브로 1차 접종 뒤 14일이 지난 1차 접종자와 2차
                        접종(얀센은 1차 접종) 뒤 14일이 지나간 접종 완료자는
                        다음달부터 공원과 등산로 등 실외에서는 마스크를 착용하지
                        않아도 된다. 다만 이들도 다수가 모이는 실외 집회나
                        행사에서는 마스크를 계속 착용해야 한다.”
                      </p>

                      <blockquote class="blockquote-box">
                        <p class="blockquote-text">
                          방역수칙 안 지키면 어떻게 되나?
                        </p>
                      </blockquote>

                      <p>
                        “개인이 방역수칙을 위반해 확진되면 입원·격리자에게
                        지급하는 생활지원금을 받지 못한다. 방역수칙 위반으로
                        집단 감염이 발생하면 위반자에게 구상권을 적극 행사하기로
                        했다. 위반 업소는 300만원 이하 과태료 부과와 함께 2주
                        동안 집합이 금지되고, 손실보상금·재난지원금 등 보상에서
                        제외된다.”
                      </p>

                      <p>
                        “개인이 방역수칙을 위반해 확진되면 입원·격리자에게
                        지급하는 생활지원금을 받지 못한다. 방역수칙 위반으로
                        집단 감염이 발생하면 위반자에게 구상권을 적극 행사하기로
                        했다. 위반 업소는 300만원 이하 과태료 부과와 함께 2주
                        동안 집합이 금지되고, 손실보상금·재난지원금 등 보상에서
                        제외된다.”
                      </p>

                      <div class="blog-details-tag-and-share-area">
                        <div class="post-tag">
                          <a href="#" class="btn-medium fashion">패션</a>
                          <a href="#" class="btn-medium health">헬스케어</a>
                          <a href="#" class="btn-medium travel">여행</a>
                        </div>
                        <ul class="social-share-area">
                          <li>
                            <a href="#"><i class="icofont-facebook"></i></a>
                          </li>
                          <li>
                            <a href="#"><i class="icofont-skype"></i></a>
                          </li>
                          <li>
                            <a href="#"><i class="icofont-twitter"></i></a>
                          </li>
                        </ul>
                      </div>
                    </div>

                    <!-- 관련글영역 Start -->
                    <div class="related-post-area section-space--pt_60">
                      <div class="row">
                        <div class="col-lg-8 col-7">
                          <div class="section-title mb-30">
                            <h3 class="title">관련 글</h3>
                          </div>
                        </div>
                        <div class="col-lg-4 col-5">
                          <div class="related-post-slider-navigation text-end">
                            <div
                              class="related-post-button-prev navigation-button"
                            >
                              <i class="icofont-long-arrow-left"></i>
                            </div>
                            <div
                              class="related-post-button-next navigation-button"
                            >
                              <i class="icofont-long-arrow-right"></i>
                            </div>
                          </div>
                        </div>
                      </div>
                      <!-- Swiper -->
                      <div class="swiper-container related-post-slider-active">
                        <div class="swiper-wrapper">
                          <div class="swiper-slide">
                            <!-- 싱글 관련글 Start -->
                            <div class="single-related-post">
                              <div class="related-post-thum">
                                <img src="assets/images/blog/01.jpg" alt="" />
                              </div>
                              <div class="following-post-content">
                                <div class="following-blog-post-top">
                                  <div class="trending-blog-post-category">
                                    <a href="#">비즈니스</a>
                                  </div>
                                  <div class="following-blog-post-author">
                                    By <a href="#">홍길동</a>
                                  </div>
                                </div>
                                <h5 class="following-blog-post-title">
                                  <a href="#"
                                    >올 추석에 인원제한 없이 가족 모임 할 수
                                    있나요?
                                  </a>
                                </h5>
                                <div class="following-blog-post-meta">
                                  <div class="post-meta-left-side">
                                    <span class="post-date">
                                      <i class="icofont-ui-calendar"></i>
                                      <a href="#">2021.06.15</a>
                                    </span>
                                    <span>10분 읽기</span>
                                  </div>
                                  <div class="post-meta-right-side">
                                    <a href="#"
                                      ><img
                                        src="assets/images/icons/small-bookmark.png"
                                        alt=""
                                    /></a>
                                    <a href="#"
                                      ><img
                                        src="assets/images/icons/heart.png"
                                        alt=""
                                    /></a>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <!-- Single Following Post End -->
                          </div>
                          <div class="swiper-slide">
                            <!-- Single Following Post Start -->
                            <div class="single-related-post">
                              <div class="related-post-thum">
                                <img src="assets/images/blog/02.jpg" alt="" />
                              </div>
                              <div class="following-post-content">
                                <div class="following-blog-post-top">
                                  <div class="trending-blog-post-category">
                                    <a href="#">비즈니스</a>
                                  </div>
                                  <div class="following-blog-post-author">
                                    By <a href="#">홍길동</a>
                                  </div>
                                </div>
                                <h5 class="following-blog-post-title">
                                  <a href="#"
                                    >올 추석에 인원제한 없이 가족 모임 할 수
                                    있나요?
                                  </a>
                                </h5>
                                <div class="following-blog-post-meta">
                                  <div class="post-meta-left-side">
                                    <span class="post-date">
                                      <i class="icofont-ui-calendar"></i>
                                      <a href="#">2021.06.15</a>
                                    </span>
                                    <span>10분 읽기</span>
                                  </div>
                                  <div class="post-meta-right-side">
                                    <a href="#"
                                      ><img
                                        src="assets/images/icons/small-bookmark.png"
                                        alt=""
                                    /></a>
                                    <a href="#"
                                      ><img
                                        src="assets/images/icons/heart.png"
                                        alt=""
                                    /></a>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <!-- Single Following Post End -->
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- Related Post Area End -->

                    <!-- Comment Area Start -->
                    <div class="comment-area section-space--pt_60">
                      <div class="section-title">
                        <h3 class="title">댓글</h3>
                      </div>
                      <form action="#" class="comment-form-area">
                        <div class="row">
                          <div class="col-lg-6">
                            <div class="single-input">
                              <input type="text" placeholder="이름" />
                            </div>
                          </div>
                          <div class="col-lg-6">
                            <div class="single-input">
                              <input type="email" placeholder="이메일" />
                            </div>
                          </div>
                          <div class="col-lg-12">
                            <div class="single-input">
                              <textarea
                                name="textarea"
                                placeholder="메시지"
                              ></textarea>
                            </div>
                          </div>
                          <div class="col-lg-12">
                            <div class="submit-button text-center">
                              <button
                                class="btn-large btn-primary"
                                type="submit"
                              >
                                등록 <i class="icofont-long-arrow-right"></i>
                              </button>
                            </div>
                          </div>
                        </div>
                      </form>
                    </div>
                    <!-- Comment Area End -->
                  </div>
                </div>
                <!-- blog details Post End -->
              </div>
              <div class="blog-details-col-4">
                <div class="following-author-area">
                  <div class="author-image">
                    <img src="assets/images/author/author-01.png" alt="" />
                  </div>
                  <div class="author-title">
                    <h4><a href="#">홍길동</a></h4>
                    <p>작가, 개발자</p>
                  </div>
                  <div class="author-details">
                    <p>
                      동해 물과 백두산이 마르고 닳도록 하느님이 보우하사
                      우리나라 만세. 무궁화 삼천리 화려 강산 대한 사람, 대한으로
                      길이 보전하세.
                    </p>

                    <div class="author-post-share">
                      <ul class="social-share-area">
                        <li>
                          <a href="#"><i class="icofont-facebook"></i></a>
                        </li>
                        <li>
                          <a href="#"><i class="icofont-skype"></i></a>
                        </li>
                        <li>
                          <a href="#"><i class="icofont-twitter"></i></a>
                        </li>
                      </ul>
                    </div>

                    <div class="button-box">
                      <a href="#" class="btn"
                        >프로필 보기 <i class="icofont-long-arrow-right"></i
                      ></a>
                    </div>
                  </div>
                </div>

                <!-- Hero Category Area Start -->
                <div class="blog-details-category-area mt-5">
                  <a class="single-hero-category-item">
                    <img src="assets/images/catagory/technology.jpg" alt="" />
                    <div class="hero-category-inner-box">
                      <h3 class="title">비즈니스</h3>
                      <i class="icon icofont-long-arrow-right"></i>
                    </div>
                  </a>
                  <a class="single-hero-category-item">
                    <img src="assets/images/catagory/travel.jpg" alt="" />
                    <div class="hero-category-inner-box">
                      <h3 class="title">여행</h3>
                      <i class="icon icofont-long-arrow-right"></i>
                    </div>
                  </a>
                  <a class="single-hero-category-item">
                    <img src="assets/images/catagory/medical.jpg" alt="" />
                    <div class="hero-category-inner-box">
                      <h3 class="title">음식</h3>
                      <i class="icon icofont-long-arrow-right"></i>
                    </div>
                  </a>
                  <a class="single-hero-category-item">
                    <img src="assets/images/catagory/web.jpg" alt="" />
                    <div class="hero-category-inner-box">
                      <h3 class="title">기술</h3>
                      <i class="icon icofont-long-arrow-right"></i>
                    </div>
                  </a>
                </div>
                <!-- Hero Category Area End -->

                <!-- Latest Post Area Start -->
                <div class="latest-post-inner-wrap mt-5">
                  <div class="latest-post-header">
                    <div class="section-title">
                      <h4>최근 글</h4>
                    </div>
                    <div class="latest-post-slider-navigation">
                      <div class="latest-post-button-prev navigation-button">
                        <i class="icofont-long-arrow-left"></i>
                      </div>
                      <div class="latest-post-button-next navigation-button">
                        <i class="icofont-long-arrow-right"></i>
                      </div>
                    </div>
                  </div>
                  <div class="swiper-container latest-post-slider-active">
                    <div class="swiper-wrapper">
                      <div class="swiper-slide">
                        <div class="latest-post-box">
                          <!-- Single Latest Post Start -->
                          <div class="single-latest-post">
                            <div class="latest-post-thum">
                              <a href="#">
                                <img
                                  src="assets/images/latest-post/01.jpg"
                                  alt=""
                                />
                              </a>
                            </div>
                            <div class="latest-post-content">
                              <h6 class="title">
                                <a href="#!"
                                  >올 추석에 인원제한 없이 가족 모임 할 수
                                  있나요?</a
                                >
                              </h6>
                              <div class="latest-post-meta">
                                <span class="post-date">
                                  <i class="icofont-ui-calendar"></i>
                                  <a href="#">2021.06.15</a>
                                </span>
                                <span>10분 읽기</span>
                              </div>
                            </div>
                          </div>
                          <!-- Single Latest Post End -->
                          <!-- Single Latest Post Start -->
                          <div class="single-latest-post">
                            <div class="latest-post-thum">
                              <a href="#">
                                <img
                                  src="assets/images/latest-post/02.jpg"
                                  alt=""
                                />
                              </a>
                            </div>
                            <div class="latest-post-content">
                              <h6 class="title">
                                <a href="#!"
                                  >올 추석에 인원제한 없이 가족 모임 할 수
                                  있나요?</a
                                >
                              </h6>
                              <div class="latest-post-meta">
                                <span class="post-date">
                                  <i class="icofont-ui-calendar"></i>
                                  <a href="#">2021.06.15</a>
                                </span>
                                <span>10분 읽기</span>
                              </div>
                            </div>
                          </div>
                          <!-- Single Latest Post End -->
                          <!-- Single Latest Post Start -->
                          <div class="single-latest-post">
                            <div class="latest-post-thum">
                              <a href="#">
                                <img
                                  src="assets/images/latest-post/03.jpg"
                                  alt=""
                                />
                              </a>
                            </div>
                            <div class="latest-post-content">
                              <h6 class="title">
                                <a href="#!"
                                  >올 추석에 인원제한 없이 가족 모임 할 수
                                  있나요?</a
                                >
                              </h6>
                              <div class="latest-post-meta">
                                <span class="post-date">
                                  <i class="icofont-ui-calendar"></i>
                                  <a href="#">2021.06.15</a>
                                </span>
                                <span>10분 읽기</span>
                              </div>
                            </div>
                          </div>
                          <!-- Single Latest Post End -->
                          <!-- Single Latest Post Start -->
                          <div class="single-latest-post">
                            <div class="latest-post-thum">
                              <a href="#">
                                <img
                                  src="assets/images/latest-post/04.jpg"
                                  alt=""
                                />
                              </a>
                            </div>
                            <div class="latest-post-content">
                              <h6 class="title">
                                <a href="#!"
                                  >올 추석에 인원제한 없이 가족 모임 할 수
                                  있나요?</a
                                >
                              </h6>
                              <div class="latest-post-meta">
                                <span class="post-date">
                                  <i class="icofont-ui-calendar"></i>
                                  <a href="#">2021.06.15</a>
                                </span>
                                <span>10분 읽기</span>
                              </div>
                            </div>
                          </div>
                          <!-- Single Latest Post End -->
                          <!-- Single Latest Post Start -->
                          <div class="single-latest-post">
                            <div class="latest-post-thum">
                              <a href="#">
                                <img
                                  src="assets/images/latest-post/05.jpg"
                                  alt=""
                                />
                              </a>
                            </div>
                            <div class="latest-post-content">
                              <h6 class="title">
                                <a href="#!"
                                  >올 추석에 인원제한 없이 가족 모임 할 수
                                  있나요?</a
                                >
                              </h6>
                              <div class="latest-post-meta">
                                <span class="post-date">
                                  <i class="icofont-ui-calendar"></i>
                                  <a href="#">2021.06.15</a>
                                </span>
                                <span>10분 읽기</span>
                              </div>
                            </div>
                          </div>
                          <!-- Single Latest Post End -->
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- Latest Post Area End -->

                <div class="following-add-banner mt-5">
                  <a href="#">
                    <img
                      src="assets/images/banners/home-following-banner.png"
                      alt=""
                    />
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Blog Details Wrapper End -->
      </div>
    </div>
    <!--======  바닥글 영역  =======-->
    <footer class="footer-area footer-one">
      <div class="footer-bottom-area">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <div class="footer-bottom-inner">
                <div class="copy-right-text">
                  <p>© 2021 Blog by Jason Jaewoo, Kim.</p>
                </div>
                <div class="button-right-box"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!--=====  바닥글 영역 종료 ========-->

    <!--====================  search overlay ====================-->
    <div class="search-overlay" id="search-overlay">
      <div class="search-overlay__header">
        <div class="container-fluid">
          <div class="row align-items-center">
            <div class="col-md-12">
              <!-- search content -->
              <div class="search-content text-end">
                <span
                  class="mobile-navigation-close-icon"
                  id="search-close-trigger"
                ></span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="search-overlay__inner">
        <div class="search-overlay__body">
          <div class="search-overlay__form">
            <form action="#">
              <input type="text" placeholder="검색" />
            </form>
          </div>
        </div>
      </div>
    </div>
    <!--====================  End of search overlay  ====================-->
    <!--====================  scroll top ====================-->
    <a href="#" class="scroll-top" id="scroll-top">
      <i class="arrow-top icofont-swoosh-up"></i>
      <i class="arrow-bottom icofont-swoosh-up"></i>
    </a>
    <!--====================  End of scroll top  ====================-->

    <!--====================  mobile menu overlay ====================-->
    <div class="mobile-menu-overlay" id="mobile-menu-overlay">
      <div class="mobile-menu-overlay__inner">
        <div class="mobile-menu-overlay__header">
          <div class="container-fluid">
            <div class="row align-items-center">
              <div class="col-md-6 col-8">
                <!-- logo -->
                <div class="logo">
                  <a href="index.html">
                    <img
                      src="assets/images/logo/logo.png"
                      class="img-fluid"
                      alt=""
                    />
                  </a>
                </div>
              </div>
              <div class="col-md-6 col-4">
                <!-- mobile menu content -->
                <div class="mobile-menu-content text-end">
                  <span
                    class="mobile-navigation-close-icon"
                    id="mobile-menu-close-trigger"
                  ></span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="mobile-menu-overlay__body">
          <nav class="offcanvas-navigation">
            <ul>
              <li>
                <a href="index.html"><span>홈</span></a>
              </li>
              <li>
                <a href="about-us.html"><span>소개</span></a>
              </li>
              <li>
                <a href="category.html"><span>카테고리</span></a>
              </li>

              <li class="has-children">
                <a href="#">기타페이지</a>
                <ul class="sub-menu">
                  <li>
                    <a href="blog-details.html"
                      ><span>블로그 상세페이지</span></a
                    >
                  </li>
                  <li>
                    <a href="author-post.html"><span>작성자 글</span></a>
                  </li>
                  <li>
                    <a href="register.html"><span>회원가입</span></a>
                  </li>
                  <li>
                    <a href="write-post.html"><span>글쓰기</span></a>
                  </li>
                </ul>
              </li>
              <li>
                <a href="contact-us.html"><span>연락 </span></a>
              </li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
    <!--====================  End of mobile menu overlay  ====================-->

    <!-- JS
    ============================================ -->
    <!-- Modernizer JS -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>

    <!-- jQuery JS -->
    <script src="assets/js/vendor/jquery-3.5.1.min.js"></script>
    <script src="assets/js/vendor/jquery-migrate-3.3.0.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="assets/js/vendor/bootstrap.min.js"></script>

    <!-- Light gallery JS -->
    <script src="assets/js/plugins/lightgallery.min.js"></script>

    <!-- Isotope JS -->
    <script src="assets/js/plugins/isotope.min.js"></script>

    <!-- Masonry JS -->
    <script src="assets/js/plugins/masonry.min.js"></script>

    <!-- ImagesLoaded JS -->
    <script src="assets/js/plugins/images-loaded.min.js"></script>

    <!-- Swiper Bundle JS -->
    <script src="assets/js/plugins/swiper-bundle.min.js"></script>

    <!-- AOS JS -->
    <script src="assets/js/plugins/aos.js"></script>

    <!-- Ajax JS -->
    <script src="assets/js/plugins/ajax.mail.js"></script>

    <!-- Plugins JS (Please remove the comment from below plugins.min.js for better website load performance and remove plugin js files from avobe) -->
    <!-- <script src="assets/js/vendor/vendor.min.js"></script>
    <script src="assets/js/plugins/plugins.min.js"></script> -->

    <!-- Main JS -->
    <script src="assets/js/main.js"></script>
  </body>
</html>
