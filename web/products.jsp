<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Online Shopping System</title>
        <!-- Importing all ui libs -->
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <link href="assets/css/style.css" rel="stylesheet" />
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <script src="js/simpleCart.min.js"></script>
        <script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
        <script src="js/jquery.easing.min.js"></script>
        <script src='../../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>
        <script src="../../../../../../m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>
        <style>
            .bg {
                /* The image used */
                /* background-image: url("assets/img/whenisfruitr.jpg"); */
    
                /* Full height */
                height: 80%;
    
                /* Center and scale the image nicely */
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
            }
        </style>

    </head>
    <body style="background-image: url(assets/img/s17.jpg);" class="bg">
    <body>
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
                                    <span class="sr-only">Toggle navigation</span> <span
                                        class="icon-bar"></span> <span class="icon-bar"></span> <span
                                        class="icon-bar"></span>
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
        <div class="page-head">
            <div class="container">
                <h3>Products</h3>
            </div>
        </div>
        <br/>
        <div class="electronics">
            <div class="container">
                <div class="clearfix"></div>
                <div class="ele-bottom-grid">
                    <h3>
                        Our Products
                    </h3>
                    <%
                        ResultSet retriveProduct = DatabaseConnection.getResultFromSqlQuery("select * from tblproduct");
                        while (retriveProduct.next()) {
                    %>
                    <form action="AddToCart" method="post">
                        <div class="col-md-3 product-men">
                            <div class="men-pro-item simpleCart_shelfItem">
                                <div class="men-thumb-item">
                                    <input type="hidden" name="productId" value="<%=retriveProduct.getInt("id")%>">
                                    <img
                                       src="uploads/<%=retriveProduct.getString("image_name")%>"
                                       alt="" class="pro-image-front" style="height: 100px"> 
                                    <!-- <img src="uploads/<%=retriveProduct.getString("image_name")%>" alt="" class="pro-image-back"> <span class="product-new-top">New</span> -->
                                </div>
                                <div class="item-info-product ">
                                    <h4>
                                        <%=retriveProduct.getString("name")%>
                                    </h4>
                                    <h5>
                                        Category: <%=retriveProduct.getString("product_category")%>
                                    </h5>
                                    <div class="info-product-price">
                                        <input type="hidden" name="price" value="<%=retriveProduct.getString("price")%>"> 
                                        <input type="hidden" name="mrp_price" value="<%=retriveProduct.getString("mrp_price")%>"> <span class="item_price"><%=retriveProduct.getString("price")%> Rs.</span>
                                        <del><%=retriveProduct.getString("mrp_price")%> Rs.</del>
                                    </div>
                                    <input type="submit" value="Add to cart" class="btn btn-warning" onclick="return confirm('Are you sure Do you want to add this item in cart?');">
                                </div>
                            </div>
                        </div>
                    </form>
                    <%
                        }
                    %>
                </div>
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