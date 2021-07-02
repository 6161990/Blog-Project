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
      <!--========  세션없으면 로그인 유도 =========-->
    <% if(session.getAttribute("member")==null){ %>
    <jsp:forward page="login.jsp" /> 
    <% } %>
    
     <!--========  한번도 글을 쓰지 않은 회원이면 noPost.jsp로  =========-->
  	<% if(session.getAttribute("myPost")==null) { %>
    <jsp:forward page="noPost.jsp" /> 
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
                          <a href="#">${category_name}</a>
                        </div>
                        <div class="following-blog-post-author">
                          By <a href="#">${member_name}</a>
                        </div>
                      </div>

                      <div class="post-mid-side mb-2">
                        <span class="post-meta-left-side">
                          <span class="post-date">
                            <i class="icofont-ui-calendar"></i>
                            <a href="#"> ${post.post_regdate} &nbsp;&nbsp;&nbsp; </a>
                          </span>
                           <span style="color:black">&nbsp; 조회수 ${post.post_cnt} </span>
                        </span>
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
                    <br>
                    <br>
                    <h3 class="following-blog-post-title">
                      <a href="#">${post.post_title}</a>
                    </h3>

                    <div class="post-details-text">
                      <p>${post.post_content}</p>
	
						<br>
						<br>
						<br>
                      <h3 class="title mb-3">
                      	[씨네 광고]
                        ―칸 국제영화제, 서울에서 필름 마켓 연다!
                      </h3>

                      <p>
                        “제74회 칸 국제영화제의 필름 마켓이 서울에서도 열릴 예정이다. 
                        7월 6일부터 17일까지 열리는 이번 영화제 기간 동안 주요 국가의 바이어들을 대상으로 
                        ‘Cannes in the City’라는 제목의 행사가 전세계 5 개 도시에서 열린다. 
                        이번 행사는 코로나19 상황으로 인해 프랑스에 입국할 수 없는 각국의 마켓 관계자를 대상으로 열리며 
                        상영작은 각국의 마켓 영업 대상작이다.

						이번 필름 마켓 행사의 개최 도시는 호주의 멜버른(시네마 팰리스 코모), 멕시코의 멕시코 시티(시네폴리스 다이애나),
						중국의 베이징(프랑스 연구소) 일본의 도쿄(도쿄 영화 학교, 유로 라이브), 그리고 한국의 서울(아트나인)이다.

						이번 행사는 바이어, 배급사, 스트리밍 플랫폼, 영화제 프로그래머 등 필름 마켓 관계자에 한정해서 열릴 예정이며, 
						이들은 7월 8일과 9일, 12일에서 16일 사이에 참여할 수 있다. 
						현재까지 30여 개 프로덕션에서 상영을 합의했고 자세한 행사 상영작은 필름 마켓 공식 데일리에서 확인할 수 있다.”
						<br>
						<br>
						출처: http://www.cine21.com/news//view/?mag_id=98044
                      </p>

                      <div class="video-banner-area video-popup mb-4">
                        <a
                          href="https://youtu.be/icsIVUTdqQM"
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

                     

                      <h3 class="title mb-3">
                        All of these amazing features come at an affordable
                        price!
                      </h3>

                      <blockquote class="blockquote-box">
                        <p class="blockquote-text">
                          지난 주말 넷플릭스에서 가장 많이 본 영화 <아미 오브 더 데드>
                        </p>
                      </blockquote>

                      <p>
                       5월 21일 공개된 넷플릭스 오리지널 영화 <아미 오브 더 데드>가 지난 주말 한국 넷플릭스 콘텐츠 순위 톱10 1위에 올랐다.
					   <아미 오브 더 데드>는 영화 <새벽의 저주>로 좀비 신드롬을 일으키고 <300>, 
					   <잭 스나이더의 저스티스 리그> 등으로 액션 거장 반열에 오른 잭 스나이더 감독이 <새벽의 저주>를 만든 직후 구상한 좀비물이다. 
					   주인공 스콧(데이브 바티스타)을 중심으로 모인 용병들이 카지노 금고 속 거액을 차지하기 위해 좀비들이 점령한 라스베이거스로 향하는 내용이다.
                      </p>

                      <p>
                       잭 스나이더 감독은 <씨네21>과의 화상 인터뷰에서 “다양한 인간 군상을 담고 사회적 논평을 하기에 좋은 곳”으로 
                       세계 최대의 카지노와 도박꾼들이 모인 라스베이거스를 영화의 주 무대로 선택했다고 밝힌 바 있다. 
                       또한 <아미 오브 더 데드>를 “극장이든 스트리밍이든 모두를 위한 블록버스터급 영화”로 만들고 싶었다는 
                       그는 “좀비들을 기존에 알던 정체된 존재가 아닌 다른 어떤 존재가 되어가는 진화의 느낌으로 그려보려고 했다”고 전했다. 
                       ‘알파 좀비’, ‘엘비스 프레슬리 좀비’, ‘좀비 말’과 ‘좀비 호랑이’등 각양각색의 좀비 캐릭터들이 그 예다. 
                       잭 스나이더 감독은 이번 작품에 각본과 연출은 물론 촬영감독으로도 참여했다.
                      											 - 남선우 nsw@cine21.com
                       <br>
                       <br>
                       출처 : http://www.cine21.com/news/issue/view/?mag_id=1295
                      </p>

                      <div class="blog-details-tag-and-share-area">
                      
                        <div class="post-tag">
                         <c:if test="${not empty post.post_tag1}">
                          <a href="#" class="btn-medium fashion">${post.post_tag1}</a>
                          </c:if>
                          <c:if test="${not empty post.post_tag2}">
                        	<a href="#" class="btn-medium health">${post.post_tag2}</a>
                       	  </c:if>
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
                            <h3 class="title">같은 카테고리 글</h3>
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
                        <c:forEach var="cPost" items="${categotyPostList}">
                          <div class="swiper-slide">
                            <!-- 싱글 관련글 Start -->
                            <div class="single-related-post">
                              <div class="related-post-thum">
                                <img src="assets/images/blog/01.jpg" alt="" />
                              </div>
                              <div class="following-post-content">
                                <div class="following-blog-post-top">
                                  <div class="trending-blog-post-category">
                                   <!-- title을 누르면 해당 글 blog-details로! -->
					                 <a href="<c:url value="./PostDetailProc" >             
					  					<c:param name="aList_post_idx" value="${cPost.post_idx}"></c:param>
					  					</c:url>">${category_name}
					  				 </a>
                                  </div>
                                </div>
                                <h5 class="following-blog-post-title">
                                  <!-- title을 누르면 해당 글 blog-details로! -->
					                 <a href="<c:url value="./PostDetailProc" >             
					  					<c:param name="aList_post_idx" value="${cPost.post_idx}"></c:param>
					  					</c:url>">${cPost.post_title}
					  				 </a>
                                </h5>
                                <div class="following-blog-post-meta">
                                  <div class="post-meta-left-side">
                                    <span class="post-date">
                                      <i class="icofont-ui-calendar"></i>
                                      <a href="#">${cPost.post_regdate}</a>
                                    </span>
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
						</c:forEach>
                        </div>
                      </div>
                    </div>
                    <!-- Related Post Area End -->
                    
                    
					<!-- Update & Delete Area Start -->
					<!-- 해당 글이 내가 쓴 글 이라면 수정/삭제 버튼 보이게하기-->
					<c:if test="${member.member_idx eq post.post_member_idx}">
                    <div class="comment-area section-space--pt_60">
                      <form action="updateWrite-post.jsp" class="comment-form-area">
                        <div class="row">
                          <div class="submit-button text-center">
                          <input type="hidden" name="post_idx" value ="${post.post_idx}" />
                              <button class="btn-large btn-primary" type="submit">
                                글 수정하기</button>
                           </div>
                        </div>
                      </form>
                      <form action="./PostDeleteProc" class="comment-form-area">
                        <div class="row">
                          <div class="submit-button text-center">
                          <input type="hidden" name="post_idx" value ="${post.post_idx}" />
                              <button class="btn-large btn-primary" type="submit">
                                글 삭제하기</button>
                           </div>
                        </div>
                      </form>
                    </div>
                    <!-- Update & Delete Area End -->
                   </c:if>
                  </div>
                </div>
                    
                <!-- blog details Post End -->
              </div>
              <div class="blog-details-col-4">
                <div class="following-author-area">
                  <div class="author-image">
                    <img src="assets/images/author/author-001.jpg" alt="" />
                  </div>
                  <div class="author-title">
                    <h4><a href="#"> ${member.member_name} </a></h4>
                    <p>작가, 개발자</p>
                  </div>
                  <div class="author-details">
                    <p>
                      여을심은 열심중
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
                      <a href="./forMemberInfo" class="btn"
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
                      <h3 class="title">영화리뷰</h3>
                      <i class="icon icofont-long-arrow-right"></i>
                    </div>
                  </a>
                  <a class="single-hero-category-item">
                    <img src="assets/images/catagory/travel.jpg" alt="" />
                    <div class="hero-category-inner-box">
                      <h3 class="title">기사</h3>
                      <i class="icon icofont-long-arrow-right"></i>
                    </div>
                  </a>
                  <a class="single-hero-category-item">
                    <img src="assets/images/catagory/medical.jpg" alt="" />
                    <div class="hero-category-inner-box">
                      <h3 class="title">랭킹</h3>
                      <i class="icon icofont-long-arrow-right"></i>
                    </div>
                  </a>
                  <a class="single-hero-category-item">
                    <img src="assets/images/catagory/web.jpg" alt="" />
                    <div class="hero-category-inner-box">
                      <h3 class="title">전문가리뷰 & 평점</h3>
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
                    	  <c:forEach var="lPost" items="${latestPostList}" begin="1" end="5">
                          <div class="single-latest-post">
                            <div class="latest-post-thum">
                             <!-- 사진과 title을 누르면 해당 글 blog-details로! -->
                                <a href="<c:url value="./PostDetailProc" >             
                                <c:param name="aList_post_idx" value="${lPost.post_idx}"></c:param></c:url>">
                                              <img  src="assets/images/latest-post/01.jpg"alt=""/>
                              </a>
                            </div>
                            <div class="latest-post-content">
                              <h6 class="title">
                              <!-- 사진과 title을 누르면 해당 글 blog-details로! -->
                              <a href="<c:url value="./PostDetailProc" >             
                              <c:param name="aList_post_idx" value="${lPost.post_idx}"></c:param></c:url>">
                                            ${lPost.post_title}
                            </a>
                              </h6>
                              <div class="latest-post-meta">
                                <span class="post-date">
                                  <i class="icofont-ui-calendar"></i>
                                  <a href="#">${lPost.post_regdate}</a>
                                </span>
                              </div>
                            </div>
                          </div>
                          <!-- Single Latest Post End -->
                         </c:forEach>
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
