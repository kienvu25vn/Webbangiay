<%@page import="entity.Cart"%>
<%@page import="java.util.List"%>
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
        <title>Group 18</title>
        <!-- Favicon -->
        <link rel="icon" type="image/png" href="images/favicon.png">
        <!-- Web Font -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
        <script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script><!-- comment -->
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
        <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v13.0" nonce="YP62POiV"></script>
        <!-- Messenger Chat Plugin Code -->
        <div id="fb-root"></div>

        <!-- Your Chat Plugin code -->
        <div id="fb-customer-chat" class="fb-customerchat">
        </div>

        <script>
            var chatbox = document.getElementById('fb-customer-chat');
            chatbox.setAttribute("page_id", "100328352690457");
            chatbox.setAttribute("attribution", "biz_inbox");
        </script>

        <!-- Your SDK code -->
        <script>
            window.fbAsyncInit = function () {
                FB.init({
                    xfbml: true,
                    version: 'v13.0'
                });
            };

            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id))
                    return;
                js = d.createElement(s);
                js.id = id;
                js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        </script>
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
        <%@include file="header.jsp" %>
        <!--/ End Header -->

        <!-- Slider Area -->
        <section class="hero-slider">
            <!-- Single Slider -->
            <div class="single-slider">
                <div class="container">
                    <div class="row no-gutters">
                        <div class="col-lg-9 offset-lg-3 col-12">
                            <div class="text-inner">
                                <div class="row">
                                    <div class="col-lg-7 col-12">
                                        <div class="hero-text">
                                            <h1><span>100% AUTHENTIC </span>Sneaker</h1>
                                            <p>Maboriosam in a nesciung eget magnae <br> dapibus disting tloctio in the find it pereri <br> odiy maboriosm.</p>
                                            <div class="button">
                                                <a href="shopmain" class="btn">Shop Now!</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/ End Single Slider -->
        </section>
        <!--/ End Slider Area -->

        <!-- Start Product Area -->
        <div class="product-area section">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title">
                            <h2>New Arrivals</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="product-info">
                            <div class="nav-main">
                                <!-- Tab Nav -->
                                <ul class="nav nav-tabs" id="myTab" >
                                    <li  class="nav-item"><a class="nav-link ${cid == 1 ? "section-title":""}"   onclick="clickAdidas()" >Adidas</a></li>
                                    <li  class="nav-item"><a class="nav-link ${Cid == 2 ? "active":""}"  onclick="clickNike()" >Nike</a></li>
                                    <li  class="nav-item"><a class="nav-link ${Cid == 3 ? "active":""}"  onclick="clickPuma()" >Puma</a></li>
                                    <li  class="nav-item"><a class="nav-link ${Cid == 4 ? "active":""}"  onclick="clickVanz()" >Vanz</a></li>
                                    <li  class="nav-item"><a class="nav-link ${Cid == 5 ? "active":""}"  onclick="clickConverse()" >Converse</a></li>
                                    <li  class="nav-item"><a class="nav-link ${Cid == 6 ? "active":""}"  onclick="clickNewBalance()" >New Balance</a></li>
                                </ul>
                                <!--/ End Tab Nav -->
                            </div>


                            <div class="tab-content" id="myTabContent">
                                <!-- Start Single Tab -->
                                <div class="tab-pane fade show active" id="man" role="tabpanel">
                                    <div class="tab-single">
                                        <div id="content" class="row">
                                            <c:forEach items="${listByCID}" var="o">
                                                <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                    <div class="single-product">
                                                        <div class="product-img">
                                                            <a href="product-details.html">
                                                                <img class="default-img" src="${o.image}" alt="#">
                                                                <img class="hover-img" src="${o.image}" alt="#">
                                                            </a>
                                                            <div class="button-head">
                                                                <div class="product-action">
                                                                    <a data-toggle="modal" data-target="#exampleModal" title="Quick View" onlick="quickShop(${o.id})"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                    
                                                                </div>
                                                                <div class="product-action-2">
                                                                    <a title="Add to cart" onclick="addtocartquick(${o.id})">Add to cart</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="product-content">
                                                            <h3><a href="product-details.html">${o.title}</a></h3>
                                                            <div class="product-price">
                                                                <span>${o.price}$</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                                <script>
                                    function addtocartquick(pid) {

                                        $.ajax({
                                            url: "/Webbangiay/addtocart",
                                            type: "get", //send it through get method
                                            data: {
                                                pid: pid,
                                                size: "S",
                                                quantity: 1
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
                                                for (var i = 0; i < qtts.length; i++) {
                                                    total += qtts[i].getAttribute('data-value') * prices[i].getAttribute('data-value');
                                                }

                                                document.getElementById('total-amount').innerHTML = "$ " + total + ".0";
                                            },
                                            error: function (xhr) {
                                                //Do Something to handle error
                                            }
                                        });
                                    }
                                    function deletecartitem(pid) {

//                var pid = ${p.product.id};
//                var size = ${p.size};
//                var quantity = ${p.product.quantity};

                                        $.ajax({
                                            url: "/Webbangiay/deletecartitem",
                                            type: "get", //send it through get method
                                            data: {
                                                pid: pid,

//                        quantity: quantity
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
                                                for (var i = 0; i < qtts.length; i++) {
                                                    total += qtts[i].getAttribute('data-value') * prices[i].getAttribute('data-value');
                                                }

                                                document.getElementById('total-amount').innerHTML = "$ " + total + ".0";
                                            },
                                            error: function (xhr) {
                                                //Do Something to handle error
                                            }
                                        });
                                    }
                                    function clickAdidas() {

                                        $.ajax({
                                            url: "/Webbangiay/home",
                                            type: "get", //send it through get method
                                            data: {
                                                cid: "1"
                                            },
                                            success: function (data) {
                                                //Do Something
                                                var row = document.getElementById("content");
                                                row.innerHTML = data;
                                            },
                                            error: function (xhr) {
                                                //Do Something to handle error
                                            }
                                        });
                                    }
                                    function clickNike() {

                                        $.ajax({
                                            url: "/Webbangiay/home",
                                            type: "get", //send it through get method
                                            data: {
                                                cid: "2"
                                            },
                                            success: function (data) {
                                                //Do Something

                                                var row = document.getElementById("content");
                                                row.innerHTML = data;
                                            },
                                            error: function (xhr) {
                                                //Do Something to handle error
                                            }
                                        });
                                    }
                                    function clickPuma() {

                                        $.ajax({
                                            url: "/Webbangiay/home",
                                            type: "get", //send it through get method
                                            data: {
                                                cid: "3"
                                            },
                                            success: function (data) {
                                                //Do Something
                                                var row = document.getElementById("content");
                                                row.innerHTML = data;
                                            },
                                            error: function (xhr) {
                                                //Do Something to handle error
                                            }
                                        });
                                    }
                                    function clickVanz() {

                                        $.ajax({
                                            url: "/Webbangiay/home",
                                            type: "get", //send it through get method
                                            data: {
                                                cid: "4"
                                            },
                                            success: function (data) {
                                                //Do Something
                                                var row = document.getElementById("content");
                                                row.innerHTML = data;
                                            },
                                            error: function (xhr) {
                                                //Do Something to handle error
                                            }
                                        });
                                    }
                                    function clickConverse() {

                                        $.ajax({
                                            url: "/Webbangiay/home",
                                            type: "get", //send it through get method
                                            data: {
                                                cid: "5"
                                            },
                                            success: function (data) {
                                                //Do Something
                                                var row = document.getElementById("content");
                                                row.innerHTML = data;
                                            },
                                            error: function (xhr) {
                                                //Do Something to handle error
                                            }
                                        });
                                    }
                                    function clickNewBalance() {

                                        $.ajax({
                                            url: "/Webbangiay/home",
                                            type: "get", //send it through get method
                                            data: {
                                                cid: "6"
                                            },
                                            success: function (data) {
                                                //Do Something
                                                var row = document.getElementById("content");
                                                row.innerHTML = data;
                                            },
                                            error: function (xhr) {
                                                //Do Something to handle error
                                            }
                                        });
                                    }
                                </script>
                                <!--
                                <!--/ End Single Tab -->
                                <!-- Start Single Tab -->
                                <div class="tab-pane fade" id="women" role="tabpanel">
                                    <div class="tab-single">
                                        <div class="row">
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Women Hot Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Pink Show</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="new">New</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Women Pant Collectons</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="price-dec">30% Off</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Cap For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Polo Dress For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="out-of-stock">Hot</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Black Sunglass For Women</a></h3>
                                                        <div class="product-price">
                                                            <span class="old">$60.00</span>
                                                            <span>$50.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--/ End Single Tab -->
                                <!-- Start Single Tab -->
                                <div class="tab-pane fade" id="kids" role="tabpanel">
                                    <div class="tab-single">
                                        <div class="row">
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Women Hot Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Pink Show</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="new">New</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Women Pant Collectons</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="price-dec">30% Off</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Cap For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Polo Dress For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="out-of-stock">Hot</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Black Sunglass For Women</a></h3>
                                                        <div class="product-price">
                                                            <span class="old">$60.00</span>
                                                            <span>$50.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--/ End Single Tab -->
                                <!-- Start Single Tab -->
                                <div class="tab-pane fade" id="accessories" role="tabpanel">
                                    <div class="tab-single">
                                        <div class="row">
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Women Hot Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Pink Show</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="new">New</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Women Pant Collectons</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="price-dec">30% Off</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Cap For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Polo Dress For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="out-of-stock">Hot</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Black Sunglass For Women</a></h3>
                                                        <div class="product-price">
                                                            <span class="old">$60.00</span>
                                                            <span>$50.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--/ End Single Tab -->
                                <!-- Start Single Tab -->
                                <div class="tab-pane fade" id="essential" role="tabpanel">
                                    <div class="tab-single">
                                        <div class="row">
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Women Hot Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Pink Show</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="new">New</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Women Pant Collectons</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="price-dec">30% Off</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Cap For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Polo Dress For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="out-of-stock">Hot</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Black Sunglass For Women</a></h3>
                                                        <div class="product-price">
                                                            <span class="old">$60.00</span>
                                                            <span>$50.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--/ End Single Tab -->
                                <!-- Start Single Tab -->
                                <div class="tab-pane fade" id="prices" role="tabpanel">
                                    <div class="tab-single">
                                        <div class="row">
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Women Hot Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Pink Show</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="new">New</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Women Pant Collectons</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="price-dec">30% Off</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Awesome Cap For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Polo Dress For Women</a></h3>
                                                        <div class="product-price">
                                                            <span>$29.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                                <div class="single-product">
                                                    <div class="product-img">
                                                        <a href="product-details.html">
                                                            <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                                            <span class="out-of-stock">Hot</span>
                                                        </a>
                                                        <div class="button-head">
                                                            <div class="product-action">
                                                                <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                                <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                                <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                                            </div>
                                                            <div class="product-action-2">
                                                                <a title="Add to cart" href="#">Add to cart</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product-content">
                                                        <h3><a href="product-details.html">Black Sunglass For Women</a></h3>
                                                        <div class="product-price">
                                                            <span class="old">$60.00</span>
                                                            <span>$50.00</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--/ End Single Tab -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Product Area -->

        <!-- Start Midium Banner  -->
        <section class="midium-banner">
            <div class="container">
                <div class="row">
                    <!-- Single Banner  -->
                    <div class="col-lg-12 col-md-12 col-12">
                        <div class="single-banner">
                            <img src="images/collection1.jpg" alt="#">
                            <div class="content">
                                <p style="font-size: 30px;">Sale off</p>
                                <h3> <br>Up to<span> 50%</span></h3>
                                <a href="#">Shop Now</a>
                            </div>
                        </div>
                    </div>
                    <!-- /End Single Banner  -->
                    <!-- Single Banner  -->
