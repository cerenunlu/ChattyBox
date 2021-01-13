<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Chatty.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1" />

    <title>Chatty ChatBox</title>
    <link href="/assets/css/bootstrap.css" rel="stylesheet" />
    <link href="/assets/fontawesome/css/brands.css" rel="stylesheet" />
    <link href="/assets/fontawesome/css/fontawesome.css" rel="stylesheet" />
    <link href="/assets/fontawesome/css/regular.css" rel="stylesheet" />
    <link href="/assets/fontawesome/css/solid.css" rel="stylesheet" />
    <link href="/assets/css/aos.css" rel="stylesheet" />
    <link href="/assets/css/ace-font.css" rel="stylesheet" />
    <link href="/assets/css/ace.css" rel="stylesheet" />
    <link href="/assets/css/HomePage.css" rel="stylesheet" />
    <link href="/assets/css/ace-themes.css" rel="stylesheet" />


</head>
<body>
    <form runat="server">
        <div class="body-container">
            <div class="pos-abs" id="scroll-down"></div>
            <div class="pos-abs" id="scroll-up"></div>

            <nav class="navbar navbar-expand-lg navbar-white2">
                <div class="navbar-inner brc-info-l1">
                    <div class="container">


                        <button type="button" class="navbar-toggler btn btn-burger burger-times static collapsed d-flex d-lg-none ml-2" data-toggle="collapse" data-target="#navbarMenu" aria-controls="navbarMenu" aria-expanded="false" aria-label="Toggle navbar menu">
                            <span class="bars text-dark-tp3"></span>
                        </button>
                        <!-- mobile navbar toggler button -->


                        <div class="navbar-intro w-auto justify-content-xl-between border-0">
                            <a class="navbar-brand text-dark-tp3 text-180" href="#">
                                <i class="fa fa-leaf text-105 text-success mr-1"></i>
                                <span>Chatty</span>
                                <span class="text-70">Application</span>
                            </a>
                            <!-- /.navbar-brand -->
                        </div>
                        <!-- /.navbar-intro -->



                        <div class="navbar-menu collapse navbar-collapse navbar-backdrop " id="navbarMenu">

                            <div class="navbar-nav">
                                <ul class="nav nav-compact-3">

                                    <li class="nav-item dropdown dropdown-mega pos-rel dropdown-hover">
                                        <a class="btn btn-outline-dark btn-h-light-default btn-a-lighter-blue  border-0 dropdown-toggle" href="#" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">ROOM LIST
                      <i class="caret fa fa-angle-down d-none d-lg-block"></i>
                                            <i class="caret fa fa-angle-left d-block d-lg-none"></i>
                                        </a>
                                        <div class="p-0 dropdown-menu dropdown-center dropdown-lg border-0 shadow border-t-2 brc-default-m2 radius-b-2 mt-1 mt-lg-3">
                                            <div class="row mx-0">
                                                <div class="bgc-white col-lg-6 col-12 p-2 p-lg-3 p-xl-4">
                                                    <div class="d-flex align-items-center">
                                                        <div class="pos-rel">


                                                            <asp:Repeater ID="RptButtons" runat="server" OnItemCommand="RptButtons_ItemCommand">
                                                                <ItemTemplate>

                                                                    <i class="far fa-comments text-160 text-success mr-2 mb-3 w-6 h-6 radius-round text-center pt-2 pos-rel">
                                                                        <asp:HyperLink ID="HyperLinkButton" runat="server" CssClass="d-block py-1px px-1 radius-1 no-underline text-dark-tp3 text-600 bgc-h-blue-l1 text-95" NavigateUrl='<%# "Room.aspx?ID=" + Eval("ID") %>' Text='<%# Eval("Name") %>' /></i>

                                                                    <br />
                                                                    <br />

                                                                </ItemTemplate>



                                                            </asp:Repeater>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- .col:mega links -->
                                            </div>
                                            <!-- .row: mega -->
                                        </div>
                                    </li>
                                </ul>
                                <!-- /.navbar-nav menu -->
                            </div>
                            <!-- /.navbar-nav -->

                        </div>
                        <!-- /.navbar-menu.navbar-collapse -->



                        <button type="button" class="d-style mr-2 px-4 navbar-toggler btn btn-burger static collapsed d-flex d-lg-none" data-toggle="collapse" data-target="#navbarMenu2" aria-controls="navbarMenu2" aria-expanded="false" aria-label="Toggle navbar menu">
                            <i class="fa fa-caret-down d-collapsed text-grey-m1 text-80"></i>
                            <i class="fa fa-caret-up d-n-collapsed text-grey-m1 text-80"></i>

                            <i class="fa fa-user text-orange-d1 ml-2"></i>
                        </button>
                        <!-- mobile navbar toggler button -->

                        <div class="navbar-menu collapse navbar-collapse navbar-backdrop " id="navbarMenu2">
                            <div class="navbar-nav">
                                <ul class="nav">

                                    <li class="nav-item dropdown px-lg-2 d-lg-flex flex-column justify-content-center">
                                        <a class="d-none d-lg-block h-auto btn btn-outline-blue btn-bold radius-round border-2 dropdown-toggle px-2 px-xl-3" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                                            <asp:Label ID="lblWelcome" runat="server" Text=""></asp:Label>
                                        </a>

                                        <a class="d-lg-none nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                                            <i class="fa fa-caret-right bgc-blue radius-round text-white py-2 px-3 mr-2"></i>
                                            <asp:Label ID="lblWelcome2" runat="server" Text=""></asp:Label>
                                        </a>

                                        <div style="width: 20rem;" data-display="static" class="shadow radius-1 p-0 dropdown-menu dropdown-menu-right dropdown-animated animated-2 brc-primary-m3 mt-lg-n1 mr-lg-n2 dropdown-caret">
                                            <h4 class="text-120 mb-3 text-default-d3 px-3 mt-3 mb-2"></h4>
                                            <hr class="border-dotted brc-default-m3" />
                                            <div class="dropdown-clickable text-grey-d2">
                                                <div class="dropdown-body my-25">
                                                    <div class="form-group mx-3">
                                                        <asp:Button ID="btnOut" runat="server" Text="Logout" CssClass="fa fa-user text-dark-m1 text-105 mr-1 bg-danger" OnClick="btnOut_Click" />
                                                    </div>

                                                    <div class="form-group mx-3">
                                                    </div>

                                                    <div class="mx-3">
                                                    </div>
                                                </div>

                                                <div class="dropdown-footer py-2 bgc-default-l4 text-center pos-rel border-t-1 brc-default-l2">
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="nav-item dropdown border-l-1 brc-default-l1">

                                        <div style="width: 20rem;" data-display="static" class="shadow radius-1 p-0 dropdown-menu dropdown-menu-right dropdown-animated animated-2 border-1 brc-primary-m3 mt-lg-n1 mr-lg-n2 dropdown-caret">
                                            <div class="dropdown-clickable text-grey-d2">
                                                <div class="dropdown-body my-25">
                                                    <div class="px-2 px-md-3">
                                                        <input type="text" class="form-control shadow-none m-0" placeholder="Enter Keywords to Search ..." />
                                                    </div>
                                                </div>

                                                <div class="dropdown-footer py-2 text-center pos-rel border-t-1 brc-secondary-l2">
                                                    <button type="button" class="btn px-4 btn-sm btn-info btn-bold" data-dismiss="dropdown">Find</button>
                                                    <button type="reset" class="btn btn-sm btn-outline-default btn-bold">Clear</button>
                                                </div>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="nav-item border-l-1 brc-default-l1"></li>

                                    <li class="nav-item px-3 border-l-1 brc-default-l1">
                                        <span class="d-flex h-100 align-items-center text-grey-d1 py-3"></span>
                                    </li>

                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- /.navbar-inner -->
            </nav>
            <div class="main-container">

                <div role="main" class="main-content">
                    <div class="page-content p-0">
                        <div class="page-intro pos-rel bgc-info-l3 py-2 pt-xl-4 py-xl-5 border-b-1 brc-info-l1 overflow-hidden">

                            <div id="random-shapes"></div>
                            <!-- will contain the random circle and squares -->

                            <div class="row container container-plus mx-auto mt-4 mb-5">
                                <div class="col-12 col-md-7 d-flex flex-column justify-content-center text-center" data-aos="fade-right" data-aos-delay="100">
                                    <h1 class="text-dark-tp2 border-b-2 brc-blue-tp4 pb-2 align-self-center">Welcome To
                    <span class="text-90">Chatty
                    </span>
                                    </h1>

                                    <h4 class="my-3 text-dark-tp2">You can start chatting with new people
                                    </h4>

                                    <h6 class="my-3 bgc-purple-tp1 text-120 text-white align-self-center p-2 radius-3px">Just you should choose a room
                                    </h6>

                                    <div class="mt-45">
                                        <div class="text-uppercase text-600 text-95 text-dark-tp3 mb-3">
                                        </div>

                                    </div>
                                </div>

                                <div class="col-12 col-md-5 order-first order-md-last mb-4 mb-md-0" data-aos="fade-left">
                                    <img src="\assets\image\chat.png" class="w-90 1mx-auto" />
                                </div>
                            </div>
                        </div>
                        <div class="py-2 bgc-white mt-n4">
                            <div class="container container-plus pos-rel mt-n5">
                                <div class="text-center">

                                    <div class="row">
                                        <div class="col-12 col-lg-10 col-xl-8 mx-auto">
                                            <div class="row my-4">

                                                <div class="col-12 col-md-4 mb-4 mb-md-0" data-aos="fade-up" data-aos-delay="300">
                                                </div>

                                                <div class="col-12 col-md-4 mb-4  mb-md-0" data-aos="fade-up" data-aos-delay="450">
                                                </div>

                                                <div class="col-12 col-md-4 mb-4 mb-md-0" data-aos="fade-up" data-aos-delay="600">
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>



                    <div class="text-center py-4 bgc-default-l4 border-t-1 brc-default-l3">
                        <span class="text-dark-tp3">Copyright &copy; 2020 Ace Company
                        </span>
                    </div>

                    <div class="footer-tools">
                        <a id="btn-scroll-up" href="#" class="btn-scroll-up btn btn-dark btn-smd border-2 radius-round mb-2 mr-2">
                            <i class="fa fa-arrow-up w-2 h-2"></i>
                        </a>
                    </div>
                </div>
            </div>
            <!-- /main -->

        </div>
        <!-- /.main-container -->

        <script src="/assets/js/jquery.js"></script>
        <script src="/assets/js/popper.js"></script>
        <script src="/assets/js/bootstrap.js"></script>
        <script src="/assets/js/ace.js"></script>
        <script src="/assets/js/aos.js"></script>
        <script src="/assets/js/holder.js"></script>

        <script src="/assets/js/PageSpesific/HomePage.js"></script>
    </form>
</body>
</html>
