<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!--this is a test-->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" conetent="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Ecommerce Responsive full website</title>
<!-- CSS-link -->


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
   href="https://fonts.googleapis.com/css2?family=Jost:wght@100;200;300;400;500;600;700&display=swap"
   rel="stylesheet">

<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
   integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
   crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet"
   href="https://unpkg.com/boxicons@latest/css/boxicons.min.css">

<style>
* {
   margin: 0;
   padding: 0;
   box-sizing: border-box;
   scroll-behavior: smooth;
   font-family: 'Jost', sans-serif;
   list-style: none;
   text-decoration: none;
}

header {
   position: fixed;
   width: 100%;
   top: 0;
   right: 0;
   z-index: 1000;
   display: flex;
   align-items: center;
   justify-content: space-between;
   padding: 20px 10%;
}

.logo img {
   max-width: 12opx;
   height: auto;
}

.navmenu {
   display: flex;
}

.navmenu a {
   color: #2C2C2C;
   font-size: 16px;
   text-transform: capitalize;
   padding: 10px 20px;
   font-weight: 400;
   transition: all .42S ease;
}

.navmenu a:hover {
   color: #EE1CA7;
}

.nav-icon {
   display: flex;
   align-items: center;
}

.nav-icon i {
   margin-right: 20px;
   color: #2C2C2C;
   font-size: 25px;
   font-weight: 400;
   transition: all .42s ease;
}

.nav-icon i:hover {
   transform: scale(1.1);
   color: red;
}

#menu-icon {
   font-size: 35px;
   color: #2C2C2C;
   z-index: 10001;
   cursor: pointer;
}


section {
   padding: 7% 10%;
}

.main-home {
   width: 100%;
   height: 100vh;
   background-image: url(image/banner-3.png);
   background-position: center;
   background-size: cover;
   display: grid;
   grid-template-columns: repeat(1, 1fr);
   align-items: center;
}

.main-text h5 {
   color: #EE1C47;
   font-size: 16px;
   text-transform: capitalize;
   font-weight: 500;
}

.main-text h1 {
   color: #000;
   font-size: 65px;
   text-transform: capitalize;
   line-height: 1.1;
   font-weight: 600;
   margin: 6px 0 10px;
}

.main-text p {
   color: #333c56;
   font-size: 20px;
   font-style: italic;
   margin-bottom: 20px;
}

.main-btn {
   display: inline-block;
   color: #111;
   font-size: 16px;
   font-weight: 500;
   text-transform: capitalize;
   border: 2px solid #111;
   padding: 12px 25px;
   transition: all .42s ease;
}

.main-btn:hover {
   background-color: #000;
   color: #fff;
}

.main-btn i {
   vertical-align: middle;
}

.down-arrow {
   position: absolute;
   top: 85%;
   right: 11%;
}

.down i {
   font-size: 30px;
   color: #2c2c2c;
   border: 2px solid #2c2c2c;
   border-radius: 50px;
   padding: 12px 12px;
}

.down i:hover {
   background-color: #2c2c2c;
   color: #fff;
   transition: all .42s ease;
}

header.sticky {
   background: #fff;
   padding: 20px 10%;
   box-shadow: 0px 0px 10px rgb(0 0 0/ 10%);
}

/* trending - section - css -> our trending */
.center-text h2 {
   color: #111;
   font-size: 28px;
   text-transform: capitalize;
   text-align: center;
   margin-bottom: 30px;
}

.center-text span {
   color: red;
}

.products {
   display: grid;
   grid-template-columns: repeat(auto-fit, minmax(260px, auto));
   gap: 2rem;
}

/* 상품 행 관련 css 코드 */
.row {
   position: relative;
   transition: all .40s;
}

/* 상품 이미지  */
.row img {
   width: 100%;
   height: auto;
   transition: all .40s;
}

.row img:hover {
   transform: scale(0.9);
}

/* 상품 인기도 */
.product-text h5 {
   position: absolute;
   top: 13px;
   left: 13px;
   color: #fff;
   font-size: 12px;
   font-weight: 500;
   text-transform: uppercase;
   background-color: #27b737;
   padding: 3px 10px;
   border-radius: 2px;
}

/* 상품 하트 표시 */
.heart-icon {
   position: absolute;
   right: 0;
   font-size: 20px;
}

.heart-icon:hover {
   color: red;
}

