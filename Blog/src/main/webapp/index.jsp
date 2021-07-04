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
    <link rel="stylesheet" href="assets/css/style.css?after" />
  </head>

  <body>
<% if(session.getAttribute("randomList")==null){ %>
    <jsp:forward page="./IndexPostList" /> 
<% } %>
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

    <div id="main-wrapper">
      <div class="site-wrapper-reveal">
        <!-- 히어로 영역 시작 -->
        <div class="hero-area">
          <div class="container">
            <div class="row">
              <div class="col-lg-12">
                <div class="hero-inner-area">
                  <!-- 히어로 카테고리 영역 시작 -->
                  <div class="hero-category-area">
                    <a
                      href="category.jsp"
                      class="single-hero-category-item"
                      data-aos="fade-up"
                    >
                      <img src="assets/images/catagory/technology.jpg" alt="" />
                      <!-- 375x165 -->
                      <div class="hero-category-inner-box">
                        <h3 class="title">영화리뷰</h3>
                        <i class="icon icofont-long-arrow-right"></i>
                      </div>
                    </a>
                    <a
                      href="category.jsp"
                      class="single-hero-category-item"
                      data-aos="fade-up"
                    >
                      <img src="assets/images/catagory/travel.jpg" alt="" />
                      <div class="hero-category-inner-box">
                        <h3 class="title">기사</h3>
                        <i class="icon icofont-long-arrow-right"></i>
                      </div>
                    </a>
                    <a
                      href="category.jsp"
                      class="single-hero-category-item"
                      data-aos="fade-up"
                    >
                      <img src="assets/images/catagory/medical.jpg" alt="" />
                      <div class="hero-category-inner-box">
                        <h3 class="title">랭킹</h3>
                        <i class="icon icofont-long-arrow-right"></i>
                      </div>
                    </a>
                    <a
                      href="category.jsp"
                      class="single-hero-category-item"
                      data-aos="fade-up"
                    >
                      <img src="assets/images/catagory/web.jpg" alt="" />
                      <div class="hero-category-inner-box">
                        <h3 class="title">전문가리뷰</h3>
                        <i class="icon icofont-long-arrow-right"></i>
                      </div>
                    </a>
                  </div>
                  <!-- 히어로 카테고리 영역 종료 -->

                  <!-- 히어로 배너 영역 시작 -->
                  
                  <div class="hero-banner-area" data-aos="fade-up">
                    <a href="blog-details.jsp">
                      <img src="assets/images/hero/main01.jpg" alt="" />
                    </a>
                  </div>
                  <!-- 히어로 배너 영역 종료 -->
                  
                  <div class="hero-blog-post">
                    <!-- 싱글 히어로 블로그 시작 -->
                   <c:forEach var="rPost" items="${randomList}">
                    <h3 class="hero-blog-post-title"> 📌 오늘의 랜덤리뷰 </h3>
                    <div class="single-hero-blog-post" data-aos="fade-up">
                      <div class="hero-blog-post-top">
                        <div class="hero-blog-post-category">
                        <a href="#" class="business">
                          <c:choose>
						    <c:when test="${rPost.post_category_idx == 1}">
						            영화리뷰
						    </c:when>
						    <c:when test="${rPost.post_category_idx == 2}">
						            기사
						    </c:when> 
						    <c:when test="${rPost.post_category_idx == 3}">
						          	랭킹
						    </c:when>          
						    <c:otherwise>
						       전문가리뷰&평점
						    </c:otherwise>
						 </c:choose> 
						 </a>
                        </div>
                        <div class="hero-blog-post-author">
                          By <a href="#">edongjin</a>
                        </div>
                      </div>
                      <h3 class="hero-blog-post-title">
                      <a href="<c:url value="./PostDetailProc" >             
					  	<c:param name="aList_post_idx" value="${rPost.post_idx}"></c:param>
					  	</c:url>">${rPost.post_title}</a>
                      </h3>
                      <p class="post-short-details">
                      <a href="<c:url value="./PostDetailProc" >             
					  	<c:param name="aList_post_idx" value="${rPost.post_idx}"></c:param>
					  	</c:url>">${rPost.post_content}</a>
                      </p>
                      <div class="hero-blog-post-meta">
                        <div class="post-meta-left-side">
                          <span class="post-date">
                            <i class="icofont-ui-calendar"></i>
                            <a href="#"> ${rPost.post_regdate}</a>
                          </span>
                          <span> 조회수 ${rPost.post_cnt}</span>
                        </div>
                        <div class="post-meta-right-side">
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
                      
                    </div>
                    </c:forEach>
                    <!-- 싱글 히어로 블로그 종료 -->
                  </div>
                  
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- Hero Area End -->

 	<!-- Trending Article Area Start -->
            <div class="trending-article-area section-space--ptb_80">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-7">
                            <div class="section-title mb-40">
                                <h3>인기 글</h3>
                            </div>
                        </div>
                        <div class="col-lg-4 col-5">
                            <div class="trending-slider-navigation text-end">
                                <div class="trending-button-prev navigation-button"><i class="icofont-long-arrow-left"></i></div>
                                <div class="trending-button-next navigation-button"><i class="icofont-long-arrow-right"></i></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-12">

               <!-- Swiper -->
                <div class="swiper-container trending-slider-active">
                   <div class="swiper-wrapper">
                      <div class="swiper-slide">
                          <div class="trending-article-row">
                            <!-- Trending Article Left Side Start -->
                      	       <div class="trending-article-left-side">
                                    <!-- Trending Single Item Start -->
                                       <c:forEach var="pPost" items="${popPostList}" begin="1" end="3">
                          		          <article class="trending-single-item" data-aos="fade-up">
                                             <div class="trending-post-thum">
					                          <a href="<c:url value="./PostDetailProc" >             
								   			  <c:param name="aList_post_idx" value="${pPost.post_idx}"></c:param>
										      </c:url>">
					                          <img src="assets/images/trending/1-trending-img.jpg" alt=""/></a>
					                         </div>
                                                 <div class="trending-post-content">
                                                     <div class="trending-blog-post-top">
                                                         <div class="trending-blog-post-category">
                                                             <a href="#" class="fashion">
                                                             <c:choose>
													    <c:when test="${pPost.post_category_idx == 1}">
													             영화리뷰
													    </c:when>
													    <c:when test="${rPost.post_category_idx == 2}">
													            기사
												    </c:when> 
													    <c:when test="${pPost.post_category_idx == 3}">
													          	랭킹
														    </c:when>          
													    <c:otherwise>
													       전문가리뷰&평점
													    </c:otherwise>
													 </c:choose> 
                                                             </a>
                                                         </div>
                                                     </div>
                                                     <h5 class="trending-blog-post-title">
                                                         <a href="<c:url value="./PostDetailProc" >             
											  			<c:param name="aList_post_idx" value="${pPost.post_idx}"></c:param>
											  		 	</c:url>">${pPost.post_title} 
						                               	 </a>
                                                     </h5>
                                                     <div class="trending-blog-post-meta">
                                                         <div class="post-meta-left-side">
                                                             <span class="post-date">
                                                             <i class="icofont-ui-calendar"></i> 
													  <a href="#">${pPost.post_regdate}</a>
					                                  </span>
					                                  <span>조회수 ${pPost.post_cnt}</span>
                                                         </div>
                                                         <div class="post-meta-right-side">
                                                             <a href="#"><img src="assets/images/icons/small-bookmark.png" alt="" /></a>
                                                             <a href="#"><img src="assets/images/icons/heart.png" alt="" /></a>
                                                         </div>
                                                     </div>
                                                 </div>
                                             </article>
                                             </c:forEach>
                                             <!-- Trending Single Item End -->
                                         </div><!-- Trending Article Left Side End -->

                                         <!-- Trending Article Right Side Start -->
                                         <div class="trending-article-right-side">
                                             <div class="large-banner-trending-article" data-aos="fade-up">
                                                 <div class="trending-large-post-thum">
                                                     <a href="blog-details.html">
                                                         <img src="assets/images/trending/4-trending-img.jpg" alt="">
                                                     </a>
                                                 </div>
                                                 <div class="trending-large-post-content">
                                                 
                                                     <!-- Trending Single Item Start -->
                                                      
                                                     <c:forEach var="pPost" items="${popPostList}" begin="4" end="5">
                                                     <article class="trending-single-item">
                                                         <div class="trending-post-content">
                                                             <div class="trending-blog-post-top">
                                                                 <div class="trending-blog-post-category">
                                                                     <a href="#" class="health"><c:choose>
														    <c:when test="${pPost.post_category_idx == 1}">
														             영화리뷰
														    </c:when>
														    <c:when test="${pPost.post_category_idx == 2}">
														            기사
														    </c:when> 
														    <c:when test="${pPost.post_category_idx == 3}">
														          	랭킹
														    </c:when>          
														    <c:otherwise>
														       전문가리뷰&평점
														    </c:otherwise>
														 </c:choose> </a>
                                                                 </div>
                                                             </div>
                                                              <h5 class="trending-blog-post-title">
					                                    <a href="<c:url value="./PostDetailProc" >             
										  			  <c:param name="aList_post_idx" value="${pPost.post_idx}"></c:param>
										  			  </c:url>">${pPost.post_title} 
					                               	  </a>
					                                 </h5>
                                                             <div class="trending-blog-post-meta">
                                                                 <div class="post-meta-left-side">
                                                                     <span class="post-date">
                                                                     <i class="icofont-ui-calendar"></i> 
                                                                     <a href="#">${pPost.post_regdate}</a>
						                                 	</span>
						                                  	<span>조회수 ${pPost.post_cnt}</span>
                                                                 </div>
                                                                 <div class="post-meta-right-side">
                                                                     <a href="#"><img src="assets/images/icons/small-bookmark.png" alt="" /></a>
                                                                     <a href="#"><img src="assets/images/icons/heart.png" alt="" /></a>
                                                                 </div>
                                                             </div>
                                                         </div>
                                                     </article><!-- Trending Single Item End -->
												</c:forEach>
                                                 </div>
                                                 	
                                             </div>

                                             <!-- 인기글 시작 -->
                                              <c:forEach var="pPost" items="${popPostList}" begin="6" end="6">
                                             <article class="trending-single-item" data-aos="fade-up">
                                                 <div class="trending-large-post-thum">
                                                   <a href="<c:url value="./PostDetailProc" >             
								  			<c:param name="aList_post_idx" value="${pPost.post_idx}"></c:param>
								  			</c:url>">
			                                  <img
			                                  src="assets/images/trending/5-trending-img.jpg"
			                                  alt=""
			                                /></a>
                                                 </div>
                                                 <div class="trending-post-content">
                                                     <div class="trending-blog-post-top">
                                                         <div class="trending-blog-post-category">
                                                             <a href="#" class="business"><c:choose>
												    <c:when test="${pPost.post_category_idx == 1}">
												             영화리뷰
												    </c:when>
												    <c:when test="${pPost.post_category_idx == 2}">
												            기사
												    </c:when> 
												    <c:when test="${pPost.post_category_idx == 3}">
												          	랭킹
												    </c:when>          
												    <c:otherwise>
												       전문가리뷰&평점
												    </c:otherwise>
												 </c:choose> </a>
                                                         </div>
                                                     </div>
			                                  <h5 class="trending-blog-post-title">
			                                    <a href="<c:url value="./PostDetailProc" >             
								  			  <c:param name="aList_post_idx" value="${pPost.post_idx}"></c:param>
								  			  </c:url>">${pPost.post_title} 
			                               	  </a>
			                                  </h5>
                                                     <div class="trending-blog-post-meta">
                                                         <div class="post-meta-left-side">
                                                             <span class="post-date">
                                                             <i class="icofont-ui-calendar"></i> 
                                                            <a href="#">${pPost.post_regdate}</a>
				                                  </span>
				                                   <span>조회수 ${pPost.post_cnt}</span>
                                                         </div>
                                                         <div class="post-meta-right-side">
                                                             <a href="#"><img src="assets/images/icons/small-bookmark.png" alt="" /></a>
                                                             <a href="#"><img src="assets/images/icons/heart.png" alt="" /></a>
                                                         </div>
                                                     </div>
                                                 </div>
                                             </article><!-- 인기글 종료 -->
                                            </c:forEach>
                                         </div><!-- 인기글 오른쪽사이드바 종료  -->
                                     </div>
                                 </div>
                                                                     <div class="swiper-slide">
                                     <div class="trending-article-row">
                                         <!-- 인기글 왼쪽 사이드 시작 -->
                                         <div class="trending-article-left-side">
                                             <!-- 인기글 시작  -->
                                             <c:forEach var="pPost" items="${popPostList}" begin="7" end="9">
                          		          <article class="trending-single-item" data-aos="fade-up">
                                             <div class="trending-post-thum">
			                          <a href="<c:url value="./PostDetailProc" >             
						   			  <c:param name="aList_post_idx" value="${pPost.post_idx}"></c:param>
								      </c:url>">
			                          <img src="assets/images/trending/1-trending-img.jpg" alt=""/></a>
			                         </div>
                                                 <div class="trending-post-content">
                                                     <div class="trending-blog-post-top">
                                                         <div class="trending-blog-post-category">
                                                             <a href="#" class="fashion">
                                                             <c:choose>
													    <c:when test="${pPost.post_category_idx == 1}">
													             영화리뷰
													    </c:when>
													    <c:when test="${rPost.post_category_idx == 2}">
													            기사
													    </c:when> 
													    <c:when test="${pPost.post_category_idx == 3}">
													          	랭킹
													    </c:when>          
													    <c:otherwise>
													       전문가리뷰&평점
													    </c:otherwise>
													 </c:choose> 
                                                             </a>
                                                         </div>
                                                     </div>
                                                     <h5 class="trending-blog-post-title">
                                                         <a href="<c:url value="./PostDetailProc" >             
									  			<c:param name="aList_post_idx" value="${pPost.post_idx}"></c:param>
									  		 	</c:url>">${pPost.post_title} 
				                               	 </a>
                                                     </h5>
                                                     <div class="trending-blog-post-meta">
                                                         <div class="post-meta-left-side">
                                                             <span class="post-date">
                                                             <i class="icofont-ui-calendar"></i> 
													  <a href="#">${pPost.post_regdate}</a>
					                                  </span>
					                                  <span>조회수 ${pPost.post_cnt}</span>
                                                         </div>
                                                         <div class="post-meta-right-side">
                                                             <a href="#"><img src="assets/images/icons/small-bookmark.png" alt="" /></a>
                                                             <a href="#"><img src="assets/images/icons/heart.png" alt="" /></a>
                                                         </div>
                                                     </div>
                                                 </div>
                                             </article>
                                             </c:forEach><!-- Trending Single Item End -->
                                         </div><!-- 인기글 왼쪽 사이드 종료 -->

                                         <!-- 인기글 오른쪽 사이드 시작  -->
                                         <div class="trending-article-right-side">
                                             <div class="large-banner-trending-article" data-aos="fade-up">
                                                 <div class="trending-large-post-thum">
                                                     <a href="blog-details.html">
                                                         <img src="assets/images/trending/4-trending-img.jpg" alt="">
                                                     </a>
                                                 </div>
                                                 <div class="trending-large-post-content">
                                                     <!-- 인기글 시작 -->
                                                     <c:forEach var="pPost" items="${popPostList}" begin="10" end="11">
                                                         <article class="trending-single-item" data-aos="fade-up">
                                                          <div class="trending-post-thum">
                                                            <a href="<c:url value="./PostDetailProc" >             
                                                               <c:param name="aList_post_idx" value="${pPost.post_idx}"></c:param>
                                                            </c:url>">
                                                            </a>
                                                           </div>
                                                              <div class="trending-post-content">
                                                                  <div class="trending-blog-post-top">
                                                                      <div class="trending-blog-post-category">
                                                                          <a href="#" class="fashion">
                                                                          <c:choose>
                                                                              <c:when test="${pPost.post_category_idx == 1}">
                                                                                       영화리뷰
                                                                              </c:when>
                                                                              <c:when test="${rPost.post_category_idx == 2}">
                                                                                      기사
                                                                              </c:when> 
                                                                              <c:when test="${pPost.post_category_idx == 3}">
                                                                                        랭킹
                                                                              </c:when>          
                                                                              <c:otherwise>
                                                                                 전문가리뷰&평점
                                                                              </c:otherwise>
                                                                           </c:choose> 
                                                                          </a>
                                                                      </div>
                                                                  </div>
                                                                  <h5 class="trending-blog-post-title">
                                                                      <a href="<c:url value="./PostDetailProc" >             
                                                                        <c:param name="aList_post_idx" value="${pPost.post_idx}"></c:param>
                                                                         </c:url>">${pPost.post_title} 
                                                                          </a>
                                                                  </h5>
                                                                  <div class="trending-blog-post-meta">
                                                                      <div class="post-meta-left-side">
                                                                          <span class="post-date">
                                                                          <i class="icofont-ui-calendar"></i> 
                                                                            <a href="#">${pPost.post_regdate}</a>
                                                                            </span>
                                                                            <span>조회수 ${pPost.post_cnt}</span>
                                                                      </div>
                                                                      <div class="post-meta-right-side">
                                                                          <a href="#"><img src="assets/images/icons/small-bookmark.png" alt="" /></a>
                                                                          <a href="#"><img src="assets/images/icons/heart.png" alt="" /></a>
                                                                      </div>
                                                                  </div>
                                                              </div>
                                                          </article>
                                                          </c:forEach><!-- 인기글 종료 -->
                                                 </div>
                                             </div>
                                         <!-- 인기글 시작 -->
                                         <c:forEach var="pPost" items="${popPostList}" begin="12" end="12">
                                             <article class="trending-single-item" data-aos="fade-up">
                                                 <div class="trending-large-post-thum">
                                                 <a href="<c:url value="./PostDetailProc" >             
                                                     <c:param name="aList_post_idx" value="${pPost.post_idx}"></c:param>
                                                     </c:url>">
                                                     <img
			                                  src="assets/images/trending/5-trending-img.jpg"
			                                  alt=""
			                                />
                                                  </a>
                                                 </div>
                                                 <div class="trending-post-content">
                                                     <div class="trending-blog-post-top">
                                                         <div class="trending-blog-post-category">
                                                             <a href="#" class="business"><c:choose>
                                                             <c:when test="${pPost.post_category_idx == 1}">
                                                                     영화리뷰
                                                             </c:when>
                                                             <c:when test="${pPost.post_category_idx == 2}">
                                                                     기사
                                                             </c:when> 
                                                             <c:when test="${pPost.post_category_idx == 3}">
                                                                     랭킹
                                                             </c:when>          
                                                             <c:otherwise>
                                                             전문가리뷰&평점
                                                             </c:otherwise>
                                                         </c:choose> </a>
                                                         </div>
                                                     </div>
                                                     <h5 class="trending-blog-post-title">
                                                         <a href="<c:url value="./PostDetailProc" >             
                                                         <c:param name="aList_post_idx" value="${pPost.post_idx}"></c:param>
                                                         </c:url>">${pPost.post_title} 
                                                         </a>
                                                     </h5>
                                                     <div class="trending-blog-post-meta">
                                                         <div class="post-meta-left-side">
                                                             <span class="post-date">
                                                             <i class="icofont-ui-calendar"></i> 
                                                         <a href="#">${pPost.post_regdate}</a>
                                                         </span>
                                                         <span>조회수 ${pPost.post_cnt}</span>
                                                         </div>
                                                         <div class="post-meta-right-side">
                                                             <a href="#"><img src="assets/images/icons/small-bookmark.png" alt="" /></a>
                                                             <a href="#"><img src="assets/images/icons/heart.png" alt="" /></a>
                                                         </div>
                                                     </div>
                                                 </div>
                                             </article><!-- 인기글 종료 -->
                                         </c:forEach>
                                         </div><!-- 인기글 오른쪽 사이드 종료 -->
                                     </div>
                                 </div>
                             </div>
                         </div><!-- Swiper End -->
                     </div>
                 </div>
             </div>
         </div>
         <!-- 인기글 종료 -->


        <div class="bg-gray-1">
          <!-- 인기 주제 영역 시작 -->
          <div class="trending-topic-area section-space--ptb_80">
            <div class="container">
              <div class="row align-items-center">
                <div class="trending-topic-section-title">
                  <h3>인기 주제</h3>
                  <div class="trending-topic-navigation mt-30">
                    <div class="trending-topic-button-prev navigation-button">
                      <i class="icofont-long-arrow-left"></i>
                    </div>
                    <div class="trending-topic-button-next navigation-button">
                      <i class="icofont-long-arrow-right"></i>
                    </div>
                  </div>
                </div>
                <div class="trending-topic-item-wrap">
                  <div class="swiper-container trending-topic-slider-active">
                    <div class="swiper-wrapper">
                      <div class="swiper-slide" data-aos="fade-up">
                        <div class="single-trending-topic-item">
                          <a href="category-grid.jsp">
                            <img
                              src="assets/images/topic/01_topic.jpg"
                              alt=""
                            />
                            <h4 class="title">여행</h4>
                          </a>
                        </div>
                      </div>
                      <div class="swiper-slide" data-aos="fade-up">
                        <div class="single-trending-topic-item">
                          <a href="category-grid.jsp">
                            <img
                              src="assets/images/topic/02_topic.jpg"
                              alt=""
                            />
                            <h4 class="title">음식</h4>
                          </a>
                        </div>
                      </div>
                      <div class="swiper-slide" data-aos="fade-up">
                        <div class="single-trending-topic-item">
                          <a href="category-grid.jsp">
                            <img
                              src="assets/images/topic/03_topic.jpg"
                              alt=""
                            />
                            <h4 class="title">디자인</h4>
                          </a>
                        </div>
                      </div>
                      <div class="swiper-slide" data-aos="fade-up">
                        <div class="single-trending-topic-item">
                          <a href="category-grid.jsp">
                            <img
                              src="assets/images/topic/04_topic.jpg"
                              alt=""
                            />
                            <h4 class="title">기술</h4>
                          </a>
                        </div>
                      </div>
                      <div class="swiper-slide" data-aos="fade-up">
                        <div class="single-trending-topic-item">
                          <a href="category-grid.jsp">
                            <img
                              src="assets/images/topic/05_topic.jpg"
                              alt=""
                            />
                            <h4 class="title">마케팅</h4>
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- 인기 주제 영역 종료 -->
        </div>

        <!-- Recent Reading List Area Start -->
        <div class="recent-reading-list-area section-space--pb_80">
          <div class="container">
   		    
            <div class="row">
              <div class="col-lg-12">
                <div class="recent-reading-header">
                  <h3>내가 관심갈만 한 글들</h3>
                  <div class="trending-topic-navigation mt-30">
                    <div class="recent-reading-button-prev navigation-button">
                      <i class="icofont-long-arrow-left"></i>
                    </div>
                    <div class="recent-reading-button-next navigation-button">
                      <i class="icofont-long-arrow-right"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <% if(session.getAttribute("myPost") !=null){ %>
   			<div class="swiper-container recent-reading-slider-active">
            
              <div class="swiper-wrapper">
               <c:forEach  var="CAPost" items="${CAList}" begin="1" end="6">
                <div class="swiper-slide">
                  <!-- 최근 읽은글 시작 -->
                  <div class="single-recent-reading-post" data-aos="fade-up">
                    <a
                      class="recent-reading-post-thum"
                      href="<c:url value="./PostDetailProc" >             
					  <c:param name="aList_post_idx" value="${CAPost.post_idx}"></c:param>
					  </c:url>">
                      <img src="assets/images/recent-reading-list/01_reading-list.jpg" alt=""/>
                    </a>
                    <div class="recent-reading-post-content">
                      <h6 class="title">
                        <a href="blog-details.html"
                          >${CAPost.post_title}</a
                        >
                      </h6>
                      <div class="recent-reading-post-meta">
                        <span class="post-date">
                          <i class="icofont-ui-calendar"></i>
                          <a href="#">${CAPost.post_regdate}</a>
                        </span>
                        <span> 조회수 ${CAPost.post_cnt}</span>
                      </div>
                    </div>
                  </div> <!-- 최근 읽은글 종료 -->
                  </div>
				</c:forEach>
				</div>
			   </div>	
    		<% } else { %>
      		<div class="site-wrapper-reveal">
              <div class="row align-items-center">
                <div class="following-author-area">
                  <div class="author-title add">
                    <p>아직 등록하신 글이 없네요?</p>
                  </div>
                  <div class="button-box">
                    <a href="write-post.jsp" class="btn">첫 글쓰러가기 <i class="icofont-long-arrow-right"></i></a>
                  </div>
		          </div>
		        </div>
		      </div>
			<% } %>
            </div>
          </div>
        </div>
        <!-- 최근글 목록 영역 종료  -->

	  <div class="container">
 		<div class="row newmovie">
          <div class="col-lg-12">
            <div class="recent-reading-header">
              <h3>떠오르는 신작 예고편</h3>
            </div>
          </div>
        </div>
        <div class="about-video-area vi section-space--ptb_p60">
          <div class="container">
            <div class="row">
              <div class="col-lg-12 video-popup">
                <a
                  href="https://www.youtube.com/watch?v=yC62Q_qAdgY"
                  class="video-link mt-30"
                >
                  <!-- 영상 !!-->
                  <div class="single-popup-wrap">
                    <img
                      class="img-fluid"
                      src="assets/images/banners/banner.png"
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
        </div>
        <!-- 소개 영상 영역 종료 -->
        
        
        <!-- 하단 배너 영역 시작 -->
        <div class="bottom-add-banner-area section-space--pb_80">
          <div class="container">
            <div class="row">
              <div class="col-lg-12">
                <a href="#" class="bottom-add-banner-box" data-aos="fade-up">
                  <img
                    src="assets/images/banners/bottom-add-banner.jpg"
                    alt=""
                  />
                  <h6 class="bottom-add-text"> 모든 간편식 할인
                    <span>50% Off</span>
                  </h6>
                </a>
              </div>
            </div>
          </div>
        </div>
        <!-- 하단 배너 영역 종료 -->
      </div>
    </div>

    <!--======  바닥글 영역 =======-->
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
    <!--=====  바닥글 종료 ========-->

    <!--====================  scroll top ====================-->
    <a href="#" class="scroll-top" id="scroll-top">
      <i class="arrow-top icofont-swoosh-up"></i>
      <i class="arrow-bottom icofont-swoosh-up"></i>
    </a>
    <!--====================  End of scroll top  ====================-->

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
