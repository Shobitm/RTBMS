<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="page_title2">
        <div class="container">

            <div class="two_third">

                <div class="title">
                    <h1>Events</h1>
                </div>

                <div class="pagenation">&nbsp;<a href="#">Home</a> <i>/</i> <a href="#">Events</a></div>

            </div>

            <div class="one_third last">

                <div class="site-search-area">
                </div>
                

            </div>
            <div class="container">

                <div class="content_left">

                    <div class="blog_post">
                        <div class="blog_postcontent">

                            <%
                                BloodBankEntities db = new BloodBankEntities();
                                List<Tb_Events> lst = db.Tb_Events.ToList();
                                foreach (var item in lst)
                                { %>




                            <h3><a href="blog-post.html"><%=item.Heading %></a></h3>
                            <ul class="post_meta_links">
                                <li><a href="#" class="date"><%=item.DateTime %></a></li>
                                <li class="post_by"><i>Duration</i> <a href="#"><%=item.Duration %></a></li>
                                <li class="post_categoty"><i>Hospital Name</i> <a href="#"><%=item.HospitalName %></a></li>
                                <%--<li class="post_comments"><i>note:</i> <a href="#">18 Comments</a></li>--%>
                            </ul>
                            <div class="clearfix"></div>
                            <div class="margin_top1"></div>
                            <p><%=item.Descripton %></p>
                            <%}%>
                        </div>
                    </div>
                    <!-- /# end post -->

                    <div class="clearfix divider_dashed9"></div>


                    <div class="sharepost">
                        <h4>Share this Post</h4>
                        <ul>
                            <li><a href="#">&nbsp;<i class="fa fa-facebook fa-lg"></i>&nbsp;</a></li>
                            <li><a href="#"><i class="fa fa-twitter fa-lg"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus fa-lg"></i></a></li>
                            
                        </ul>

                    </div>
                    <!-- end share post links -->


                </div>
                <!-- end content left side -->

                <!-- right sidebar starts -->
                <div class="right_sidebar">

                    <div class="sidebar_widget">

                        <div class="sidebar_title">
                            <h4>Site <i>Categories</i></h4>
                        </div>
                        <ul class="arrows_list1">
                            <li><a href="#"><i class="fa fa-caret-right"></i>Economics</a></li>
                            <li><a href="#"><i class="fa fa-caret-right"></i>Social Media</a></li>
                            <li><a href="#"><i class="fa fa-caret-right"></i>Economics</a></li>
                            <li><a href="#"><i class="fa fa-caret-right"></i>Online Gaming</a></li>
                            <li><a href="#"><i class="fa fa-caret-right"></i>Entertainment</a></li>
                            <li><a href="#"><i class="fa fa-caret-right"></i>Technology</a></li>
                            <li><a href="#"><i class="fa fa-caret-right"></i>Make Money Online</a></li>
                            <li><a href="#"><i class="fa fa-caret-right"></i>Photography</a></li>
                            <li><a href="#"><i class="fa fa-caret-right"></i>Web Tutorials</a></li>
                        </ul>

                    </div>


                </div>


            </div>
        </div>
    </div>
</asp:Content>