<!--                    <div class="col-lg-6 col-md-6 col-12">
                        <div class="single-banner">
                            <img src="https://via.placeholder.com/600x370" alt="#">
                            <div class="content">
                                <p>shoes women</p>
                                <h3>mid season <br> up to <span>70%</span></h3>
                                <a href="#" class="btn">Shop Now</a>
                            </div>
                        </div>
                    </div>-->
                    <!-- /End Single Banner  -->
                </div>
            </div>
        </section>
        <!-- End Midium Banner -->

        <!-- Start Most Popular -->
        <div class="product-area most-popular section">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title">
                            <h2>Hot Item</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="owl-carousel popular-slider">
                            <!-- Start Single Product -->
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="product-details.html">
                                        <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                        <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                        <span class="out-of-stock">Hot</span>
                                    </a>
                                    <div class="button-head">
                                        <div class="product-action">
                                            <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                            <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                            <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                        </div>
                                        <div class="product-action-2">
                                            <a title="Add to cart" href="#">Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h3><a href="product-details.html">Black Sunglass For Women</a></h3>
                                    <div class="product-price">
                                        <span class="old">$60.00</span>
                                        <span>$50.00</span>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="product-details.html">
                                        <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                        <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                    </a>
                                    <div class="button-head">
                                        <div class="product-action">
                                            <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                            <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                            <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                        </div>
                                        <div class="product-action-2">
                                            <a title="Add to cart" href="#">Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h3><a href="product-details.html">Women Hot Collection</a></h3>
                                    <div class="product-price">
                                        <span>$50.00</span>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="product-details.html">
                                        <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                        <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                        <span class="new">New</span>
                                    </a>
                                    <div class="button-head">
                                        <div class="product-action">
                                            <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                            <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                            <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                        </div>
                                        <div class="product-action-2">
                                            <a title="Add to cart" href="#">Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h3><a href="product-details.html">Awesome Pink Show</a></h3>
                                    <div class="product-price">
                                        <span>$50.00</span>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                            <!-- Start Single Product -->
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="product-details.html">
                                        <img class="default-img" src="https://via.placeholder.com/550x750" alt="#">
                                        <img class="hover-img" src="https://via.placeholder.com/550x750" alt="#">
                                    </a>
                                    <div class="button-head">
                                        <div class="product-action">
                                            <a data-toggle="modal" data-target="#exampleModal" title="Quick View" href="#"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                            <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                            <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
                                        </div>
                                        <div class="product-action-2">
                                            <a title="Add to cart" href="#">Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h3><a href="product-details.html">Awesome Bags Collection</a></h3>
                                    <div class="product-price">
                                        <span>$50.00</span>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Product -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Most Popular Area -->

        <!-- Start Shop Home List  -->
        <section class="shop-home-list section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="row">
                            <div class="col-12">
                                <div class="shop-section-title">
                                    <h1>On sale</h1>
                                </div>
                            </div>
                        </div>
                        <!-- Start Single List  -->
                        <div class="single-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="list-image overlay">
                                        <img src="https://via.placeholder.com/115x140" alt="#">
                                        <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12 no-padding">
                                    <div class="content">
                                        <h4 class="title"><a href="#">Licity jelly leg flat Sandals</a></h4>
                                        <p class="price with-discount">$59</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single List  -->
                        <!-- Start Single List  -->
                        <div class="single-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="list-image overlay">
                                        <img src="https://via.placeholder.com/115x140" alt="#">
                                        <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12 no-padding">
                                    <div class="content">
                                        <h5 class="title"><a href="#">Licity jelly leg flat Sandals</a></h5>
                                        <p class="price with-discount">$44</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single List  -->
                        <!-- Start Single List  -->
                        <div class="single-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="list-image overlay">
                                        <img src="https://via.placeholder.com/115x140" alt="#">
                                        <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12 no-padding">
                                    <div class="content">
                                        <h5 class="title"><a href="#">Licity jelly leg flat Sandals</a></h5>
                                        <p class="price with-discount">$89</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single List  -->
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="row">
                            <div class="col-12">
                                <div class="shop-section-title">
                                    <h1>Best Seller</h1>
                                </div>
                            </div>
                        </div>
                        <!-- Start Single List  -->
                        <div class="single-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="list-image overlay">
                                        <img src="https://via.placeholder.com/115x140" alt="#">
                                        <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12 no-padding">
                                    <div class="content">
                                        <h5 class="title"><a href="#">Licity jelly leg flat Sandals</a></h5>
                                        <p class="price with-discount">$65</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single List  -->
                        <!-- Start Single List  -->
                        <div class="single-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="list-image overlay">
                                        <img src="https://via.placeholder.com/115x140" alt="#">
                                        <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12 no-padding">
                                    <div class="content">
                                        <h5 class="title"><a href="#">Licity jelly leg flat Sandals</a></h5>
                                        <p class="price with-discount">$33</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single List  -->
                        <!-- Start Single List  -->
                        <div class="single-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="list-image overlay">
                                        <img src="https://via.placeholder.com/115x140" alt="#">
                                        <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12 no-padding">
                                    <div class="content">
                                        <h5 class="title"><a href="#">Licity jelly leg flat Sandals</a></h5>
                                        <p class="price with-discount">$77</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single List  -->
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                        <div class="row">
                            <div class="col-12">
                                <div class="shop-section-title">
                                    <h1>Top viewed</h1>
                                </div>
                            </div>
                        </div>
                        <!-- Start Single List  -->
                        <div class="single-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="list-image overlay">
                                        <img src="https://via.placeholder.com/115x140" alt="#">
                                        <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12 no-padding">
                                    <div class="content">
                                        <h5 class="title"><a href="#">Licity jelly leg flat Sandals</a></h5>
                                        <p class="price with-discount">$22</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single List  -->
                        <!-- Start Single List  -->
                        <div class="single-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="list-image overlay">
                                        <img src="https://via.placeholder.com/115x140" alt="#">
                                        <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12 no-padding">
                                    <div class="content">
                                        <h5 class="title"><a href="#">Licity jelly leg flat Sandals</a></h5>
                                        <p class="price with-discount">$35</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single List  -->
                        <!-- Start Single List  -->
                        <div class="single-list">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <div class="list-image overlay">
                                        <img src="https://via.placeholder.com/115x140" alt="#">
                                        <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12 no-padding">
                                    <div class="content">
                                        <h5 class="title"><a href="#">Licity jelly leg flat Sandals</a></h5>
                                        <p class="price with-discount">$99</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single List  -->
                    </div>
                </div>
            </div>
        </section>
        <!-- End Shop Home List  -->

        <!-- Start Cowndown Area -->
        <section class="cown-down">
            <div class="section-inner ">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-6 col-12 padding-right">
                            <div class="image">
                                <img src="https://via.placeholder.com/750x590" alt="#">
                            </div>	
                        </div>	
                        <div class="col-lg-6 col-12 padding-left">
                            <div class="content">
                                <div class="heading-block">
                                    <p class="small-title">Deal of day</p>
                                    <h3 class="title">Beatutyful dress for women</h3>
                                    <p class="text">Suspendisse massa leo, vestibulum cursus nulla sit amet, frungilla placerat lorem. Cars fermentum, sapien. </p>
                                    <h1 class="price">$1200 <s>$1890</s></h1>
                                    <div class="coming-time">
                                        <div class="clearfix" data-countdown="2021/02/30"></div>
                                    </div>
                                </div>
                            </div>	
                        </div>	
                    </div>
                </div>
            </div>
        </section>
        <!-- /End Cowndown Area -->

        <!-- Start Shop Blog  -->
