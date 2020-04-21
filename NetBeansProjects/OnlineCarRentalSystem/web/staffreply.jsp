<%-- 
    Document   : staffreply
    Created on : 30-Mar-2020, 19:40:10
    Author     : ninhthelam
--%>

<%@page import="Models.CFeedback"%>
<%@page import="dao.EmployeeDAOImpl"%>
<%@page import="Models.Employees"%>
<%@page import="dao.UserDAOImpl"%>
<%@page import="Models.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--=== Favicon ===-->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

        <title> Reply feedback</title>

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

        <%
            int id=Integer.parseInt(request.getParameter("reply_id"));
            CFeedback cfeedback = new CFeedback();
            cfeedback = new EmployeeDAOImpl().getFeedbackDetailByID(id);
            HttpSession s = request.getSession();
            //String e_id = (String) s.getAttribute("id");
            //Employees employees = new Employees();
            //employees = new EmployeeDAOImpl().getEmployeeDetailByID(Integer.parseInt(e_id));
            

            %>

    </head>

    <body>
        <section id="lgoin-page-wrap" class="section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-8 m-auto">
                        <div class="login-page-content">
                            <div class="login-form">
                                <h3> Message Details</h3>
                                <form method="post" action="ReplyFeedback">
                                    <div class="name">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <input type="hidden" name="c_id" value="<%= cfeedback.getCustomer_id() %>">
                                                 <input type="hidden" name="content" value="<%= cfeedback.getContent() %>">
                                                 <input type="hidden" name="dof" value="<%= cfeedback.getDof() %>">
                                                 <input type="hidden" name="status" value="<%= cfeedback.getStatus() %>">
                                            </div>
                                          
                                        </div>
                                    </div>
                                   
                                    <div class="">
                                        <a> Reply to the customer</a>
                                        <input type="text"  placeholder="Message"  name="reply" required>
                                    </div>
                                   
                                    <div class="log-btn">
                                        <input type="hidden" name="action" value="add" />
                                        
                                        <button type="submit"><i class="fa fa-check-square"></i> Reply</button>
                                    </div>
                                    <div>
                                        <li><a href="staffdashboard.jsp"> Back</a></li>
                                    </div>
                                    
                                </form>
                            </div>
    </body>
</html>
