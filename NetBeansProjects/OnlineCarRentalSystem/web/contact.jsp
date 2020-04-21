<%-- 
    Document   : contact
    Created on : 04-Apr-2020, 15:02:01
    Author     : ninhthelam
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DatabaseConnection.DBConnect"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--=== Favicon ===-->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

    <title>Contact Page</title>

    <!--=== Bootstrap CSS ===-->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!--=== Slicknav CSS ===-->
    <link href="assets/css/plugins/slicknav.min.css" rel="stylesheet">
    <!--=== Magnific Popup CSS ===-->
    <link href="assets/css/plugins/magnific-popup.css" rel="stylesheet">
    <!--=== Owl Carousel CSS ===-->
    <link href="assets/css/plugins/owl.carousel.min.css" rel="stylesheet">
    <!--=== Gijgo CSS ===-->
    <link href="assets/css/plugins/gijgo.css" rel="stylesheet">
    <!--=== FontAwesome CSS ===-->
    <link href="assets/css/font-awesome.css" rel="stylesheet">
    <!--=== Theme Reset CSS ===-->
    <link href="assets/css/reset.css" rel="stylesheet">
    <!--=== Main Style CSS ===-->
    <link href="style.css" rel="stylesheet">
    <!--=== Responsive CSS ===-->
    <link href="assets/css/responsive.css" rel="stylesheet">

</head>
<%
    HttpSession s = request.getSession();
    String email = (String) s.getAttribute("email");

    Connection cons = DBConnect.getConnection();

    try {
        PreparedStatement ps = null;
        ps = cons.prepareStatement("select * from MEMBERS where email='" + email + "'"); //sql select query

        ResultSet rs = ps.executeQuery(); //execute query and set in ResultSet object rs.
        while (rs.next()) {

%>

<style>
    ::placeholder {
        color: green
    }




</style>


<body>



    <!--== Page Title Area Start ==-->
    <section id="page-title-area" class="section-padding overlay">
        <div class="container">
            <div class="row">
                <!-- Page Title Start -->
                <div class="col-lg-12">
                    <div class="section-title  text-center">
                        <h2>Contact Us</h2>
                        <span class="title-line"><i class="fa fa-car"></i></span>
                        <p> Feel free to ask or feedback to help Us satisfy your demand.</p>
                    </div>
                </div>
                <!-- Page Title End -->
            </div>
        </div>
    </section>
    <!--== Page Title Area End ==-->

    <!--== Contact Page Area Start ==-->
    <div class="contact-page-wrao section-padding">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 m-auto">
                    <div class="contact-form">
                        <form action="Feedback" method="POST">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <input type="hidden"   value="<%=rs.getInt("id")%>" name="customer_id">

                                    <div class="name-input">
                                        <input type="text"  placeholder="Full Name" value="<%=rs.getString("fullname")%>" name="fullname" required>
                                    </div>
                                </div>

                                <div class="col-lg-6 col-md-6">
                                    <div class="email-input">
                                        <input type="text" placeholder="Email Address" value="<%=rs.getString("email")%>" required>
                                    </div>
                                </div>
                            </div>

                            <div class="row">

                                <div class="col-lg-6 col-md-6">
                                    <div class="subject-input">
                                        <input type="text" placeholder="Subject" name="subject" required>
                                    </div>
                                </div>
                            </div>

                            <div class="message-input">
                                <textarea name="review" cols="30" rows="10" placeholder="Message" required></textarea>
                                          </div>

                                         <div class="input-submit">
                                          <button type="submit">Submit Message</button>
                               
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>





</body>
<%
        }

        ps.close(); //close statement

        cons.close(); //close connection

    } catch (Exception e) {
        e.printStackTrace();
    }
%>

</html>