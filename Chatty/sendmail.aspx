<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sendmail.aspx.cs" Inherits="Chatty.sendmail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Recover Password - Chatty App</title>
      <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700;900&display=swap" rel="stylesheet"/>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <link href="/assets/css/bootstrap.css" rel="stylesheet" />
    <link href="/assets/fontawesome/css/fontawesome.css" rel="stylesheet" />
    <link href="/assets/fontawesome/css/regular.css" rel="stylesheet" />
    <link href="/assets/fontawesome/css/brands.css" rel="stylesheet" />
    <link href="/assets/fontawesome/css/solid.css" rel="stylesheet" />
   



    <link href="/assets/css/ace-font.css" rel="stylesheet" />

    <link href="/assets/css/ace.css" rel="stylesheet" />
    <img src="/assets/image/favicon.png" />
 

    <link href="/assets/css/@page-style.css" rel="stylesheet" />


 </head>
    <body>
         <form id="form1" runat="server">
         <div class="tab-pane mh-100 px-3 px-lg-0 pb-3" id="id-tab-forgot" data-swipe-prev="#id-tab-login">
                        <div class="position-tl ml-3 mt-2">
                          
                        </div>

                        <div class="col-md-6 offset-md-3 mt-5 px-0">
                          <h4 class="pt-4 pt-md-0 text-dark-tp4 border-b-1 brc-grey-l1 pb-1 text-130">
                            <i class="fa fa-key text-brown-m2 mr-1"></i>
                            Recover Password
                          </h4>
                        </div>

                        <div class="form-row mt-4">
                          <div class="form-group col-md-6 offset-md-3">
                            <label class="text-secondary-m1 mb-3">
                              Enter your email address and we'll send you the instructions:
                            </label>
                            <div class="d-flex align-items-center">
                                <asp:TextBox ID="txtmail" runat="server" class="form-control form-control-lg pr-4 shadow-none" TextMode="Email" placeholder="Email" autocomplete="off"></asp:TextBox>
                              <i class="fa fa-envelope text-grey-m2 ml-n4"></i>

                               
                                <asp:Label ID="LblAlert2" runat="server" Text="" CssClass="text-orange-d2"></asp:Label>
                               
                            </div>

                           
                            </div>
                         


                          <div class="form-group col-md-6 offset-md-3 mt-1">
                              <asp:Button ID="BtnSendMail" runat="server" Text="Send" class="btn btn-warning btn-block btn-md btn-bold mt-2 mb-4" OnClick="BtnSendMail_Click" />
                          </div>
                        </div>
              
                                 
                          

                        <div class="form-row w-100">
                          <div class="col-12 col-md-6 offset-md-3 d-flex flex-column align-items-center justify-content-center">

                            <hr class="brc-default-m4 mt-0 mb-2 w-100" />

                            <div class="p-0 px-md-2 text-dark-tp4 my-3">
                              <a class="text-blue-m2 text-600" data-toggle="tab" data-target="#id-tab-login" href="#">
                                Back to Login
                              </a>
                            </div>


                          </div>
                        </div>
             </div>
        <script src="assets/js/jquery.js"></script>
        <script src="assets/js/popper.js"></script>
        <script src="assets/js/bootstrap.js"></script>
        <script src="assets/js/ace.js"></script>
        <script src="assets/js/PageSpesific/ResetPass.js"></script>
    </form>
        
    
</body>
</html>
