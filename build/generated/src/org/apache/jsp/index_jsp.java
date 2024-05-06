package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.connection.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <!-- Importing all ui libs -->\r\n");
      out.write("    <link href=\"assets/css/font-awesome.css\" rel=\"stylesheet\" />\r\n");
      out.write("    <link href=\"assets/css/style.css\" rel=\"stylesheet\" />\r\n");
      out.write("    <link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\r\n");
      out.write("    <link href=\"css/pignose.layerslider.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\r\n");
      out.write("    <link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\r\n");
      out.write("    <script type=\"text/javascript\" src=\"js/jquery-2.1.4.min.js\"></script>\r\n");
      out.write("    <script src=\"js/simpleCart.min.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"js/bootstrap-3.1.1.min.js\"></script>\r\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>\r\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.7.0/css/all.css\" integrity=\"sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ\" crossorigin=\"anonymous\">\r\n");
      out.write("    <script src=\"js/jquery.easing.min.js\"></script>\r\n");
      out.write("    <script src='https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script>\r\n");
      out.write("    <script src=\"https://m.servedby-buysellads.com/monetization.js\" type=\"text/javascript\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<body>\r\n");
      out.write("    <div class=\"ban-top\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"top_nav_left\">\r\n");
      out.write("                <nav class=\"navbar navbar-default\">\r\n");
      out.write("                    <div class=\"container-fluid\">\r\n");
      out.write("                        <div class=\"navbar-header\">\r\n");
      out.write("                            <button type=\"button\" class=\"navbar-toggle collapsed\"\r\n");
      out.write("                                    data-toggle=\"collapse\"\r\n");
      out.write("                                    data-target=\"#bs-example-navbar-collapse-1\"\r\n");
      out.write("                                    aria-expanded=\"false\">\r\n");
      out.write("                                <span class=\"sr-only\">Toggle navigation</span> <span class=\"icon-bar\"></span> <span class=\"icon-bar\"></span> <span class=\"icon-bar\"></span>\r\n");
      out.write("                            </button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </nav>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"top_nav_right\">\r\n");
      out.write("                    <div class=\"cart box_1\">\r\n");
      out.write("                        <a href=\"checkout.jsp\"> \r\n");
      out.write("                        ");

                            //Getting all cart details of the customer
                            ResultSet resultCount = DatabaseConnection.getResultFromSqlQuery("select count(*) from tblcart where customer_id='" + session.getAttribute("id") + "'");
                            resultCount.next();
                            int count = resultCount.getInt(1);
                        
      out.write("\r\n");
      out.write("                        <h3>\r\n");
      out.write("                            <div class=\"total\">\r\n");
      out.write("                                <i class=\"glyphicon glyphicon-shopping-cart\" aria-hidden=\"true\"></i>\r\n");
      out.write("                                (\r\n");
      out.write("                                ");
      out.print(count);
      out.write("\r\n");
      out.write("                                items )\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </h3>\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <p>\r\n");
      out.write("                        <a href=\"javascript:;\" class=\"simpleCart_empty\">My Cart</a>\r\n");
      out.write("                    </p>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"clearfix\"></div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"banner-grid\">\r\n");
      out.write("        <div id=\"visual\">\r\n");
      out.write("            <div class=\"slide-visual\">\r\n");
      out.write("                <ul class=\"slide-group\">\r\n");
      out.write("                    <li><img class=\"img-responsive\" src=\"images/ba1.jpg\" alt=\"Dummy Image\" /></li>\r\n");
      out.write("                    <li><img class=\"img-responsive\" src=\"images/ba2.jpg\" alt=\"Dummy Image\" /></li>\r\n");
      out.write("                    <li><img class=\"img-responsive\" src=\"images/ba3.jpg\" alt=\"Dummy Image\" /></li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                <div class=\"script-wrap\">\r\n");
      out.write("                    <ul class=\"script-group\">\r\n");
      out.write("                        <li><div class=\"inner-script\">\r\n");
      out.write("                                <img class=\"img-responsive\" src=\"images/baa1.jpg\" alt=\"Dummy Image\" />\r\n");
      out.write("                            </div></li>\r\n");
      out.write("                        <li><div class=\"inner-script\">\r\n");
      out.write("                                <img class=\"img-responsive\" src=\"images/baa2.jpg\" alt=\"Dummy Image\" />\r\n");
      out.write("                            </div></li>\r\n");
      out.write("                        <li><div class=\"inner-script\">\r\n");
      out.write("                                <img class=\"img-responsive\" src=\"images/baa3.jpg\" alt=\"Dummy Image\" />\r\n");
      out.write("                            </div></li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                    <div class=\"slide-controller\">\r\n");
      out.write("                        <a href=\"#\" class=\"btn-prev\"><img src=\"images/btn_prev.png\"\r\n");
      out.write("                                                          alt=\"Prev Slide\" /></a> <a href=\"#\" class=\"btn-play\"><img\r\n");
      out.write("                                src=\"images/btn_play.png\" alt=\"Start Slide\" /></a> <a href=\"#\"\r\n");
      out.write("                                                                              class=\"btn-pause\"><img src=\"images/btn_pause.png\"\r\n");
      out.write("                                               alt=\"Pause Slide\" /></a> <a href=\"#\" class=\"btn-next\"><img\r\n");
      out.write("                                src=\"images/btn_next.png\" alt=\"Next Slide\" /></a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"clearfix\"></div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"clearfix\"></div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <script type=\"text/javascript\" src=\"js/pignose.layerslider.js\"></script>\r\n");
      out.write("        <script type=\"text/javascript\">\r\n");
      out.write("            $(window).load(function () {\r\n");
      out.write("                $('#visual').pignoseLayerSlider({\r\n");
      out.write("                    play: '.btn-play',\r\n");
      out.write("                    pause: '.btn-pause',\r\n");
      out.write("                    next: '.btn-next',\r\n");
      out.write("                    prev: '.btn-prev'\r\n");
      out.write("                });\r\n");
      out.write("            });\r\n");
      out.write("        </script>\r\n");
      out.write("    </div>\r\n");
      out.write("    <br/>\r\n");
      out.write("    <div class=\"product-easy\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <h2>\r\n");
      out.write("                    <span><center>Our Products</center></span>\r\n");
      out.write("                </h2>\r\n");
      out.write("            </div>\r\n");
      out.write("            ");

                ResultSet retriveProduct = DatabaseConnection.getResultFromSqlQuery("select * from tblproduct");
                while (retriveProduct.next()) {
            
      out.write("\r\n");
      out.write("            <form action=\"AddToCart\" method=\"post\">\r\n");
      out.write("                <div class=\"single-pro\">\r\n");
      out.write("                    <div class=\"col-md-3 product-men\">\r\n");
      out.write("                        <div class=\"men-pro-item simpleCart_shelfItem\">\r\n");
      out.write("                            <div class=\"men-thumb-item\">\r\n");
      out.write("                                <input type=\"hidden\" name=\"productId\"\r\n");
      out.write("                                       value=\"");
      out.print(retriveProduct.getInt("id"));
      out.write("\"> <img\r\n");
      out.write("                                       src=\"uploads/");
      out.print(retriveProduct.getString("image_name"));
      out.write("\"\r\n");
      out.write("                                       alt=\"\" class=\"pro-image-front\"> <img\r\n");
      out.write("                                       src=\"uploads/");
      out.print(retriveProduct.getString("image_name"));
      out.write("\"\r\n");
      out.write("                                       alt=\"\" class=\"pro-image-back\"> <span\r\n");
      out.write("                                       class=\"product-new-top\">New</span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"item-info-product \">\r\n");
      out.write("                                <h4>\r\n");
      out.write("                                    <a href=\"\">");
      out.print(retriveProduct.getString("name"));
      out.write("</a>\r\n");
      out.write("                                </h4>\r\n");
      out.write("                                <h5>\r\n");
      out.write("                                    Category: ");
      out.print(retriveProduct.getString("product_category"));
      out.write("\r\n");
      out.write("                                </h5>\r\n");
      out.write("                                <div class=\"info-product-price\">\r\n");
      out.write("                                    <input type=\"hidden\" name=\"price\"\r\n");
      out.write("                                           value=\"");
      out.print(retriveProduct.getString("price"));
      out.write("\"> <input\r\n");
      out.write("                                           type=\"hidden\" name=\"mrp_price\"\r\n");
      out.write("                                           value=\"");
      out.print(retriveProduct.getString("mrp_price"));
      out.write("\"> <span\r\n");
      out.write("                                           class=\"item_price\">");
      out.print(retriveProduct.getString("price"));
      out.write(" Rs.</span>\r\n");
      out.write("                                    <del>");
      out.print(retriveProduct.getString("mrp_price"));
      out.write(" Rs.</del>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <input type=\"submit\" value=\"Add to cart\" class=\"btn btn-warning\" onclick=\"return confirm('Are you sure Do you want to add this item in cart?');\">\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </form>\r\n");
      out.write("            ");

                }
            
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
