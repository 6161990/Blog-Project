<%@page import="dao.CategoryDAO"%>
<%@page import="dao.PostDAO"%>
<%@page import="dto.PostBean"%>
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

    <!-- Main Style CSS -->
    <link rel="stylesheet" href="assets/css/style.css" />
  </head>

  <body>
  <% if(session.getAttribute("member")==null){ %>
    <jsp:forward page="login.jsp" /> 
  <% } %>
  
  <%
	//해당 게시글 번호를 통하여 게시글을 수정
	int post_idx =Integer.parseInt(request.getParameter("post_idx").trim());

	//하나의 게시글에 대한 정보를 리턴
	PostDAO pdao = new PostDAO();
	PostBean post = pdao.getOnePostForUpdate(post_idx);
	
	CategoryDAO cdao = new CategoryDAO();
	String categoryName = cdao.getCategoryName(post.getPost_category_idx());
%>
    <!--========  헤더영역  =========-->
    <header class="header">
     
      <div class="header-mid-area">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-lg-3 col-md-2 col-5">
              <div class="logo">
                <a href="./IndexPostList">
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
                <a href="./forMemberInfo" class="single-action-item">
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
                      <a href="./IndexPostList"><span>홈</span></a>
                    </li>
                    <li>
                      <a href="about-us.jsp"><span>소개</span></a>
                    </li>
                    <li class="has-children">
                      <a href="#"><span>기타페이지</span></a>
                      <ul class="submenu">
                        <li>
                           <a href="./PostDetailProc"
                            ><span>내가 최근에 쓴 글</span></a
                          >
                        </li>
                        <li>
                          <a href="./PostListProc"><span>나의 글 목록</span></a>
                        </li>
                        <li>
                          <a href="register.jsp"><span>회원가입</span></a>
                        </li>
                        <li>
                          <a href="./forWritePost"><span>글작성</span></a>
                        </li>
                      </ul>
                    </li>
                    <li>
                      <a href="contact-us.jsp"><span> 문의하기 </span></a>
                    </li>
                    <% if(session.getAttribute("member")!=null){ %>
   						<li>
                      		<button class="btn-primary logout" onclick="location.href='./LogoutProc'">로그아웃</button>
                    	</li> 
    				<% } %>
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
                <li class="breadcrumb-item"><a href="./IndexPostList">홈</a></li>
                <li class="breadcrumb-item active">글작성</li>
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
                  <!-- writing Area Start -->
                  <div class="comment-area section-space--pt_60">
                    <div class="section-title">
                      <h3 class="title writing">글 수정하기</h3>
                    </div>
                    <form action="./PostUpdateProc" method="post" class="comment-form-area">
                      <div class="row">
                        <div class="col-lg-6">
                            <div class="single-input category">
                              <select name="post_category_idx">
                                <option value="<%=post.getPost_category_idx() %>"><%=categoryName %></option>
                                <option value="1"> 영화리뷰</option>
                                <option value="2"> 기사 </option>
                                <option value="3"> 랭킹 </option>
                                <option value="4"> 전문가평점 & 리뷰 </option>
                            </select> <!-- input 넓이 정리  -->
                            </div>
                     	</div>
                        <div class="col-lg-6">
                          <div class="single-input email">
                            <input type="email" placeholder="이메일" value ="${member.member_email}" readonly />
                          </div>
                        </div>
                       
                          <div class="single-input title">
                            <input type="text" placeholder="제목" name="post_title" value="<%=post.getPost_title() %>"/>
                          </div>
                        
                        <div class="col-lg-12">
                          <div class="single-input">
                            <textarea name="post_content" placeholder="내용"><%=post.getPost_content() %></textarea>
                          </div>
                        </div>
                        <div class="col-lg-6">
                             <div class="single-input">
                              <input type="text" placeholder="#해시태그" name="post_tag1" value="<%=post.getPost_tag1() %>"/>  
                            </div>
                             <div class="single-input">
                              <input type="text" placeholder="#해시태그" name="post_tag2" value="<%=post.getPost_tag2() %>"/>  
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="single-input email">
                              <input type="file" placeholder="이미지" name="!!!!!!미정" value ="[이미지파일]" readonly />
                            </div>
                        </div>
                        <!-- hidden 값 -->
                        <input type="hidden" name="post_idx" value ="<%=post.getPost_idx() %>" />
                       
                        <div class="col-lg-12">
                          <div class="submit-button text-center">
                            <a><button class="btn-large btn-primary" type="submit">
                              등록 <i class="icofont-long-arrow-right"></i>
                            </button></a>
                          </div>
                        </div>  
                                  
                    </form>
                  </div>
                  <!-- writing Area End -->
                </div>

                <!-- blog details Post End -->
              
            
            </div>
          </div>
        </div>
        <!-- Blog Details Wrapper End --> -
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
                  <a href="./IndexPostList">
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
                <a href="./IndexPostList"><span>홈</span></a>
              </li>
              <li>
                <a href="about-us.jsp"><span>소개</span></a>
              </li>
              <li>
                <a href="category.jsp"><span>카테고리</span></a>
              </li>

              <li class="has-children">
                <a href="#">기타페이지</a>
                <ul class="sub-menu">
                  <li>
                    <a href="blog-details.jsp"
                      ><span>블로그 상세페이지</span></a
                    >
                  </li>
                  <li>
                    <a href="author-post.jsp"><span>작성자 글</span></a>
                  </li>
                  <li>
                    <a href="register.jsp"><span>회원가입</span></a>
                  </li>
                  <li>
                    <a href="write-post.jsp"><span>글쓰기</span></a>
                  </li>
                </ul>
              </li>
              <li>
                <a href="contact-us.jsp"><span>연락 </span></a>
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
