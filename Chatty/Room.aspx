<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Room.aspx.cs" Inherits="Chatty.Room" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ROOM</title>
    <meta charset="UTF-8" />

    <link href="/assets/css/bootstrap.css" rel="stylesheet" />
    <link href="/assets/fontawesome/css/brands.css" rel="stylesheet" />
    <link href="/assets/fontawesome/css/fontawesome.css" rel="stylesheet" />
    <link href="/assets/fontawesome/css/regular.css" rel="stylesheet" />
    <link href="/assets/fontawesome/css/solid.css" rel="stylesheet" />
    <link href="/assets/css/ace-font.css" rel="stylesheet" />
    <link href="/assets/css/ace.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
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

                                    <li class="nav-item border-l-1 bg-info"></li>

                                    <li class="nav-item px-3 border-l-1 bg-info">
                                        <span class="d-flex h-100 align-items-center text-grey-d1 py-3"></span>
                                    </li>

                                </ul>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- /.navbar-inner -->
            </nav>
            <div class="main-container bgc-info-l3">
                <div class="col-12 col-sm-6 mt-3 mt-sm-0 cards-container">
                    <div class="card bgc-info-l3">
                        <div class="card-header bg-dark">
                            <h5 class="card-title text-110 text-white">Chat
                            </h5>
                        </div>
                        <div class="chat">

                            <asp:TextBox ID="TxtChat" runat="server" CssClass="form-control col-sm-8 col-md-6 d-inline-block" TextMode="MultiLine"></asp:TextBox>
                            <asp:Button ID="BtnSend" runat="server" Text="SEND" CssClass="btn btn-md btn-primary mb-2px d-inline-block" OnClick="BtnSend_Click" />


                            <div class="rpt">
                                <asp:ScriptManager ID="ScriptManager2" runat="server">
                                </asp:ScriptManager>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:Repeater ID="RptChat" runat="server">


                                            <ItemTemplate>

                                                <asp:Label ID="LabelUsername" runat="server" Text='<%# Eval("username") %>' CssClass="badge badge-info arrowed-in arrowed-in-right"></asp:Label>

                                                <asp:Label ID="LabelMessage" runat="server" Text='<%# Eval("Message") %>' CssClass="badge badge-dark arrowed bg-dark"></asp:Label>
                                                <br />
                                            </ItemTemplate>


                                        </asp:Repeater>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="BtnSend" EventName="Click" />
                                    </Triggers>
                                </asp:UpdatePanel>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="assets/js/jquery.js"></script>
        <script src="assets/js/popper.js"></script>
        <script src="assets/js/bootstrap.js"></script>
        <script src="assets/js/aos.js"></script>
        <script src="assets/js/holder.js"></script>
        <script src="assets/js/ace.js"></script>
        <script src="assets/js/PageSpesific/RoomPage.js"></script>

    </form>
</body>
</html>
