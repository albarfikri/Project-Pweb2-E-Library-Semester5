﻿    <%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Dashboard.Master" CodeBehind="contact.aspx.vb" Inherits="ProjectUas.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    Contact
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
  <!-- Start search box -->
  <div id="mu-search">
    <div class="mu-search-area">      
      <button class="mu-search-close"><span class="fa fa-close"></span></button>
      <div class="container">
        <div class="row">
          <div class="col-md-12">            
            <form class="mu-search-form">
             <input type="search" placeholder="Type Your Keyword(s) & Hit Enter">
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End search box -->
 <!-- Page breadcrumb -->
 <section id="mu-page-breadcrumb">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="mu-page-breadcrumb-area">
           <h2>Contact</h2>
         
         </div>
       </div>
     </div>
   </div>
 </section>
 <!-- End breadcrumb -->

 <!-- Start contact  -->
 <section id="mu-contact">
   <div class="container">
     <div class="row">
       <div class="col-md-12">
         <div class="mu-contact-area">
          <!-- start title -->
          <div class="mu-title">
            <h2>Get in Touch</h2>
            <p> </p>
          </div>
          <!-- end title -->
          <!-- start contact content -->
          <div class="mu-contact-content">           
            <div class="row">
              <div class="col-md-6">
                <div class="mu-contact-left">
                  <form class="contactform" runat="server">                  
                    <p class="comment-form-author">
                      <label for="author">Name <span class="required">*</span></label>  
                        <asp:TextBox runat="server" ID="nama"  name="nama" size="30"></asp:TextBox>
                    </p>
                    <p class="comment-form-email">
                      <label for="email">Email <span class="required">*</span></label>        
                        <asp:TextBox runat="server" ID="email"  name="email" size="30" type="email"></asp:TextBox>
                    </p>
                    <p class="comment-form-url">
                      <label for="subject">Subject</label>
                      
                        <asp:TextBox  runat="server" ID="subject" name="subject" size="30"></asp:TextBox> 
                    </p>
                    <p class="comment-form-comment">
                      <label for="comment">Message</label>
                      <textarea runat="server" ID="komen" required="required" name="komen" aria-required="true" rows="8" cols="45"></textarea>
                    </p>                
                    <p class="form-submit">
                      <asp:LinkButton id="komentambah" runat="server" type="submit" class="mu-post-btn">Submit Message</asp:LinkButton>
                    </p>        
                  </form>
                </div>
              </div>
              <div class="col-md-6">
                <div class="mu-contact-right">
                  <iframe src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d6249.345033302234!2d-80.02791918555701!3d40.45935344513505!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x8834f411a7b748bd%3A0xaec8197db3de9a9e!2sCalifornia-Kirkbride%2C+Pittsburgh%2C+PA%2C+USA!3m2!1d40.4600435!2d-80.0213538!5e0!3m2!1sen!2sbd!4v1464270878470" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
              </div>
            </div>
          </div>
          <!-- end contact content -->
         </div>
       </div>
     </div>
   </div>
 </section>
</asp:Content>
