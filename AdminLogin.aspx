<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>


    <title>Blood bank</title>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="Admin/assets/vendor/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="Admin/assets/vendor/font-awesome/css/font-awesome.css" />
    <link rel="stylesheet" href="Admin/assets/stylesheets/theme.css" />
    <link rel="stylesheet" href="Admin/assets/stylesheets/skins/default.css" />


</head>
<body>
    <form id="form1" runat="server">

        <section class="body-sign">

            <div class="center-sign">

                <%
                    if (Request.QueryString["msg"] != null)
                    {
                %>
                <div class="alert alert-success">
                    Wrong Credential
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                </div>
                <%} %>
                <a href="#" class="logo pull-left">
                    <%--<img src="assets/images/logo.png" height="54" alt="Porto Admin" />--%>
                    <h3>ADMIN LOGIN</h3>
                </a>

                <div class="panel panel-sign">
                    <div class="panel-title-sign mt-xl text-right">
                        <h2 class="title text-uppercase text-bold m-none"><i class="fa fa-user mr-xs"></i>Sign In</h2>
                    </div>
                    <div class="panel-body">
                        <form action="index.html" method="post">
                            <div class="form-group mb-lg">
                                <label>UserName</label>
                                <div class="input-group input-group-icon">
                                    <asp:TextBox ID="txtusername" required="true" class="form-control input-lg" runat="server" />
                                    <span class="input-group-addon">
                                        <span class="icon icon-lg">
                                            <i class="fa fa-user"></i>
                                        </span>
                                    </span>
                                </div>
                            </div>

                            <div class="form-group mb-lg">
                                <div class="input-group input-group-icon">
                                    <asp:TextBox ID="txtpass" required="true" TextMode="Password" class="form-control input-lg" runat="server" />

                                    <span class="input-group-addon">
                                        <span class="icon icon-lg">
                                            <i class="fa fa-lock"></i>
                                        </span>
                                    </span>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-8">
                                </div>
                                <div class="col-sm-4 text-right">
                                    <asp:Button Text="Submit" CssClass="btn btn-primary" ID="btnsave" runat="server" OnClick="btnsave_Click2" />
                                </div>
                            </div>


                        </form>
                    </div>
                </div>

                <p class="text-center text-muted mt-md mb-md">&copy; Copyright 2017. All Rights Reserved.Team Ter-X</p>
            </div>
        </section>
    </form>
    <script src="Admin/assets/vendor/jquery/jquery.js"></script>
    <script src="Admin/assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
    <script src="Admin/assets/vendor/bootstrap/js/bootstrap.js"></script>
    <script src="Admin/assets/javascripts/theme.js"></script>

</body>
</html>

