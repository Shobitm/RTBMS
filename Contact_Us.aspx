<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact_Us.aspx.cs" Inherits="Contact_Us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="clearfix"></div>
    
    <header id="header">

        <div id="trueHeader">

          


                <div class="container">

                    <!-- Logo -->



                </div>

                <!-- Menu -->

                <div class="container">

                    <div class="navbar yamm navbar-default">

                        <div class="container">


                            <div id="navbar-collapse-1" class="navbar-collapse collapse">


                                <div id="wrap">
                                    <form action="index.html" autocomplete="on">
                                      
                                    </form>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>


           

        </div>

    </header>



<div class="clearfix margin_top3"></div>

<div class="container">

    <div class="content_fullwidth lessmar">
    
      <div class="one_half">
      
          <br /><br />
        
        <div class="cforms">
        
        <form  method="post" id="sky-form" class="sky-form">
          <header>Contact <strong>Form</strong></header>
          <fieldset>
            <div class="row">
              <section class="col col-6">
                <label class="label">Name</label>
                <label class="input"> <i class="icon-append icon-user"></i>
                  <input type="text" name="name" id="name">
                </label>
              </section>
              <section class="col col-6">
                <label class="label">E-mail</label>
                <label class="input"> <i class="icon-append icon-envelope-alt"></i>
                  <input type="email" name="email" id="email">
                </label>
              </section>
            </div>
            <section>
              <label class="label">Subject</label>
              <label class="input"> <i class="icon-append icon-tag"></i>
                <input type="text" name="subject" id="subject">
              </label>
            </section>
            <section>
              <label class="label">Message</label>
              <label class="textarea"> <i class="icon-append icon-comment"></i>
                <textarea rows="4" name="message" id="message"></textarea>
              </label>
            </section>
            <section>
              <label class="checkbox">
                <input type="checkbox" name="copy" id="copy">
                <i></i>Send a copy to my e-mail address</label>
            </section>
          </fieldset>
          <footer>
            <button type="submit" class="button">Send message</button>
          </footer>
          <div class="message"> <i class="icon-ok"></i>
            <p>Your message was successfully sent!</p>
          </div>
        </form>
        
        </div>
        
      </div>
      
      <div class="one_half last">
      
        <div class="address_info">
        
          <h4>Company <strong>Address</strong></h4>
          <ul>
            <li> <strong>TER-X</strong><br />
                Chandigarh Group of Colleges,</li>
              <li> SH12A, Jhanjeri Mohali,Punjab&nbsp;&nbsp;&nbsp; <br />
              Telephone: 0160-304-5332<br />
                  FAX: 0160-304-5332<br />
            E-mail: <a href="mailto:rtbms@gmail.com">rtbms@gmail.com</a><br />
              Website: www.cgc.ac.in</a> </li>
          </ul>
        </div>
        <div class="clearfix"></div>
        <h4>Find the <strong>Address</strong></h4>
<iframe  class="google-map" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d13724.855042868647!2d76.60083325!3d30.684261199999998!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1490438940938">View Full Size</iframe>        
          
          <br />
         </div>
        
    </div>
    
  </div><!-- end content area -->

<div class="clearfix margin_top5"></div>

</asp:Content>

