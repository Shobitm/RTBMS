<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="site_wrapper">
        <header id="header">
            <div id="trueHeader">
                <div class="wrapper">
                    <div class="container">
                    </div>

                    <div class="container">

                        <div class="navbar yamm navbar-default">

                            <div class="container">


                                <div id="navbar-collapse-1" class="navbar-collapse collapse">


                                    <div id="wrap">
                                        <form action="index.html" autocomplete="on">
                                            <input id="search_submit" value="search" type="submit">
                                        </form>
                                    </div>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </header>

        <div class="clearfix"></div>

        <div class="page_title2">
            <div class="container">

                <div class="title">
                    <h1>Login Form</h1><br />
                </div>

               <%-- <div class="pagenation">&nbsp;<a href="index.html">Home</a> <i>/</i> <a href="#">Pages</a> <i>/</i> Login Form</div>--%>

            </div>
        </div>
        <!-- end page title -->

        <div class="clearfix"></div>

        <div class="container">

            <div class="content_fullwidth">


                <div class="login_form">
                    <div id="sky-form" class="sky-form">

                        <header>Login form</header>

                        <fieldset>
                            <section>
                                <div class="row">

                                    <label class="label col col-4">E-mail</label>
                                    <div class="col col-8">
                                        <label class="input">
                                            <i class="icon-append icon-user"></i>

                                            <asp:TextBox ID="txtemail" runat="server" />

                                        </label>
                                    </div>
                                </div>
                            </section>

                            <section>
                                <div class="row">
                                    <label class="label col col-4">Password</label>
                                    <div class="col col-8">
                                        <label class="input">
                                            <i class="icon-append icon-lock"></i>
                                            <asp:TextBox ID="pass" runat="server" />

                                        </label>
                                       <%-- <div class="note"><a href="#sky-form2" class="modal-opener">Forgot password?</a></div>--%>
                                    </div>
                                </div>
                            </section>

                            <section>
                                <div class="row">
                                    <div class="col col-4"></div>
                                    <div class="col col-8">
                                        <label class="checkbox">
                                            <input type="checkbox" name="remember" checked><i></i>Keep me logged in</label>
                                    </div>
                                </div>
                            </section>
                        </fieldset>
                        <footer>
                            <div class="fright">
                                <a href="Register.aspx" class="button button-secondary">Register</a>
                                <asp:Button ID="btnsubmit" Text="Log In" CssClass="button" runat="server" OnClick="btnsubmit_Click" />

                            </div>

                        </footer>
                        </form>
                    </div>

                    <form action="demo-recovery.php" id="sky-form2" class="sky-form sky-form-modal">
                        <header>Password recovery</header>

                        <fieldset>
                            <section>
                                <label class="label">E-mail</label>
                                <label class="input">
                                    <i class="icon-append icon-user"></i>
                                    <input type="email" name="email" id="email">
                                </label>
                            </section>
                        </fieldset>

                        <footer>
                            <button type="submit" name="submit" class="button">Submit</button>
                            <a href="#" class="button button-secondary modal-closer">Close</a>
                        </footer>

                        <div class="message">
                            <i class="icon-ok"></i>
                            <p>
                                Your request successfully sent!<br>
                                <a href="#" class="modal-closer">Close window</a>
                            </p>
                        </div>
                    </form>

                </div>

            </div>
            <!-- end content area -->

            <div class="clearfix margin_top7"></div>

            <!-- end footer -->

            <div class="clearfix"></div>

            <!-- end copyright info -->


            <a href="#" class="scrollup">Scroll</a><!-- end scroll to top of the page-->

        </div>
</asp:Content>

