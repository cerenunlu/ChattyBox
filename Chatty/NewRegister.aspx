<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewRegister.aspx.cs" Inherits="Chatty.NewRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1">
    <base href="../" />

    <title>Join Us- Chatty App</title>
    <link href="/assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/fontawesome/css/fontawesome.css" rel="stylesheet" />
    <link href="/assets/fontawesome/css/regular.css" rel="stylesheet" />
    <link href="/assets/fontawesome/css/brands.css" rel="stylesheet" />
    <link href="/assets/fontawesome/css/solid.css" rel="stylesheet" />


    <link href="/assets/css/ace-font.css" rel="stylesheet" />

   
    <link href="/assets/css/ace.css" rel="stylesheet" />



    <link rel="icon" type="image/png" href="assets/favicon.png" />

    <!-- "Login" page styles specific to this page for demo purposes -->
    <link href="/assets/js/PageSpesific/NewRegister.css" rel="stylesheet" />

   
</head>
<body class="body bgc-blue-d2">
    <form id="form1" runat="server">
        <div class="tab-pane mh-100 px-3 px-lg-0 pb-3" id="id-tab-signup" data-swipe-prev="#id-tab-login">
                        <div class="position-tl ml-3 mt-3 mt-lg-0">
                          <a href="#" class="btn btn-light-default bg-transparent" data-toggle="tab" data-target="#id-tab-login"><i class="fa fa-arrow-left"></i></a>
                        </div>

                        <div class="d-none d-lg-block col-md-6 offset-md-3 mt-lg-4 px-0">
                          <h4 class="text-dark-tp4 border-b-1 brc-grey-l1 pb-1 text-130">
                            <i class="fa fa-user text-purple-m1 mr-1"></i>
                            Create an Account
                          </h4>
                        </div>

                        <div class="d-lg-none text-secondary-m1 my-4 text-center">
                          <i class="fa fa-leaf text-success-m2 text-200 mb-4"></i>
                          <h1 class="text-170">
                            <span class="text-blue-d1">Ace <span class="text-80 text-dark-tp4">Application</span></span>
                          </h1>

                          Create an Account
                        </div>

                        <form class="form-row mt-4">
                          <div class="form-group col-md-6 offset-md-3">
                            <div class="d-flex align-items-center input-floating-label text-success-m1 brc-success-m2">
                                <asp:TextBox ID="txtmail" runat="server"  CssClass="form-control form-control-lg pr-4 shadow-none" autocomplete="off"></asp:TextBox>
                              <i class="fa fa-envelope text-grey-m2 ml-n4"></i>
                              <label class="floating-label text-grey-l1 text-100 ml-n3" for="id-signup-email">Email</label>
                            </div>
                          </div>

                          <div class="form-group col-md-6 offset-md-3 mt-1">
                            <div class="d-flex align-items-center input-floating-label text-success-m1 brc-success-m2">
                                <asp:TextBox ID="txtname" runat="server" CssClass="form-control form-control-lg pr-4 shadow-none" autocomplete="off"></asp:TextBox>
                              <i class="fa fa-user text-grey-m2 ml-n4"></i>
                              <label class="floating-label text-grey-l1 text-100 ml-n3" for="id-signup-username">Name</label>
                            </div>
                          </div>
                             <div class="form-group col-md-6 offset-md-3 mt-1">
                            <div class="d-flex align-items-center input-floating-label text-success-m1 brc-success-m2">
                                <asp:TextBox ID="txtsurname" runat="server" CssClass="form-control form-control-lg pr-4 shadow-none" autocomplete="off"></asp:TextBox>
                              <i class="fa fa-user text-grey-m2 ml-n4"></i>
                              <label class="floating-label text-grey-l1 text-100 ml-n3" for="id-signup-username">Surname</label>
                            </div>
                          </div>
                             <div class="form-group col-md-6 offset-md-3 mt-1">
                            <div class="d-flex align-items-center input-floating-label text-success-m1 brc-success-m2">
                                <asp:TextBox ID="txtusername" runat="server" CssClass="form-control form-control-lg pr-4 shadow-none" autocomplete="off"></asp:TextBox>
                              <i class="fa fa-user text-grey-m2 ml-n4"></i>
                              <label class="floating-label text-grey-l1 text-100 ml-n3" for="id-signup-username">Username</label>
                            </div>
                          </div>

                          <div class="form-group col-md-6 offset-md-3 mt-1">
                            <div class="d-flex align-items-center input-floating-label text-success-m1 brc-success-m2">
                                <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control form-control-lg pr-4 shadow-none"></asp:TextBox>
                              <i class="fa fa-key text-grey-m2 ml-n4"></i>
                              <label class="floating-label text-grey-l1 text-100 ml-n3" for="id-signup-password">Password</label>
                            </div>
                          </div>

                          <div class="form-group col-md-6 offset-md-3 mt-1">
                            <div class="d-flex align-items-center input-floating-label text-success-m1 brc-success-m2">
                                <asp:TextBox ID="txtpassword2" runat="server" class="form-control form-control-lg pr-4 shadow-none" autocomplete="off"></asp:TextBox>
                              <i class="fas fa-sync-alt text-grey-m2 ml-n4"></i>
                              <label class="floating-label text-grey-l1 text-100 ml-n3" for="id-signup-password2">Confirm Password</label>
                            </div>
                          </div>

                          <div class="d-none form-group col-md-6 offset-md-3 my-2">
                            <label class="text-secondary-m3 text-110 mb-25">
                              Choose membership type
                            </label>
                            <div class="row d-flex mx-1 mx-lg-0 btn-group btn-group-toggle" data-toggle="buttons">

                              <div class="col-12 offset-sm-2 col-sm-3 px-1">
                                <label class="shadow-sm d-style border-1 w-100 my-1 py-3 bgc-white-tp2 btn-brc-tp btn btn-light-secondary btn-h-light-primary btn-a-light-primary radius-3">
                                  <input type="radio" name="payments" id="payments1" autocomplete="off" class="invisible pos-abs">

                                  <span class="d-flex flex-column align-items-center">
                                        <div class="font-bolder flex-grow-1">
                                            Free
                                        </div>
                                    </span>

                                </label>
                              </div>

                              <div class="col-12 col-sm-6 px-1">
                                <label class="shadow-sm d-style border-2 w-100 my-1 py-3 bgc-white-tp2 btn-brc-tp btn btn-light-secondary btn-h-light-success btn-a-light-success radius-3">
                                  <input type="radio" name="payments" id="payments2" autocomplete="off" class="invisible pos-abs">
                                  <span class="d-flex flex-column align-items-center">

                                        <span class="position-tr mr-2">
                                            <span class="v-active pos-abs">
                                                <i class="fa fa-crown text-orange text-110"></i>
                                            </span>
                                  <span class="v-n-active">
                                                <i class="fa fa-crown text-secondary-l3 text-110"></i>
                                            </span>
                                  </span>

                                  <div class="font-bolder flex-grow-1">
                                    Premium
                                  </div>
                                  </span>
                                </label>
                              </div>

                            </div>

                          </div>

                          <div class="form-group col-md-6 offset-md-3 mt-2">
                            
                              <asp:Button ID="btnRegister" runat="server" Text="SIGN UP" CssClass="btn btn-success btn-block btn-md btn-bold mt-2 mb-3" OnClick="btnregister_Click" />
                         
                          </div>
                        </form>


                        <div class="form-row w-100">
                          <div class="col-12 col-md-6 offset-md-3 d-flex flex-column align-items-center justify-content-center">

                            <hr class="brc-default-m4 mt-0 mb-2 w-100" />

                            <div class="p-0 px-md-2 text-dark-tp4 my-3">
                              Already a member?
                            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="text-blue-m2 text-600 mx-1" OnClick="LinkButton1_Click">Login Here</asp:LinkButton>
                                
                            </div>

                           

                          </div>
                        </div>
                      </div>
        <script src="assets/js/jquery.js"></script>
        <script src="assets/js/popper.js"></script>
        <script src="assets/js/bootstrap.js"></script>
        <script src="assets/js/ace.js"></script>
        <script src="assets/js/PageSpesific/NewRegisterPage.js"></script>
    </form>
</body>
</html>
