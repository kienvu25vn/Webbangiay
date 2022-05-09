<%@page import="entity.Cart"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <!-- Meta Tag -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name='copyright' content=''>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Title Tag  -->
        <title>Eshop - eCommerce HTML5 Template.</title>
        <!-- Favicon -->
        <link rel="icon" type="image/png" href="images/favicon.png">
        <!-- Web Font -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <!-- StyleSheet -->

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <!-- Magnific Popup -->
        <link rel="stylesheet" href="css/magnific-popup.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.css">
        <!-- Fancybox -->
        <link rel="stylesheet" href="css/jquery.fancybox.min.css">
        <!-- Themify Icons -->
        <link rel="stylesheet" href="css/themify-icons.css">
        <!-- Jquery Ui -->
        <link rel="stylesheet" href="css/jquery-ui.css">
        <!-- Nice Select CSS -->
        <link rel="stylesheet" href="css/niceselect.css">
        <!-- Animate CSS -->
        <link rel="stylesheet" href="css/animate.css">
        <!-- Flex Slider CSS -->
        <link rel="stylesheet" href="css/flex-slider.min.css">
        <!-- Owl Carousel -->
        <link rel="stylesheet" href="css/owl-carousel.css">
        <!-- Slicknav -->
        <link rel="stylesheet" href="css/slicknav.min.css">

        <!-- Eshop StyleSheet -->
        <link rel="stylesheet" href="css/reset.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="css/responsive.css">



    </head>
    <body class="js">

        <!-- Preloader -->
        <!--	<div class="preloader">
                        <div class="preloader-inner">
                                <div class="preloader-icon">
                                        <span></span>
                                        <span></span>
                                </div>
                        </div>
                </div>-->
        <!-- End Preloader -->

        <!-- Header -->
        <header class="header shop">
            <!-- Topbar -->
            <div class="topbar">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-12 col-12">
                            <!-- Top Left -->
                            <div class="top-left">
                                <ul class="list-main">
                                    <!-- <li><i class="ti-headphone-alt"></i> +060 (800) 801-582</li> -->
                                    <li><i class="ti-email"></i> support@shophub.com</li>
                                </ul>
                            </div>
                            <!--/ End Top Left -->
                        </div>
                        <div class="col-lg-8 col-md-12 col-12">
                            <!-- Top Right -->
                            <div class="right-content">
                                <ul class="list-main">
                                    <!-- <li><i class="ti-location-pin"></i> Store location</li>
                                    <li><i class="ti-alarm-clock"></i> <a href="#">Daily deal</a></li> -->
                                    <li><i class="ti-user"></i> <a href="#">My account</a></li>
                                    <li><i class="ti-power-off"></i><a href="login.html#">Login</a></li>
                                </ul>
                            </div>
                            <!-- End Top Right -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Topbar -->
            <div class="middle-inner">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-2 col-md-2 col-12">
                            <!-- Logo -->
                            <div class="logo">
                                <a href="start"><img src="images/logo.png" alt="logo"></a>
                            </div>
                            <!--/ End Logo -->
                            <!-- Search Form -->
                            <!--                            <div class="search-top">
                                                            <div class="top-search"><a href="#0"><i class="ti-search"></i></a></div>
                                                             Search Form 
                                                            <div class="search-top">
                                                                <form class="search-form">
                                                                    <input type="text" placeholder="Search here..." name="search">
                                                                    <button value="search" type="submit"><i class="ti-search"></i></button>
                                                                </form>
                                                            </div>
                                                            / End Search Form 
                                                        </div>-->
                            <!--/ End Search Form -->
                            <div class="mobile-nav"></div>
                        </div>
                        <div class="col-lg-8 col-md-7 col-12">
                            <div class="search-bar-top">
                                <div class="search-bar">
                                    <select>
                                        <option selected="selected">All Category</option>
                                        <option>watch</option>
                                        <option>mobile</option>
                                        <option>kid’s item</option>
                                    </select> 
                                    <form action="searchproduct">
                                        <input id="search" oninput="autoSearch(this , ${tagID})" name="search" placeholder="Search Products Here....." type="search">
                                        <button class="btnn"><i class="ti-search"></i></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-3 col-12">
                            <div class="right-bar">
                                <!-- Search Form -->
                                <div class="sinlge-bar">
                                    <a href="#" class="single-icon"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                                </div>
                                <div class="sinlge-bar">
                                    <a href="#" class="single-icon"><i class="fa fa-user-circle-o" aria-hidden="true"></i></a>
                                </div>
                                <div class="sinlge-bar shopping">
                                    <a href="cart.jsp" class="single-icon"><i class="ti-bag"></i> <span id="total-count" class="total-count"><%
                                        List<Cart> listC = (List<Cart>) session.getAttribute("listCart");
                                        if (listC == null)
                                            out.print("0");
                                        else
                                            out.print(listC.size());
                                            %></span></a>
                                    <!-- Shopping Item -->
                                    <div class="shopping-item">
                                        <div class="dropdown-cart-header">
                                            <span id="total-cart"><%
                                                if (listC == null)
                                                    out.print("0");
                                                else
                                                    out.print(listC.size());
                                                %> Items</span>
                                            <a href="cart.html">View Cart</a>
                                        </div>
                                        <ul class="shopping-list" id="shopping-cart">
                                             <c:forEach items="${listCart}" var="p">
                                                <li>
                                                <a onclick="deletecartitem(${p.product.id} , ${p.size})" class="remove" title="Remove this item"><i class="fa fa-remove"></i></a>
                                                <a class="cart-img" href="productdetail?pid=${p.product.id}"><img src="${p.product.image}" alt="#"></a>
                                                <h4><a href="productdetail?pid=${p.product.id}">${p.product.title}</a></h4>
                                                <p class="quantity">${p.quantity}x - <span class="amount">$${p.product.price}</span> - <span class="size">Size ${p.size}</span></p>
                                            </li>
                                            </c:forEach>
                                        </ul>
                                        <div class="bottom">
                                            <div class="total">
                                                <span>Total</span>
                                                <span id="total-amount" class="total-amount"><%
                                                    int total = 0;
                                                    if (listC == null)
                                                        out.print("$ 0.0");
                                                    else {
                                                        for (Cart c : listC) {
                                                            total += c.getAmount();
                                                        }
                                                        double toTal = (double) total;
                                                        out.print("$ " + toTal);
                                                    }
                                                    %></span>
                                            </div>
                                            <a href="checkout.html" class="btn animate">Checkout</a>
                                        </div>
                                    </div>
                                    <!--/ End Shopping Item -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Header Inner -->
            <div class="header-inner">
                <div class="container">
                    <div class="cat-nav-head">
                        <div class="row">
                            <!--                            <div class="col-lg-3">
                                                            <div class="all-category">
                                                                <h3 class="cat-heading"><i class="fa fa-bars" aria-hidden="true"></i>CATEGORIES</h3>
                                                                <ul class="main-category">
                                                                    <li><a href="#">Adidas</a></li>
                                                                    <li><a href="#">Nike</a></li>
                                                                    <li><a href="#">Puma</a></li>
                                                                    <li><a href="#">Vanz</a></li>
                                                                    <li><a href="#">Converse</a></li>
                                                                    <li><a href="#">New Balance</a></li>
                            
                                                                </ul>
                                                            </div>
                                                        </div>-->
                            <div class="col-lg-9 col-12">
                                <div class="menu-area">
                                    <!-- Main Menu -->
                                    <nav class="navbar navbar-expand-lg">
                                        <div class="navbar-collapse">	
                                            <div class="nav-inner">	
                                                <ul class="nav main-menu menu navbar-nav">
                                                    <li ><a href="start">Home</a></li>
                                                    <li class="active"><a href="shopmain">Shop</a>

                                                    </li>

                                                    <li><a href="#">Blog<i class="ti-angle-down"></i></a>
                                                        <ul class="dropdown">
                                                            <li><a href="blog-single-sidebar.html">Blog Single Sidebar</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="contact.html">Contact Us</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </nav>
                                    <!--/ End Main Menu -->	
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/ End Header Inner -->
        </header>

        <!--/ End Header -->
        <!-- Breadcrumbs -->
        <div class="breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="bread-inner">
                            <ul class="bread-list">
                                <li><a href="shopmain"> Shop<i class="ti-arrow-right"></i></a></li>
                                <c:if test = "${TAG == 'All Products'}">
                                     <li class="active"><a href="shopmain">${TAG}<i class="ti-arrow-right"></i></a></li>
                                </c:if>
                                <c:if test = "${TAG != 'All Products'}">
                                     <li class="active"><a href="${proCid}">${TAG}<i class="ti-arrow-right"></i></a></li>
                                </c:if>
                                
                                <li class="active"><a href="blog-single.html">${tagDetail}</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Breadcrumbs -->

        <!-- Product Style -->

        <!--/ End Product Style 1  -->	
        <div class="modal-fade">
            <div class="modal-content" style="border:none;">
                <div class="modal-body" style="padding: 60px;">
                    <div class="row no-gutters" style="margin-left: 200px ; margin-right: 200px;">
                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                    <!-- Product Slider -->
                    <div class="product-gallery">
                        <div class="quickview-slider-active">
                            <div class="single-slider">
                                <img src="${prodetail.image}" alt="#">
                            </div>
                            <div class="single-slider">
                                <img src="${prodetail.image}" alt="#">
                            </div>
                        </div>
                    </div>
                    <!-- End Product slider -->
                </div>
                <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                    <div class="quickview-content">
                        <h2>${prodetail.title}</h2>
                        <div class="quickview-ratting-review">
                            <div class="quickview-ratting-wrap">
                                <div class="quickview-ratting">
                                    <i class="yellow fa fa-star"></i>
                                    <i class="yellow fa fa-star"></i>
                                    <i class="yellow fa fa-star"></i>
                                    <i class="yellow fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <a href="#"> (1 customer review)</a>
                            </div>
                            <div class="quickview-stock">
                                <span><i class="fa fa-check-circle-o"></i> in stock</span>
                            </div>
                        </div>
                        <h3>$${prodetail.price}</h3>
                        <div class="quickview-peragraph">
                            <p>${prodetail.description}</p>
                        </div>
                        <div class="size">
                            <div class="row">
                                <div class="col-lg-6 col-12">
                                    <h5 class="title">Size</h5>
                                    <select id="size">
                                        <option selected="selected">s</option>
                                        <option>m</option>
                                        <option>l</option>
                                        
                                    </select>
                                </div>
                                
                            </div>
                        </div>
                        <div class="quantity" style="margin-bottom: 20px;">
                            <!-- Input Order -->
                            <div class="input-group">
                                <div class="button minus">
                                    <button type="button" class="btn btn-primary btn-number" disabled="disabled" data-type="minus" data-field="quant[1]">
                                        <i class="ti-minus"></i>
                                    </button>
                                </div>
                                <input type="text" id="quantity" name="quant[1]" class="input-number"  data-min="1" data-max="1000" value="1">
                                <div class="button plus">
                                    <button type="button" class="btn btn-primary btn-number" data-type="plus" data-field="quant[1]">
                                        <i class="ti-plus"></i>
                                    </button>
                                </div>
                            </div>
                            <!--/ End Input Order -->
                        </div>
                        <div class="add-to-cart">
                            <a onclick="addtocart()" class="btn">Add to cart</a>
                            <a href="#" class="btn min"><i class="ti-heart"></i></a>
                            <a href="#" class="btn min"><i class="fa fa-compress"></i></a>
                        </div>
                        <div class="default-social">
                            <h4 class="share-now">Share:</h4>
                            <ul>
                                <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a class="youtube" href="#"><i class="fa fa-pinterest-p"></i></a></li>
                                <li><a class="dribbble" href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            </div>
        </div>
        
        <!-- Start Shop Newsletter  -->
        <!--		<section class="shop-newsletter section">
                                <div class="container">
                                        <div class="inner-top">
                                                <div class="row">
                                                        <div class="col-lg-8 offset-lg-2 col-12">
                                                                 Start Newsletter Inner 
                                                                <div class="inner">
                                                                        <h4>Newsletter</h4>
                                                                        <p> Subscribe to our newsletter and get <span>10%</span> off your first purchase</p>
                                                                        <form action="mail/mail.php" method="get" target="_blank" class="newsletter-inner">
                                                                                <input name="EMAIL" placeholder="Your email address" required="" type="email">
                                                                                <button class="btn">Subscribe</button>
                                                                        </form>
                                                                </div>
                                                                 End Newsletter Inner 
                                                        </div>
                                                </div>
                                        </div>
                                </div>
                        </section>-->
        <!-- End Shop Newsletter -->



        <!-- Modal -->
        
        <!-- Modal end -->

        <script>
            function addtocart(){
                var size = document.getElementById('size').value;
                var quantity = document.getElementById('quantity').value;
                var idP = ${prodetail.id};
                $.ajax({
                    url: "/Webbangiay/addtocart",
                    type: "get", //send it through get method
                    data: {
                        pid: idP,
                        size: size,
                        quantity: quantity
                    },
                    success: function (data) {
                        //Do Something
                        var row = document.getElementById("shopping-cart");
                        row.innerHTML = data;
                        var carts = document.getElementsByClassName('cart-item');
                        document.getElementById('total-count').innerHTML = carts.length;
                        document.getElementById('total-cart').innerHTML = carts.length + " Items";
                        var total = 0;
                        var qtts = document.getElementsByClassName('cart-quantity');
                        var prices = document.getElementsByClassName('cart-price');
                        for(var i = 0;i<qtts.length;i++){
                            total += qtts[i].getAttribute('data-value') * prices[i].getAttribute('data-value');
                        }
                        
                        document.getElementById('total-amount').innerHTML = "$ "+total+".0";
                    },
                    error: function (xhr) {
                        //Do Something to handle error
                    }
                });
            }
            function deletecartitem(pid , size){

                $.ajax({
                    url: "/Webbangiay/deletecartitem",
                    type: "get", //send it through get method
                    data: {
                        pid: pid,
                        size : size,
                    },
                    success: function (data) {
                        //Do Something
                        var row = document.getElementById("shopping-cart");
                        row.innerHTML = data;
                        var carts = document.getElementsByClassName('cart-item');
                        document.getElementById('total-count').innerHTML = carts.length;
                        document.getElementById('total-cart').innerHTML = carts.length + " Items";
                        var total = 0;
                        var qtts = document.getElementsByClassName('cart-quantity');
                        var prices = document.getElementsByClassName('cart-price');
                        for(var i = 0;i<qtts.length;i++){
                            total += qtts[i].getAttribute('data-value') * prices[i].getAttribute('data-value');
                        }
                        
                        document.getElementById('total-amount').innerHTML = "$ "+total+".0";
                    },
                    error: function (xhr) {
                        //Do Something to handle error
                    }
                });
            }
            function quickShop(id) {
                $.ajax({
                    url: "/Webbangiay/quickshop",
                    type: "get", //send it through get method
                    data: {
                        pid: id
                    },
                    success: function (data) {
                        //Do Something
                        var row = document.getElementById("exampleModal");
                        row.innerHTML = data;
                    },
                    error: function (xhr) {
                        //Do Something to handle error
                    }
                });
            }
            function sortProduct(tagID) {
                var sortBy = document.getElementById('sortOption').value;
                var Price = "";
                var Color = "";
                var PriceInput = document.getElementsByName("priceP");
                for (var i = 0; i < PriceInput.length; i++) {
                    if (PriceInput[i].checked === true) {
                        Price = PriceInput[i].value;
                        break;
                    }
                }
                var ColorInput = document.getElementsByName("color");
                for (var i = 0; i < ColorInput.length; i++) {
                    if (ColorInput[i].checked === true) {
                        Color = ColorInput[i].value;
                        break;
                    }
                }

                $.ajax({
                    url: "/Webbangiay/sortproduct",
                    type: "get", //send it through get method
                    data: {
                        cid: tagID,
                        sortName: sortBy,
                        price: Price,
                        color: Color
                    },
                    success: function (data) {
                        //Do Something

                        var row = document.getElementById("productView");
                        row.innerHTML = data;

                    },
                    error: function (xhr) {
                        //Do Something to handle error
                    }
                });
            }
            function autoSearch(search, tagID) {

                var Price = "";
                var Color = "";
                var PriceInput = document.getElementsByName("priceP");
                for (var i = 0; i < PriceInput.length; i++) {
                    if (PriceInput[i].checked === true) {
                        Price = PriceInput[i].value;
                        break;
                    }
                }
                var ColorInput = document.getElementsByName("color");
                for (var i = 0; i < ColorInput.length; i++) {
                    if (ColorInput[i].checked === true) {
                        Color = ColorInput[i].value;
                        break;
                    }
                }
                document.getElementById('searchfor').innerHTML = "Search for: " + search.value;
                $.ajax({
                    url: "/Webbangiay/autosearch",
                    type: "get", //send it through get method
                    data: {
                        cid: tagID,
                        search: search.value,
                        price: Price,
                        color: Color
                    },
                    success: function (data) {
                        //Do Something

                        var row = document.getElementById("productView");
                        row.innerHTML = data;

                    },
                    error: function (xhr) {
                        //Do Something to handle error
                    }
                });
            }
        </script>
        <!-- Start Footer Area -->
        <footer class="footer">
            <!-- Footer Top -->
            <div class="footer-top section">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-5 col-md-6 col-12">
                            <!-- Single Widget -->
                            <div class="single-footer about">
                                <div class="logo">
                                    <a href="index.html"><img src="images/logo2.png" alt="#"></a>
                                </div>
                                <p class="text">Praesent dapibus, neque id cursus ucibus, tortor neque egestas augue,  magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus.</p>
                                <p class="call">Got Question? Call us 24/7<span><a href="tel:123456789">+0123 456 789</a></span></p>
                            </div>
                            <!-- End Single Widget -->
                        </div>
                        <div class="col-lg-2 col-md-6 col-12">
                            <!-- Single Widget -->
                            <div class="single-footer links">
                                <h4>Information</h4>
                                <ul>
                                    <li><a href="#">About Us</a></li>
                                    <li><a href="#">Faq</a></li>
                                    <li><a href="#">Terms & Conditions</a></li>
                                    <li><a href="#">Contact Us</a></li>
                                    <li><a href="#">Help</a></li>
                                </ul>
                            </div>
                            <!-- End Single Widget -->
                        </div>
                        <div class="col-lg-2 col-md-6 col-12">
                            <!-- Single Widget -->
                            <div class="single-footer links">
                                <h4>Customer Service</h4>
                                <ul>
                                    <li><a href="#">Payment Methods</a></li>
                                    <li><a href="#">Money-back</a></li>
                                    <li><a href="#">Returns</a></li>
                                    <li><a href="#">Shipping</a></li>
                                    <li><a href="#">Privacy Policy</a></li>
                                </ul>
                            </div>
                            <!-- End Single Widget -->
                        </div>
                        <div class="col-lg-3 col-md-6 col-12">
                            <!-- Single Widget -->
                            <div class="single-footer social">
                                <h4>Get In Tuch</h4>
                                <!-- Single Widget -->
                                <div class="contact">
                                    <ul>
                                        <li>NO. 342 - London Oxford Street.</li>
                                        <li>012 United Kingdom.</li>
                                        <li>info@eshop.com</li>
                                        <li>+032 3456 7890</li>
                                    </ul>
                                </div>
                                <!-- End Single Widget -->
                                <ul>
                                    <li><a href="#"><i class="ti-facebook"></i></a></li>
                                    <li><a href="#"><i class="ti-twitter"></i></a></li>
                                    <li><a href="#"><i class="ti-flickr"></i></a></li>
                                    <li><a href="#"><i class="ti-instagram"></i></a></li>
                                </ul>
                            </div>
                            <!-- End Single Widget -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Footer Top -->
            <div class="copyright">
                <div class="container">
                    <div class="inner">
                        <div class="row">
                            <div class="col-lg-6 col-12">
                                <div class="left">
                                    <p>Copyright © 2020 <a href="http://www.wpthemesgrid.com" target="_blank">Wpthemesgrid</a>  -  All Rights Reserved.</p>
                                </div>
                            </div>
                            <div class="col-lg-6 col-12">
                                <div class="right">
                                    <img src="images/payments.png" alt="#">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- /End Footer Area -->


        <!-- Jquery -->
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-migrate-3.0.0.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <!-- Popper JS -->
        <script src="js/popper.min.js"></script>
        <!-- Bootstrap JS -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Color JS -->
        <script src="js/colors.js"></script>
        <!-- Slicknav JS -->
        <script src="js/slicknav.min.js"></script>
        <!-- Owl Carousel JS -->
        <script src="js/owl-carousel.js"></script>
        <!-- Magnific Popup JS -->
        <script src="js/magnific-popup.js"></script>
        <!-- Fancybox JS -->
        <script src="js/facnybox.min.js"></script>
        <!-- Waypoints JS -->
        <script src="js/waypoints.min.js"></script>
        <!-- Countdown JS -->
        <script src="js/finalcountdown.min.js"></script>
        <!-- Nice Select JS -->
        <script src="js/nicesellect.js"></script>
        <!-- Ytplayer JS -->
        <script src="js/ytplayer.min.js"></script>
        <!-- Flex Slider JS -->
        <script src="js/flex-slider.js"></script>
        <!-- ScrollUp JS -->
        <script src="js/scrollup.js"></script>
        <!-- Onepage Nav JS -->
        <script src="js/onepage-nav.min.js"></script>
        <!-- Easing JS -->
        <script src="js/easing.js"></script>
        <!-- Active JS -->
        <script src="js/active.js"></script>
    </body>
</html>
