<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Chatty.LoginPage" %>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1">
    <base href="../" />

    <title>Chatty App</title>

    <link href="/assets/css/bootstrap.css" rel="stylesheet" />
    <link href="/assets/fontawesome/css/brands.css" rel="stylesheet" />
    <link href="/assets/fontawesome/css/fontawesome.css" rel="stylesheet" />
    <link href="/assets/fontawesome/css/regular.css" rel="stylesheet" />
    <link href="/assets/fontawesome/css/solid.css" rel="stylesheet" />
    <link href="/assets/css/ace-font.css" rel="stylesheet" />
    <link href="/assets/css/ace.css" rel="stylesheet" />
   
    <link href="assets/css/custom.css" rel="stylesheet" />
   
</head>

<body>
    <form runat="server">
        <div class="body-container">

            <div class="main-container container">

                <div role="main" class="main-content minh-100 justify-content-center">
                    <div class="p-2 p-md-4">
                        <div class="row">
                            <div class="shadow radius-1 overflow-hidden bg-white col-12 col-lg-10 offset-lg-1">

                                <div class="row">

                                    <div class="d-none d-lg-flex col-lg-5 border-r-1 brc-default-l2 px-0">
                                        <div id="loginBgCarousel" class="carousel slide minw-100 h-100">
                                            <ol class="carousel-indicators d-none">
                                                <li data-target="#loginBgCarousel" data-slide-to="0" class="active"></li>
                                                <li data-target="#loginBgCarousel" data-slide-to="1"></li>
                                                <li data-target="#loginBgCarousel" data-slide-to="2"></li>
                                                <li data-target="#loginBgCarousel" data-slide-to="3"></li>
                                            </ol>

                                            <div class="carousel-inner minw-100 h-100">
                                                <div class="carousel-item active minw-100 h-100">
                                                    <div style="background-image: url(assets/image/body-bg-1.jpg);" class="bgc-primary-l4 d-flex flex-column align-items-center justify-content-center">
                                                        <h1 class="mt-5"><a href="html/dashboard.html"><i class="fa fa-leaf text-success-m2 text-125"></i></a></h1>
                                                      <strong><h2 class="text-blue-d1">Chatty <span class="text-80 text-dark-tp4">Application</span></strong>  
                                                        </h2>

                                                        <div class="mt-5 mx-4 text-120 text-dark-tp4 text-justify">
                                                         <strong> Join </strong>  our community 
                                                            to make friends,<br />
                                                            meet experts &amp; 
                                                            receive exclusive offers!
                              <hr class="mb-1" />
                                                            <div>
                                                               
                                                            </div>
                                                        </div>

                                                        <div class="mt-auto mb-4 text-dark-tp3">
                                                            Chatty Application &copy; 2020
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="carousel-item minw-100 h-100">
                                                    <div style="background-image: url(assets/image/login-bg-2.svg);" class="d-flex flex-column align-items-center justify-content-start">
                                                        <h1 class="mt-5"><i class="fa fa-leaf text-success-m2 text-125"></i></h1>
                                                        <h2 class="text-blue-l1">Ace <span class="text-80 text-white-tp3">Application</span>
                                                        </h2>
                                                    </div>
                                                </div>

                                                <div class="carousel-item minw-100 h-100">
                                                    <div style="background-image: url(assets/image/login-bg-3.jpg);" class="d-flex flex-column align-items-center justify-content-start">
                                                        <div class="bgc-black-tp4 radius-1 p-3 w-90 text-center my-3 h-100">
                                                            <h1><i class="fa fa-leaf text-success-m2 text-125"></i></h1>
                                                            <h2 class="text-blue-l1">Ace <span class="text-80 text-white-tp3">Application</span>
                                                            </h2>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="carousel-item minw-100 h-100">
                                                    <div style="background-image: url(assets/image/login-bg-4.jpg);" class="d-flex flex-column align-items-center justify-content-start">
                                                        <h1 class="mt-5"><i class="fa fa-leaf text-success-m2 text-125"></i></h1>
                                                        <h2 class="text-blue-d1">Ace <span class="text-80 text-dark-tp3">Application</span>
                                                        </h2>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>


                                    <div class="col-12 col-lg-7 py-lg-5 bgc-white px-0">
                                        <!-- you can also use tab links -->
                                        <ul class="d-none mt-n4 mb-4 nav nav-tabs nav-tabs-simple justify-content-end" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" data-toggle="tab" href="#id-tab-login" role="tab" aria-controls="login" aria-selected="true">Login
                                                </a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" data-toggle="tab" href="#id-tab-signup" role="tab" aria-controls="signup" aria-selected="false">Signup
                                                </a>
                                            </li>
                                        </ul>


                                        <div class="tab-content tab-sliding border-0 p-0" data-swipe="right">

                                            <div class="tab-pane active show mh-100 px-3 px-lg-0 pb-3" id="id-tab-login">
                                                <div class="d-none d-lg-block col-md-6 offset-md-3 mt-lg-4 px-0">
                                                    <h4 class="text-dark-tp4 border-b-1 brc-grey-l1 pb-1 text-130">
                                                        <i class="fa fa-coffee text-orange-m2 mr-1"></i>
                                                        Welcome Back
                                                    </h4>
                                                </div>

                                                <div class="d-lg-none text-secondary-m1 my-4 text-center">
                                                    <a href="html/dashboard.html"><i class="fa fa-leaf text-success-m2 text-200 mb-4"></i></a>
                                                    <h1 class="text-170">
                                                        <span class="text-blue-d1">Ace <span class="text-80 text-dark-tp3">Application</span></span>
                                                    </h1>

                                                    Welcome back
                                                </div>

                                                <div class="form-row mt-4">
                                                    <div class="form-group col-md-6 offset-md-3">
                                                        <div class="d-flex align-items-center input-floating-label text-blue-m1 brc-blue-m2">
                                                            <asp:TextBox CssClass="form-control form-control-lg pr-4 shadow-none" ID="txtUsername" runat="server" autocomplete="off" />
                                                            <i class="fa fa-user text-grey-m2 ml-n4"></i>
                                                            <label class="floating-label text-grey-l1 text-100 ml-n3" for="id-login-username">Username</label>
                                                        </div>
                                                    </div>

                                                    <div class="form-group col-md-6 offset-md-3 mt-2 mt-md-1">
                                                        <div class="d-flex align-items-center input-floating-label text-blue-m1 brc-blue-m2">
                                                            <asp:TextBox type="password" CssClass="form-control form-control-lg pr-4 shadow-none" ID="txtPassword" runat="server" autocomplete="off" />
                                                            <i class="fa fa-key text-grey-m2 ml-n4"></i>
                                                            <label class="floating-label text-grey-l1 text-100 ml-n3" for="id-login-password">Password</label>
                                                        </div>
                                                        <asp:Label ID="LabelAlertSign" runat="server" Text="" CssClass="text-danger-m1"></asp:Label>
                                                    </div>
                                                    <div class="col-md-6 offset-md-3 text-right text-md-right mt-n2 mb-2">
                                                        <a href="#" class="text-primary-m2 text-95" data-toggle="tab" data-target="#id-tab-forgot">Forgot Password?
                                                        </a>
                                                    </div>

                                                    <div class="form-group col-md-6 offset-md-3">
                                                        <label class="d-inline-block mt-3 mb-0 text-secondary-d2">
                                                            <asp:CheckBox type="checkbox" CssClass="mr-1" ID="chcRememberMe" runat="server" />
                                                            Remember me
                                                        </label>
                                                        <asp:Button ID="BtnSign" runat="server" Text="SIGN IN" CssClass="btn btn-info btn-block btn-md btn-bold mt-2 mb-4" OnClick="BtnSign_Click" />
                                                    </div>
                                                </div>


                                                <div class="form-row">
                                                    <div class="col-12 col-md-6 offset-md-3 d-flex flex-column align-items-center justify-content-center">

                                                        <hr class="brc-default-m4 mt-0 mb-2 w-100" />

                                                        <div class="p-0 px-md-2 text-dark-tp3 my-3">
                                                            Not a member?
                              <a class="text-success-m2 text-600 mx-1" data-toggle="tab" data-target="#id-tab-signup" href="#">Signup now
                              </a>
                                                        </div>

                                                        <hr class="brc-default-m4 w-100 mb-2" />
                                                        <div class="mt-n4 bgc-white-tp2 px-3 py-1 text-default-d1 text-90"></div>

                                                        

                                                    </div>
                                                </div>
                                            </div>


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
                                                            <asp:TextBox type="text" CssClass="form-control form-control-lg pr-4 shadow-none" ID="txtName" runat="server" autocomplete="off" />
                                                            <i class="fa fa-envelope text-grey-m2 ml-n4"></i>
                                                            <label class="floating-label text-grey-l1 text-100 ml-n3" for="id-signup-email">Name</label>
                                                        </div>
                                                    </div>

                                                    <div class="form-group col-md-6 offset-md-3 mt-1">
                                                        <div class="d-flex align-items-center input-floating-label text-success-m1 brc-success-m2">
                                                            <asp:TextBox type="text" CssClass="form-control form-control-lg pr-4 shadow-none" runat="server" ID="txtSurname" autocomplete="off" />
                                                            <i class="fa fa-user text-grey-m2 ml-n4"></i>
                                                            <label class="floating-label text-grey-l1 text-100 ml-n3" for="id-signup-username">Surname</label>
                                                        </div>
                                                    </div>
                                                    <div class="form-group col-md-6 offset-md-3 mt-1">
                                                        <div class="d-flex align-items-center input-floating-label text-success-m1 brc-success-m2">
                                                            <asp:TextBox type="text" CssClass="form-control form-control-lg pr-4 shadow-none" runat="server" ID="txtRegisterUsername" autocomplete="off" />
                                                            <i class="fa fa-user text-grey-m2 ml-n4"></i>
                                                            <label class="floating-label text-grey-l1 text-100 ml-n3" for="id-signup-username">Username</label>
                                                        </div>
                                                    </div>
                                                    <div class="form-group col-md-6 offset-md-3 mt-1">
                                                        <div class="d-flex align-items-center input-floating-label text-success-m1 brc-success-m2">
                                                            <asp:TextBox  TextMode="Email" CssClass="form-control form-control-lg pr-4 shadow-none" runat="server" ID="txtMail" autocomplete="off" />
                                                            <i class="fa fa-user text-grey-m2 ml-n4"></i>
                                                            <label class="floating-label text-grey-l1 text-100 ml-n3" for="id-signup-username">E-mail</label>
                                                        </div>
                                                    </div>

                                                    <div class="form-group col-md-6 offset-md-3 mt-1">
                                                        <div class="d-flex align-items-center input-floating-label text-success-m1 brc-success-m2">
                                                            <asp:TextBox type="password" runat="server" CssClass="form-control form-control-lg pr-4 shadow-none" ID="txtRegisterPassword" TextMode="Password" autocomplete="off" />
                                                            <i class="fa fa-key text-grey-m2 ml-n4"></i>
                                                            <label class="floating-label text-grey-l1 text-100 ml-n3" for="id-signup-password">Password</label>
                                                        </div>
                                                    </div>

                                                    <div class="form-group col-md-6 offset-md-3 mt-1">
                                                        <div class="d-flex align-items-center input-floating-label text-success-m1 brc-success-m2">
                                                            <asp:TextBox type="password" runat="server" CssClass="form-control form-control-lg pr-4 shadow-none" ID="txtRegisterPassword2" TextMode="Password" autocomplete="off" />
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
                                                        <label class="d-inline-block mt-3 mb-0 text-secondary-d2">
                                                            <input type="checkbox" class="mr-1" id="id-agree" />
                                                            <span class="text-secondary-d2">I have read and agree to <a href="#" class="text-blue">terms</a></span>
                                                        </label>

                                                        <asp:Button ID="BtnRegister" runat="server" Text="Sign Up" CssClass="btn btn-success btn-block btn-md btn-bold mt-2 mb-3" OnClick="BtnRegister_Click"/>
                                                    </div>
                                                </form>


                                                <div class="form-row w-100">
                                                    <div class="col-12 col-md-6 offset-md-3 d-flex flex-column align-items-center justify-content-center">

                                                        <hr class="brc-default-m4 mt-0 mb-2 w-100" />

                                                        <div class="p-0 px-md-2 text-dark-tp4 my-3">
                                                            Already a member?
                              <a class="text-blue-m2 text-600 mx-1" data-toggle="tab" data-target="#id-tab-login" href="#">Login here
                              </a>
                                                        </div>

                                                        <hr class="brc-default-m4 w-100 mb-2" />
                                                        <div class="mt-n4 bgc-white-tp2 px-3 py-1 text-default-d1 text-90"></div>

                                                        

                                                    </div>
                                                </div>
                                            </div>
                                           
                                          
                                                
                                            <div class="tab-pane mh-100 px-3 px-lg-0 pb-3" id="id-tab-forgot" data-swipe-prev="#id-tab-login">
                                                <div class="position-tl ml-3 mt-2">
                                                    <a href="#" class="btn btn-light-default bg-transparent" data-toggle="tab" data-target="#id-tab-login"><i class="fa fa-arrow-left"></i></a>
                                                </div>

                                                <div class="col-md-6 offset-md-3 mt-5 px-0">
                                                    <h4 class="pt-4 pt-md-0 text-dark-tp4 border-b-1 brc-grey-l1 pb-1 text-130">
                                                        <i class="fa fa-key text-brown-m2 mr-1"></i>
                                                        Recover Password
                                                    </h4>
                                                </div>
                                                 <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                    <ContentTemplate>
                                                <div class="form-row mt-4">
                                                    <div class="form-group col-md-6 offset-md-3">
                                                        <label class="text-secondary-m1 mb-3">
                                                            Enter your email address and we'll send you the instructions:
                                                        </label>
                                                        <div class="d-flex align-items-center">
                                                            <asp:TextBox  runat="server" CssClass="form-control form-control-lg pr-4 shadow-none" ID="txtMailRecover" placeholder="Email" autocomplete="off"/>
                                                            <i class="fa fa-envelope text-grey-m2 ml-n4"></i>
                                                            
                                                          
                                                        </div>
                                                     
                                                            <asp:Label ID="LabelWrongAlertMail" runat="server" Text=" " CssClass="text-danger-m1"></asp:Label>
                                                         <asp:Label ID="LabelCorrectAlertMail" runat="server" Text=" " CssClass="text-success"></asp:Label>
                                                    </div>

                                                  

                                                    <div class="form-group col-md-6 offset-md-3 mt-1">
                                                        <asp:Button ID="BtnSendMail" runat="server" Text="Continue" CssClass="btn btn-warning btn-block btn-md btn-bold mt-2 mb-4" OnClick="BtnSendMail_Click"/>
                                                    </div>
                                                </div>
                                                        </ContentTemplate>
                                                    <Triggers> </Triggers>
                                               </asp:UpdatePanel>

                                                <div class="form-row w-100">
                                                    <div class="col-12 col-md-6 offset-md-3 d-flex flex-column align-items-center justify-content-center">

                                                        <hr class="brc-default-m4 mt-0 mb-2 w-100" />

                                                        <div class="p-0 px-md-2 text-dark-tp4 my-3">
                                                            <a class="text-blue-m2 text-600" data-toggle="tab" data-target="#id-tab-login" href="#">Back to Login
                                                            </a>
                                                        </div>


                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                   
                                    </div>

                                </div>

                            </div>
                        </div>

                        <div class="d-lg-none my-3 text-white-tp1 text-center">
                            <i class="fa fa-leaf text-success-l3 mr-1 text-110"></i>Ace Company &copy; 2020
                        </div>
                    </div>
                </div>
                <!-- /main -->

            </div>
            <!-- /.main-container -->
        </div>
        <!-- /.body-container -->
    </form>
    <script src="/assets/js/jquery.js"></script>
    <script src="/assets/js/popper.js"></script>
    <script src="/assets/js/bootstrap.js"></script>
    <script src="/assets/js/ace.js"></script>
    <script src="/assets/js/PageSpesific/LoginPage.js"></script>
</body>

</html>


