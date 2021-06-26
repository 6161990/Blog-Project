<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
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

    <!-- Main Style CSS -->
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
                <li class="breadcrumb-item active">내 프로필</li>
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
        <div
          class="
            contact-us-page-area
            section-space--pt_70 section-space--pb_100
          "
        >
          <div class="container">
            <div class="contact-from section-space--pt_80">
              <div class="row align-items-center">
                <div class="following-author-area">
                  <div class="author-image1">
                    <img src="assets/images/author/author-001.jpg" alt="" />
                  </div>
                  <div class="author-title add">
                    <h4 class="author-name"><a href="#">여을심(${member.id} })</a></h4>
                    <p>작가, 개발자</p>
                  </div>
                  <div class="author-details">
                    <p>
                      <strong>여을심은 열심중</strong>
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
                      <a href="profilePass.jsp" class="btn"
                        >프로필 수정하기 <i class="icofont-long-arrow-right"></i
                      ></a>
                    </div>
                  </div>
               
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!--======  footer area =======-->
    <footer class="footer-area footer-one">
      <div class="footer-bottom-area">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <div class="footer-bottom-inner">
                <div class="copy-right-text">
                  <p>© 2021 BLOG by Jason Jaewoo Kim.</p>
                </div>
                <div class="button-right-box"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!--=====  End of footer area ========-->

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
              <li class="has-children">
                <a href="index.html">Home</a>
                <ul class="sub-menu">
                  <li>
                    <a href="index-2.html"><span>Home Two</span></a>
                  </li>
                  <li>
                    <a href="index-3.html"><span>Home Three</span></a>
                  </li>
                  <li>
                    <a href="index-4.html"><span>Home Four</span></a>
                  </li>
                  <li>
                    <a href="index-5.html"><span>Home Five</span></a>
                  </li>
                  <li>
                    <a href="index-6.html"><span>Home Six</span></a>
                  </li>
                </ul>
              </li>
              <li>
                <a href="about-us.html"><span>About</span></a>
              </li>
              <li class="has-children">
                <a href="#">Category</a>
                <ul class="sub-menu">
                  <li>
                    <a href="category.html"><span>Category List</span></a>
                  </li>
                  <li>
                    <a href="category-grid.html"><span>Category Grid</span></a>
                  </li>
                </ul>
              </li>
              <li class="has-children">
                <a href="#">Pages</a>
                <ul class="sub-menu">
                  <li>
                    <a href="blog-details.html"><span>Blog Details</span></a>
                  </li>
                  <li>
                    <a href="blog-details-two.html"
                      ><span>Blog Details Two</span></a
                    >
                  </li>
                  <li>
                    <a href="error-404.html"><span>Error 404</span></a>
                  </li>
                  <li>
                    <a href="faq.html"><span>FAQ's</span></a>
                  </li>
                  <li>
                    <a href="author-post.html"><span>Author post</span></a>
                  </li>
                  <li>
                    <a href="register.html"><span>Register</span></a>
                  </li>
                  <li>
                    <a href="write-post.html"><span>Write Post</span></a>
                  </li>
                </ul>
              </li>
              <li>
                <a href="contact-us.html"><span>Contact </span></a>
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