<!--        <section class="shop-blog section">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title">
                            <h2>From Our Blog</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-12">
                         Start Single Blog  
                        <div class="shop-single-blog">
                            <img src="https://via.placeholder.com/370x300" alt="#">
                            <div class="content">
                                <p class="date">22 July , 2020. Monday</p>
                                <a href="#" class="title">Sed adipiscing ornare.</a>
                                <a href="#" class="more-btn">Continue Reading</a>
                            </div>
                        </div>
                         End Single Blog  
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                         Start Single Blog  
                        <div class="shop-single-blog">
                            <img src="https://via.placeholder.com/370x300" alt="#">
                            <div class="content">
                                <p class="date">22 July, 2020. Monday</p>
                                <a href="#" class="title">Man’s Fashion Winter Sale</a>
                                <a href="#" class="more-btn">Continue Reading</a>
                            </div>
                        </div>
                         End Single Blog  
                    </div>
                    <div class="col-lg-4 col-md-6 col-12">
                         Start Single Blog  
                        <div class="shop-single-blog">
                            <img src="https://via.placeholder.com/370x300" alt="#">
                            <div class="content">
                                <p class="date">22 July, 2020. Monday</p>
                                <a href="#" class="title">Women Fashion Festive</a>
                                <a href="#" class="more-btn">Continue Reading</a>
                            </div>
                        </div>
                         End Single Blog  
                    </div>
                </div>
            </div>
        </section>-->
        <!-- End Shop Blog  -->

        <!-- Start Shop Services Area -->
        <section class="shop-services section home">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Service -->
                        <div class="single-service">
                            <i class="ti-rocket"></i>
                            <h4>Free shiping</h4>
                            <p>Orders over $500</p>
                        </div>
                        <!-- End Single Service -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Service -->
                        <div class="single-service">
                            <i class="ti-reload"></i>
                            <h4>Free Return</h4>
                            <p>Within 30 days returns</p>
                        </div>
                        <!-- End Single Service -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Service -->
                        <div class="single-service">
                            <i class="ti-lock"></i>
                            <h4>Sucure Payment</h4>
                            <p>100% secure payment</p>
                        </div>
                        <!-- End Single Service -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Service -->
                        <div class="single-service">
                            <i class="ti-tag"></i>
                            <h4>Best Peice</h4>
                            <p>Guaranteed price</p>
                        </div>
                        <!-- End Single Service -->
                    </div>
                </div>
            </div>
        </section>
        <!-- End Shop Services Area -->

        <!-- Start Shop Newsletter  -->
       
        <!-- End Shop Newsletter -->

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span class="ti-close" aria-hidden="true"></span></button>
                    </div>
                    <div class="modal-body">
                        <div class="row no-gutters">
                            <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                                <!-- Product Slider -->
                                <div class="product-gallery">
                                    <div class="quickview-slider-active">
                                        <div class="single-slider">
                                            <img src="https://via.placeholder.com/569x528" alt="#">
                                        </div>
                                        <div class="single-slider">
                                            <img src="https://via.placeholder.com/569x528" alt="#">
                                        </div>
                                        <div class="single-slider">
                                            <img src="https://via.placeholder.com/569x528" alt="#">
                                        </div>
                                        <div class="single-slider">
                                            <img src="https://via.placeholder.com/569x528" alt="#">
                                        </div>
                                    </div>
                                </div>
                                <!-- End Product slider -->
                            </div>
                            <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12">
                                <div class="quickview-content">
                                    <h2>Flared Shift Dress</h2>
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
                                    <h3>$29.00</h3>
                                    <div class="quickview-peragraph">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia iste laborum ad impedit pariatur esse optio tempora sint ullam autem deleniti nam in quos qui nemo ipsum numquam.</p>
                                    </div>
                                    <div class="size">
                                        <div class="row">
                                            <div class="col-lg-6 col-12">
                                                <h5 class="title">Size</h5>
                                                <select>
                                                    <option selected="selected">s</option>
                                                    <option>m</option>
                                                    <option>l</option>
                                                    <option>xl</option>
                                                </select>
                                            </div>
                                            <div class="col-lg-6 col-12">
                                                <h5 class="title">Color</h5>
                                                <select>
                                                    <option selected="selected">orange</option>
                                                    <option>purple</option>
                                                    <option>black</option>
                                                    <option>pink</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="quantity">
                                        <!-- Input Order -->
                                        <div class="input-group">
                                            <div class="button minus">
                                                <button type="button" class="btn btn-primary btn-number" disabled="disabled" data-type="minus" data-field="quant[1]">
                                                    <i class="ti-minus"></i>
                                                </button>
                                            </div>
                                            <input type="text" name="quant[1]" class="input-number"  data-min="1" data-max="1000" value="1">
                                            <div class="button plus">
                                                <button type="button" class="btn btn-primary btn-number" data-type="plus" data-field="quant[1]">
                                                    <i class="ti-plus"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <!--/ End Input Order -->
                                    </div>
                                    <div class="add-to-cart">
                                        <a href="#" class="btn">Add to cart</a>
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
        </div>
        <!-- Modal end -->
        <script>
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
        </script>
        <!-- Start Footer Area -->
        <%@include file="footer.jsp" %>
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
        <!-- Waypoints JS -->
        <script src="js/waypoints.min.js"></script>
        <!-- Countdown JS -->
        <script src="js/finalcountdown.min.js"></script>
        <!-- Nice Select JS -->
        <script src="js/nicesellect.js"></script>
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
        <!--         <script>
                                            function loadProduct1(){
                                               
                                                $.ajax({
                                                type: "get",
                                                url: "/Webbangiay/home",
                                                data: {
                                                    cid : 1;
                                                }
                                                success: function (data) {
                                                   var row = document.getElementById("content");
                                                   row.innerHTML = data;
                                                }
                                            });
                                            }
                                            function loadProduct2(){
                                               
                                                $.ajax({
                                                type: "get",
                                                url: "/Webbangiay/home",
                                                data: {
                                                    cid : 2;
                                                }
                                                success: function (data) {
                                                   var row = document.getElementById("content");
                                                   row.innerHTML = data;
                                                }
                                            });
                                            }
                                            function loadProduct3(){
                                               
                                                $.ajax({
                                                type: "get",
                                                url: "/Webbangiay/home",
                                                data: {
                                                    cid : 3;
                                                }
                                                success: function (data) {
                                                   var row = document.getElementById("content");
                                                   row.innerHTML = data;
                                                }
                                            });
                                            }
                                            function loadProduct4(){
                                               
                                                $.ajax({
                                                type: "get",
                                                url: "/Webbangiay/home",
                                                data: {
                                                    cid : 4;
                                                }
                                                success: function (data) {
                                                   var row = document.getElementById("content");
                                                   row.innerHTML = data;
                                                }
                                            });
                                            }
                                            function loadProduct5(){
                                               
                                                $.ajax({
                                                type: "get",
                                                url: "/Webbangiay/home",
                                                data: {
                                                    cid : 5;
                                                }
                                                success: function (data) {
                                                   var row = document.getElementById("content");
                                                   row.innerHTML = data;
                                                }
                                            });
                                            }
                                            function loadProduct6(){
                                               
                                                $.ajax({
                                                type: "get",
                                                url: "/Webbangiay/home",
                                                data: {
                                                    cid : 6;
                                                }
                                                success: function (data) {
                                                   var row = document.getElementById("content");
                                                   row.innerHTML = data;
                                                }
                                            });
                                            }
                                        </script>-->
    </body>
</html>
