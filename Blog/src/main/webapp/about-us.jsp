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
                <li class="breadcrumb-item active">소개</li>
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
        <!-- 소개 영상 영역 시작  -->
        <div class="about-video-area section-space--ptb_60">
          <div class="container">
            <div class="row">
              <div class="col-lg-12 video-popup">
                <a
                  href="https://www.youtube.com/watch?v=9No-FiEInLA"
                  class="video-link mt-30"
                >
                  <!-- 영상 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1 -->
                  <div class="single-popup-wrap">
                    <img
                      class="img-fluid"
                      src="assets/images/banners/about-video-banner.jpg"
                      alt=""
                    />
                    <!-- 영상 썸네일 사진 -->
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
            </div>
          </div>
        </div>
        <!-- 소개 영상 영역 종료 -->

        <div class="about-history-area">
          <div class="container">
            <div class="row">
              <div class="col-lg-4">
                <div class="single-platform-box" data-aos="fade-up">
                  <div class="platform-icon">
                    <img src="assets/images/icons/open-platform.png" alt="" />
                  </div>
                  <div class="platform-content">
                    <h3 class="title">개발자</h3>
                    <p>
                      동해 물과 백두산이 마르고 닳도록 하느님이 보우하사
                      우리나라 만세. 무궁화 삼천리 화려 강산 대한 사람, 대한으로
                      길이 보전하세.
                    </p>
                    <p>
                      동해 물과 백두산이 마르고 닳도록 하느님이 보우하사
                      우리나라 만세. 무궁화 삼천리 화려 강산 대한 사람, 대한으로
                      길이 보전하세.
                    </p>
                  </div>
                </div>
              </div>
              <div class="col-lg-8">
                <div class="single-platform-box platform-d-flex">
                  <div class="platform-content-box" data-aos="fade-up">
                    <div class="platform-icon">
                      <img
                        src="assets/images/icons/digital-publishing.png"
                        alt=""
                      />
                    </div>
                    <div class="platform-content">
                      <h3 class="title">블로그</h3>
                      <p>
                        동해 물과 백두산이 마르고 닳도록 하느님이 보우하사
                        우리나라 만세. 무궁화 삼천리 화려 강산 대한 사람,
                        대한으로 길이 보전하세.
                      </p>
                      <p>
                        동해 물과 백두산이 마르고 닳도록 하느님이 보우하사
                        우리나라 만세. 무궁화 삼천리 화려 강산 대한 사람,
                        대한으로 길이 보전하세.
                      </p>
                    </div>
                  </div>
                  <div class="plateform-image-box" data-aos="fade-up">
                    <div class="plateforem-image">
                      <img
                        src="assets/images/banners/about-ex-share.jpg"
                        alt=""
                      />
                      <div class="platform-box-button">
                        <a href="contact-us.html" class="btn-primary btn-large"
                          >당신의 생각을 공유하세요
                          <i class="icofont-long-arrow-right"></i
                        ></a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!--  History Area Start -->
        <div class="bunzo-history-area section-space--pt_60">
          <div class="container">
            <div class="row">
              <div class="col-lg-12">
                <div class="bunzo-row">
                  <div class="bunzo-col-6" data-aos="fade-up">
                    <h2 class="bunzo-history-title">
                      You Can <span class="f-w-bold">Read</span> And
                      <span class="f-w-bold">Write</span> With Blog.
                    </h2>
                  </div>
                  <div class="bunzo-col-6">
                    <div class="single-history-item" data-aos="fade-up">
                      <h3 class="title mb-20">비젼</h3>
                      <p>
                        동해 물과 백두산이 마르고 닳도록 하느님이 보우하사
                        우리나라 만세. 무궁화 삼천리 화려 강산 대한 사람,
                        대한으로 길이 보전하세. 동해 물과 백두산이 마르고 닳도록
                        하느님이 보우하사 우리나라 만세. 무궁화 삼천리 화려 강산
                        대한 사람, 대한으로 길이 보전하세.
                      </p>
                    </div>
                    <div class="single-history-item" data-aos="fade-up">
                      <h3 class="title mb-20">블로그 히스토리</h3>
                      <p>
                        동해 물과 백두산이 마르고 닳도록 하느님이 보우하사
                        우리나라 만세. 무궁화 삼천리 화려 강산 대한 사람,
                        대한으로 길이 보전하세. 동해 물과 백두산이 마르고 닳도록
                        하느님이 보우하사 우리나라 만세. 무궁화 삼천리 화려 강산
                        대한 사람, 대한으로 길이 보전하세.
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!--  History Area End -->
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