/* 평점 */
.ratting i {
   color: #ff8c00;
   font-size: 18px;
}

.price h4 {
   color: black;
   font-size: 16px;
   text-transform: capitalize;
   font-weight: 400;
}

.price p {
   color: #151515;
   font-size: 14px;
   font-weight: 600;
}

/* 맨 아래 회원 후기 */
.client-reviews {
   background-color: #f3f4f6;
}

.reviews {
   text-align: center;
}

.reviews h3 {
   color: #111;
   font-size: 25px;
   text-transform: capitalize;
   text-align: center;
   font-weight: 700;
}

.reviews img {
   width: 100px;
   height: auto;
   border-radius: 50px;
   margin: 10px 0;
}

.review p {
   color: #707070;
   font-size: 16px;
   font-weight: 400;
   line-height: 25px;
   margin-bottom: 10px;
}

.reviews h2 {
   font-size: 22px;
   color: #000;
   font-weight: 400;
   text-transform: capitalize;
   margin-bottom: 2px;
}

.up-center-text h2 {
   text-align: center;
   color: #111;
   font-size: 25px;
   text-transform: capitalize;
   font-weight: 700;
   margin-bottom: 30px;
}

.cart img {
   width: 380px;
   height: auto;
   border-radius: 5px;
}

.update-cart {
   display: grid;
   grid-template-columns: repeat(auto-fit, minmax(380px, auto));
   gap: 1rem;
}

.cart h5 {
   color: #636872;
   font-size: 14px;
   text-transform: capitalize;
   font-weight: 500;
}

.cart h4 {
   color: #111;
   font-size: 18px;
   font-weight: 600;
}

.cart p {
   color: #707070;
   font-size: 15px;
   max-width: 380px;
   line-height: 25px;
   margin-bottom: 12px;
}

.cart h6 {
   color: #151515;
   font-size: 14px;
   font-weight: 500;
}

.contact {
   background-color: #f3f4f6;
}

.contact-info {
   display: grid;
   grid-template-columns: repeat(auto-fit, minmax(160px, auto));
   gap: 3rem;
}

/* responsive-css */
@media ( max-width : 890px) {
   header {
      padding: 20px 3%;
      transition: .4s;
   }
}

@media ( max-width : 630px) {
   .main-text h1 {
      font-size: 50px;
      transition: .4s;
   }
   .main-text p {
      font-size: 18px;
      transition: .4s;
   }
   .main-btn {
      font-size: 10px 20px;
      transition: .4s;
   }
}
</style>
</head>

