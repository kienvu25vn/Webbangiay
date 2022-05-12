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
        <title>Group 18</title>
        <!-- Favicon -->
        <link rel="icon" type="image/png" href="images/favicon.png">
        <!-- Web Font -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
        <script
  src="https://code.jquery.com/jquery-3.6.0.js"
  integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
  crossorigin="anonymous"></script>
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
                                    <li><i class="ti-email"></i> group18@webshop.com</li>
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
                                    <c:if test="${sessionScope.acc != null}">
                                        <li><i class="ti-user"></i>Hello ${sessionScope.acc.user}</li>
                                        <li><i class="ti-power-off"></i><a href="logout">Logout</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.acc == null}">
                                        <li><i class="ti-power-off"></i><a href="Login.jsp">Login</a></li>
                                    </c:if>
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
                                    <a href="history" class="single-icon"><i class="fa fa-user-circle-o" aria-hidden="true"></i></a>
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
                                            <a href="cart.jsp">View Cart</a>
                                        </div>
                                        <ul class="shopping-list" id="shopping-cart">
                                            <c:forEach items="${listCart}" var="p">
                                                <li class="car-item">
                                    
                                                    <a onclick="deletecartitem(${p.product.id} )" class="remove" title="Remove this item"><i class="fa fa-remove"></i></a>
                                                    <a class="cart-img" href="productdetail?pid=${p.product.id}"><img src="${p.product.image}" alt="#"></a>
                                                    <h4><a href="productdetail?pid=${p.product.id}">${p.product.title}</a></h4>
                                                    <p class="quantity cart-quantity" id="cart-quantity" value="${p.quantity}">${p.quantity}x - <span class="amount cart-price" id="cart-price" value="${p.product.price}">$${p.product.price}</span> - <span class="size">Size ${p.size}</span></p>
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
                                            <a href="checkout.jsp" class="btn animate">Checkout</a>
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
                                                     <c:if test="${sessionScope.acc.isAdmin == 1}">
                                                        <li><a href="manager">Manage Products</a></li>
                                                        </c:if>
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
                                <li class="active"><a href="blog-single.html">${tag}</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Breadcrumbs -->
        <p  data-value="${tagID}" id="tagID" style="display: none;">${tagID}</p>
        <!-- Product Style -->
        <section class="product-area shop-sidebar shop section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-4 col-12">
                        <div class="shop-sidebar">
                            <!-- Single Widget -->
                            <div class="single-widget category">
                                <h3 class="title">Categories</h3>
                                <ul class="categor-list"  >
                                    <c:forEach items="${listCategory}" var="o">
                                        <li><a href="category?cid=${o.cid}" ${tagID == o.cid ? "style=\"color: #F7941D;\"" : ""}">${o.cname}</a></li>
                                        </c:forEach>

                                </ul>
                            </div>
                            <!--/ End Single Widget -->
                            <!-- Shop By Price -->
                            <div class="single-widget range">
                                <h3 class="title">Price</h3>
                                <!--										<div class="price-filter">
                                                                                                                        <div class="price-filter-inner">
                                                                                                                                <div id="slider-range"></div>
                                                                                                                                        <div class="price_slider_amount">
                                                                                                                                        <div class="label-input">
                                                                                                                                                <span>Range:</span><input type="text" id="amount" name="price" placeholder="Add Your Price"/>
                                                                                                                                        </div>
                                                                                                                                </div>
                                                                                                                        </div>
                                                                                                                </div>-->
                                <ul class="check-box-list">
                                    <li>
                                        <label class="checkbox-inline" for="0"><input onchange="sortProduct(1,${tagID})" name="priceP" id="0" type="radio" value="all" checked>All</label>
                                    </li>
                                    <li>
                                        <label class="checkbox-inline" for="1"><input onchange="sortProduct(1,${tagID})" name="priceP" id="1" type="radio" value="100">$100 - $300</label>
                                    </li>
                                    <li>
                                        <label class="checkbox-inline" for="2"><input onchange="sortProduct(1,${tagID})" name="priceP" id="2" type="radio" value="300">$300 - $500</label>
                                    </li>
                                    <li>
                                        <label class="checkbox-inline" for="3"><input onchange="sortProduct(1,${tagID})" name="priceP" id="3" type="radio" value="500">$500 - $700</label>
                                    </li>
                                    <li>
                                        <label class="checkbox-inline" for="4"><input onchange="sortProduct(1,${tagID})" name="priceP" id="4" type="radio" value="700">> $700</label>
                                    </li>
                                </ul>
                            </div>
                            <div class="single-widget range">
                                <h3 class="title">Color</h3>
                                <ul class="check-box-list">
                                    <li>
                                        <label class="checkbox-inline" for="c0"><input onchange="sortProduct(1,${tagID})" name="color" id="c0" type="radio" value="all" checked>All</label>
                                    </li>
                                    <li>
                                        <label class="checkbox-inline" for="c1"><input onchange="sortProduct(1,${tagID})" name="color" id="c1" type="radio" value="white"><span style="background: #fff;height: 14px; width: 14px;border-radius: 50% ;color: transparent" >ab</span><span class="color-des">&nbsp;White</span></label>
                                    </li>
                                    <li>
                                        <label class="checkbox-inline" for="c2"><input onchange="sortProduct(1,${tagID})" name="color" id="c2" type="radio" value="black"><span style="background: #000;height: 14px; width: 14px;border-radius: 50% ;color: transparent" >ab</span><span class="color-des">&nbsp;Black</span></label>
                                    </li>
                                    <li>
                                        <label class="checkbox-inline" for="c3"><input onchange="sortProduct(1,${tagID})" name="color" id="c3" type="radio" value="yellow"><span style="background: #ff0;height: 14px; width: 14px;border-radius: 50% ;color: transparent" >ab</span><span class="color-des">&nbsp;Yellow</span></label>
                                    </li>
                                    <li>
                                        <label class="checkbox-inline" for="c4"><input onchange="sortProduct(1,${tagID})" name="color" id="c4" type="radio" value="red"><span style="background: #ff0000;height: 14px; width: 14px;border-radius: 50% ;color: transparent" >ab</span><span class="color-des">&nbsp;Red</span></label>
                                    </li>
                                    <li>
                                        <label class="checkbox-inline" for="c5"><input onchange="sortProduct(1,${tagID})" name="color" id="c5" type="radio" value="green"><span style="background: #00ff00;height: 14px; width: 14px;border-radius: 50% ;color: transparent" >ab</span><span class="color-des">&nbsp;Green</span></label>
                                    </li> 
                                    <li>
                                        <label class="checkbox-inline" for="c6"><input onchange="sortProduct(1,${tagID})" name="color" id="c6" type="radio" value="grey"><span style="background: #eee;height: 14px; width: 14px;border-radius: 50% ;color: transparent">ab</span><span class="color-des">&nbsp;Grey</span></label>
                                    </li>
                                </ul>
                            </div>
                            <!--/ End Shop By Price -->
                            <!-- Single Widget -->
                            <div class="single-widget recent-post">
                                <h3 class="title">Recent post</h3>
                                <!-- Single Post -->
                                <div class="single-post first">
                                    <div class="image">
                                        <img src="https://via.placeholder.com/75x75" alt="#">
                                    </div>
                                    <div class="content">
                                        <h5><a href="#">Girls Dress</a></h5>
                                        <p class="price">$99.50</p>
                                        <ul class="reviews">
                                            <li class="yellow"><i class="ti-star"></i></li>
                                            <li class="yellow"><i class="ti-star"></i></li>
                                            <li class="yellow"><i class="ti-star"></i></li>
                                            <li><i class="ti-star"></i></li>
                                            <li><i class="ti-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- End Single Post -->
                                <!-- Single Post -->
                                <div class="single-post first">
                                    <div class="image">
                                        <img src="https://via.placeholder.com/75x75" alt="#">
                                    </div>
                                    <div class="content">
                                        <h5><a href="#">Women Clothings</a></h5>
                                        <p class="price">$99.50</p>
                                        <ul class="reviews">
                                            <li class="yellow"><i class="ti-star"></i></li>
                                            <li class="yellow"><i class="ti-star"></i></li>
                                            <li class="yellow"><i class="ti-star"></i></li>
                                            <li class="yellow"><i class="ti-star"></i></li>
                                            <li><i class="ti-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- End Single Post -->
                                <!-- Single Post -->
                                <div class="single-post first">
                                    <div class="image">
                                        <img src="https://via.placeholder.com/75x75" alt="#">
                                    </div>
                                    <div class="content">
                                        <h5><a href="#">Man Tshirt</a></h5>
                                        <p class="price">$99.50</p>
                                        <ul class="reviews">
                                            <li class="yellow"><i class="ti-star"></i></li>
                                            <li class="yellow"><i class="ti-star"></i></li>
                                            <li class="yellow"><i class="ti-star"></i></li>
                                            <li class="yellow"><i class="ti-star"></i></li>
                                            <li class="yellow"><i class="ti-star"></i></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- End Single Post -->
                            </div>
                            <!--/ End Single Widget -->
                            <!-- Single Widget -->
                            <!--								<div class="single-widget category">
                                                                                                    <h3 class="title">Manufacturers</h3>
                                                                                                    <ul class="categor-list">
                                                                                                            <li><a href="#">Forever</a></li>
                                                                                                            <li><a href="#">giordano</a></li>
                                                                                                            <li><a href="#">abercrombie</a></li>
                                                                                                            <li><a href="#">ecko united</a></li>
                                                                                                            <li><a href="#">zara</a></li>
                                                                                                    </ul>
                                                                                            </div>-->
                            <!--/ End Single Widget -->
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-8 col-12">
                        <div class="row">
                            <div class="col-12">
                                <!--show top-->
                                <div class="shop-top">
                                    <div class="shop-shorter">


                                        <div class="single-shorter">
                                            <label>Sort By :</label>

                                            <select id="sortOption" onchange="sortProduct(${tagID})">
                                                <option value="none">None</option>
                                                <option value="title">Name</option>
                                                <option value="price">Price</option>

                                            </select>
                                        </div>

                                        <div class="single-shorter">
                                            <label id="searchfor"></label>
                                        </div>   

                                    </div>
                                    <ul class="view-mode">

                                        <li><a id="lastpage" onclick="lastpage()"><i class="fa fa-angle-double-left" aria-hidden="true"></i></a></li>


                                        <li><span class="active" id="pagetag">${pagetag}</span><span>/</span><span id="pagetags">${pagetags}</span></li>

                                        <li><a id="nextpage" onclick="nextpage()"><i class="fa fa-angle-double-right" aria-hidden="true"></i></a></li>


                                    </ul>

                                </div>
                                <!--								/ End Shop Top -->
                            </div>
                        </div>
                        <div id="productView" class="row">
                            <c:forEach items="${listP}" var="o">
                                <div class="col-lg-4 col-md-6 col-12">
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="productdetail?pid=${o.id}&tag=${tag}">
                                                <img class="default-img" src="${o.image}" alt="#">
                                                <img class="hover-img" src="${o.image}" alt="#">
                                            </a>
                                            <div class="button-head">
                                                <div class="product-action">
                                                    <input type="hidden" value="${o.id}">
                                                    <a data-toggle="modal" data-target="#exampleModal" title="Quick View" onclick="quickShop(${o.id})"><i class=" ti-eye"></i><span>Quick Shop</span></a>
                                                    <a title="Wishlist" href="#"><i class=" ti-heart "></i><span>Add to Wishlist</span></a>
                                                    <a title="Compare" href="#"><i class="ti-bar-chart-alt"></i><span>Add to Compare</span></a>
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
            </div>
        </section>
        <!--/ End Product Style 1  -->	

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
        <div  class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
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
            function deletecartitem(pid ){
                
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
            function nextpage() {
                var pagetag = Number(document.getElementById('pagetag').innerHTML);
                var pagetags = Number(document.getElementById('pagetags').innerHTML);
                if (pagetag < pagetags) {
                    document.getElementById('pagetag').innerHTML = pagetag + 1;
                    sortProduct(2,${tagID});
                }

            }
            function lastpage() {
                var pagetag = Number(document.getElementById('pagetag').innerHTML);

                if (pagetag > 1) {
                    document.getElementById('pagetag').innerHTML = pagetag - 1;
                    sortProduct(2,${tagID});
                }

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
            function sortProduct(change, tagID) {
                var pagetag = 1;
                if (change === 2) {
                    pagetag = document.getElementById('pagetag').innerHTML;
                } else {
                    document.getElementById('pagetag').innerHTML = 1;
                }



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

                        var arr = document.getElementsByClassName('single-p');

                        if (arr.length <= 9) {
                            document.getElementById('pagetags').innerHTML = 1;

                        } else {
                            var pt = Number(pagetag);
                            var len = arr.length;
                            if (len % 9 == 0) {
                                document.getElementById('pagetags').innerHTML = len / 9;
                            } else {

                                document.getElementById('pagetags').innerHTML = Math.floor(len / 9) + 1;

                            }
                            var data1 = "";
                            if (pt <= Math.floor(len / 9)) {
                                for (var i = (Number(pagetag) - 1) * 9; i < Number(pagetag) * 9; i++) {
                                    data1 += arr[i].outerHTML;
                                }
                            } else {
                                for (var i = (pt - 1) * 9; i < len; i++) {
                                    data1 += arr[i].outerHTML;
                                }
                            }
                            row.innerHTML = data1;

                        }

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