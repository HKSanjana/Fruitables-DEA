<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <!-- Importing all ui libs -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/css/style.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/pignose.layerslider.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <script src="js/simpleCart.min.js"></script>
    <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <script src="js/jquery.easing.min.js"></script>
    <script src='https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
    <script src="https://m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
    
    <!-- jjjjjjjjjjjjjjjjj -->
     <!-- Customized Bootstrap Stylesheet -->
     <!-- <link href="css/bootstrap.min.css" rel="stylesheet"> -->

     <!-- Template Stylesheet -->
     <!-- <link href="css/style.css" rel="stylesheet"> -->
     <style>
        .bg {
            /* The image used */
            /* background-image: url("assets/img/apple.jpg"); */

            /* Full height */
            height: 80%;

            /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body style="background-image: url(assets/img/s9.jpg);" class="bg">
    <div class="ban-top">
        <div class="container">
            <div class="top_nav_left">
                <nav class="navbar navbar-default">
                    <div class="container-fluid">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed"
                                    data-toggle="collapse"
                                    data-target="#bs-example-navbar-collapse-1"
                                    aria-expanded="false">
                                <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                            </button>
                        </div>
                        <jsp:include page="header.jsp"></jsp:include>
                        </div>
                    </nav>
                </div>
                <div class="top_nav_right">
                    <div class="cart box_1">
                        <a href="checkout.jsp"> 
                        <%
                            //Getting all cart details of the customer
                            ResultSet resultCount = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcart where customer_id='" + session.getAttribute("id") + "'");
                            resultCount.next();
                            int count = resultCount.getInt(1);
                        %>
                        <h3>
                            <div class="total">
                                <i class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></i>
                                (
                                <%=count%>
                                items )
                            </div>
                        </h3>
                    </a>
                    <p>
                        <a href="javascript:;" class="simpleCart_empty">My Cart</a>
                    </p>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="banner-grid">
        <div class="herop" style="height: 200px;"></div>
         <!-- Hero Start -->
        <!-- <div class="container-fluid py-5 mb-5 hero-header">
            <div class="container py-5">
                <div class="row g-5 align-items-center">
                    <div class="col-md-12 col-lg-7">
                        <h4 class="mb-3 text-secondary">100% Organic Foods</h4>
                        <h1 class="mb-5 display-3 text-primary">Organic Veggies & Fruits Foods</h1>
                        <div class="position-relative mx-auto">
                            <input class="form-control border-2 border-secondary w-75 py-3 px-4 rounded-pill" type="number" placeholder="Search">
                            <button type="submit" class="btn btn-primary border-2 border-secondary py-3 px-4 position-absolute rounded-pill text-white h-100" style="top: 0; right: 25%;">Submit Now</button>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-5">
                        <div id="carouselId" class="carousel slide position-relative" data-bs-ride="carousel">
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active rounded">
                                    <img src="img/hero-img-1.png" class="img-fluid w-100 h-100 bg-secondary rounded" alt="First slide">
                                    <a href="#" class="btn px-4 py-2 text-white rounded">Fruites</a>
                                </div>
                                <div class="carousel-item rounded">
                                    <img src="img/hero-img-2.jpg" class="img-fluid w-100 h-100 rounded" alt="Second slide">
                                    <a href="#" class="btn px-4 py-2 text-white rounded">Vesitables</a>
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselId" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselId" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
        <!-- Hero End -->
        <script type="text/javascript" src="js/pignose.layerslider.js"></script>
        <script type="text/javascript">
            $(window).load(function () {
                $('#visual').pignoseLayerSlider({
                    play: '.btn-play',
                    pause: '.btn-pause',
                    next: '.btn-next',
                    prev: '.btn-prev'
                });
            });
        </script>
    </div>
    <br/>
    <div class="product-easy">
        <div class="container" style="background-color: #f5deb396; border-radius: 5px; bottom: 5px;" >
            <div class="container">
                <h2>
                    <span><center>Our Products</center></span>
                </h2>
            </div>
            <%
                ResultSet retriveProduct = DatabaseConnection.getResultFromSqlQuery("select * from tblproduct");
                while (retriveProduct.next()) {
            %>
            <form action="AddToCart" method="post">
                <div class="single-pro">
                    <div class="col-md-3 product-men">
                        <div class="men-pro-item simpleCart_shelfItem">
                            <div class="men-thumb-item">
                                <input type="hidden" name="productId"
                                       value="<%=retriveProduct.getInt("id")%>"> <img
                                       src="uploads/<%=retriveProduct.getString("image_name")%>"
                                       alt="" class="pro-image-front" style="height: 100px"> 
                                       <!-- <img
                                       src="uploads/<%=retriveProduct.getString("image_name")%>"
                                       alt="" class="pro-image-back">  -->
                                       <span
                                       class="product-new-top">New</span>
                            </div>
                            <div class="item-info-product ">
                                <h4>
                                    <a href=""><%=retriveProduct.getString("name")%></a>
                                </h4>
                                <h5>
                                    Category: <%=retriveProduct.getString("product_category")%>
                                </h5>
                                <div class="info-product-price">
                                    <input type="hidden" name="price"
                                           value="<%=retriveProduct.getString("price")%>"> <input
                                           type="hidden" name="mrp_price"
                                           value="<%=retriveProduct.getString("mrp_price")%>"> <span
                                           class="item_price"><%=retriveProduct.getString("price")%> Rs.</span>
                                    <del><%=retriveProduct.getString("mrp_price")%> Rs.</del>
                                </div>
                                <input type="submit" value="Add to cart" class="btn btn-warning" onclick="return confirm('Are you sure Do you want to add this item in cart?');">
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <%
                }
            %>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
    <style>
        /* Form styling */
form {
    /* display: flex; */
    /* justify-content: center; */
    align-items: center;
    margin-bottom: 20px;
}
/* 
.single-pro {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
} */

/* Product card styling */
.product-men {
    margin: 10px;
    background: #fff;
    border: 1px solid #ddd;
    border-radius: 5px;
    overflow: hidden;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    transition: box-shadow 0.3s ease;
}

.product-men:hover {
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
}

.men-pro-item {
    position: relative;
}

.men-thumb-item {
    position: relative;
    overflow: hidden;
}

.pro-image-front,
.pro-image-back {
    width: 100%;
    display: block;
    transition: transform 0.3s ease;
}

.men-pro-item:hover .pro-image-front {
    transform: translateY(100%);
}

.men-pro-item:hover .pro-image-back {
    transform: translateY(0%);
}

.item-info-product {
    padding: 20px;
}

.item-info-product h4 {
    font-size: 18px;
    margin-bottom: 10px;
}

.item-info-product h5 {
    font-size: 14px;
    color: #666;
    margin-bottom: 15px;
}

.info-product-price {
    margin-bottom: 15px;
}

.item_price {
    font-size: 18px;
    font-weight: bold;
}

.del {
    color: #999;
    margin-left: 5px;
    text-decoration: line-through;
}

.btn {
    padding: 10px 20px;
    font-size: 16px;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.btn-warning {
    background-color: #ffc107;
    border: 1px solid #ffc107;
    color: #fff;
}

.btn-warning:hover {
    background-color: #ffca28;
}

.cart.box_1
{
    background-color: antiquewhite;
    width: fit-content;
    border-radius: 5px;
}
    </style>
</body>
</html>