<body>
   <header>

      <a href="#" class="logo"><img src="image/logo.png" alt=""></a>
      <ul class="navmenu">
         <li><a href="http://localhost:8087/bigdata/">home</a></li>
         <li><a href="#">shop</a></li>
         <li><a href="http://localhost:8087/bigdata/product">products</a></li>
         <li><a href="#">page</a></li>
         <li><a href="#">Docs</a></li>
      </ul>
      <div class="nav-icon">
         <a href="#"></a><i class='bx bx-search'></i> <a href="#"></a><i
            class='bx bx-user'></i> <a href="#"></a><i class='bx bx-cart'></i>

         <div class="bx bx-menu" id="menu-icon"></div>
      </div>

   </header>

   <!-- trending products-section -->
   <section class="trending product" id="trending">
      <div class="center-text">
         <h2>
            Our Products <span> List </span>
         </h2>
      </div>
      <div class="products">
         <!-- 첫 번째 상품 -->
         <div class="row">
            <a href="detail"> <img src="image/1.jpg" alt="">
            </a>
            <div class="product-text">
               <h5>Sale</h5>
            </div>

            <div class="heart-icon">
               <i class='bx bx-heart'></i>
            </div>
            <div class="ratting">
               <i class='bx bx-star'></i> <i class='bx bx-star'></i> <i
                  class='bx bx-star'></i> <i class='bx bx-star'></i> <i
                  class='bx bxs-star-half'></i>
            </div>

            <div class="price">
               <h4>Half Running Set</h4>
               <p>$99 - $129</p>
            </div>
         </div>
         <!-- 2번쨰 상품 -->
         <div class="row">
            <a href="detail"> <img src="image/2.jpg" alt="">
            </a>
            <div class="product-text">
               <h5>New</h5>
            </div>

            <div class="heart-icon">
               <i class='bx bx-heart'></i>
            </div>
            <div class="ratting">
               <i class='bx bx-star'></i> <i class='bx bx-star'></i> <i
                  class='bx bx-star'></i> <i class='bx bx-star'></i> <i
                  class='bx bxs-star-half'></i>
            </div>

            <div class="price">
               <h4>Formal Men Lowers</h4>
               <p>$99 - $129</p>
            </div>
         </div>
         <!-- 세번째 상품 -->
         <div class="row">
            <a href="detail"> <img src="image/3.jpg" alt="">
            </a>


            <div class="heart-icon">
               <i class='bx bx-heart'></i>
            </div>
            <div class="ratting">
               <i class='bx bx-star'></i> <i class='bx bx-star'></i> <i
                  class='bx bx-star'></i> <i class='bx bx-star'></i> <i
                  class='bx bxs-star-half'></i>
            </div>

            <div class="price">
               <h4>Half Running Suit</h4>
               <p>$99 - $129</p>
            </div>
         </div>
         <!-- 4번 째 상품 -->
         <div class="row">
            <a href="detail"> <img src="image/4.jpg" alt="">
            </a>
            <div class="product-text">
               <h5>Hot</h5>
            </div>

            <div class="heart-icon">
               <i class='bx bx-heart'></i>
            </div>
            <div class="ratting">
               <i class='bx bx-star'></i> <i class='bx bx-star'></i> <i
                  class='bx bx-star'></i> <i class='bx bx-star'></i> <i
                  class='bx bxs-star-half'></i>
            </div>

            <div class="price">
               <h4>Half Fancy Laday Dress</h4>
               <p>$99 - $129</p>
            </div>
         </div>
         <!-- 다섯 번째 상품 -->

         <div class="row">
            <a href="detail"> <img src="image/5.jpg" alt="">
            </a>


            <div class="heart-icon">
               <i class='bx bx-heart'></i>
            </div>
            <div class="ratting">
               <i class='bx bx-star'></i> <i class='bx bx-star'></i> <i
                  class='bx bx-star'></i> <i class='bx bx-star'></i> <i
                  class='bx bxs-star-half'></i>
            </div>

            <div class="price">
               <h4>Flix Flox Jeans</h4>
               <p>$99 - $129</p>
            </div>
         </div>
         <!-- 여섯 번째 상품 -->
         <div class="row">
            <a href="detail"> <img src="image/6.jpg" alt="">
            </a>
            <div class="product-text">
               <h5>Hot</h5>
            </div>

            <div class="heart-icon">
               <i class='bx bx-heart'></i>
            </div>
            <div class="ratting">
               <i class='bx bx-star'></i> <i class='bx bx-star'></i> <i
                  class='bx bx-star'></i> <i class='bx bx-star'></i> <i
                  class='bx bxs-star-half'></i>
            </div>

            <div class="price">
               <h4>Fancy Salwar Suits</h4>
               <p>$99 - $129</p>
            </div>
         </div>

         <!-- 일곱 번째 상품 -->
         <div class="row">
            <a href="detail"> <img src="image/7.jpg" alt="">
            </a>
            <div class="product-text">
               <h5>Sale</h5>
            </div>

            <div class="heart-icon">
               <i class='bx bx-heart'></i>
            </div>
            <div class="ratting">
               <i class='bx bx-star'></i> <i class='bx bx-star'></i> <i
                  class='bx bx-star'></i> <i class='bx bx-star'></i> <i
                  class='bx bxs-star-half'></i>
            </div>

            <div class="price">
               <h4>Printed Straight Kurta</h4>
               <p>$99 - $129</p>
            </div>
         </div>

         <!-- 여덟번 째 상품 -->
         <div class="row">
            <a href="detail"> <img src="image/8.jpg" alt="">
            </a>
            <div class="product-text">
               <h5>Sale</h5>
            </div>

            <div class="heart-icon">
               <i class='bx bx-heart'></i>
            </div>
            <div class="ratting">
               <i class='bx bx-star'></i> <i class='bx bx-star'></i> <i
                  class='bx bx-star'></i> <i class='bx bx-star'></i> <i
                  class='bx bxs-star-half'></i>
            </div>

            <div class="price">
               <h4>Collot Full Dress</h4>
               <p>$99 - $129</p>
            </div>
         </div>



      </div>


   </section>

</body>
</html>