<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="..cs" Inherits="Chatty.ResetPass" %>

<!DOCTYPE html>
<html lang="en">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password</title>

    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700;900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/fontawesome/css/brands.css" rel="stylesheet" />
    <link href="assets/fontawesome/css/fontawesome.css" rel="stylesheet" />
    <link href="assets/fontawesome/css/regular.css" rel="stylesheet" />
    <link href="assets/fontawesome/css/solid.css" rel="stylesheet" />
    <link href="assets/css/ace-font.css" rel="stylesheet" />
    <link href="assets/css/ace.css" rel="stylesheet" />
    <img src="assets/image/favicon.png" />
    <link href="assets/css/@page-style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="tab-pane px-1 px-md-2 px-lg-3" id="profile-tab-edit">
                    <h4 class="text-blue-d1 text-130 mt-3">Update Password </h4>
                    <hr />

                    <div class="row">
                      <div class="col-12 col-md-10 offset-md-1 mt-3">

                        <div class="text-grey-d1 text-95">


                          <div class="form-group row mx-0">
                            <label for="id-field1" class="col-sm-3 col-form-label text-sm-right">Password</label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"  class="form-control" placeholder="Password"></asp:TextBox>
                            </div>
                          </div>

                          <div class="form-group row mx-0">
                            <label for="id-field2" class="col-sm-3 col-form-label text-sm-right">Confirm Password</label>
                             <div class="col-sm-6">
                                <asp:TextBox ID="txtconfpassword" runat="server" TextMode="Password"  class="form-control" placeholder="Confirm Password"></asp:TextBox>
                            </div>
                          </div>

                        
                                 <strong><asp:Label ID="LblAlert1" runat="server" Text=" " CssClass="text-orange-d2 mx-auto"></asp:Label></strong>
                                <asp:Label ID="LblAlert2" runat="server" Text="" CssClass="text-orange-d2 mx-auto"></asp:Label>

                          
                              
                            </div>


                      </div>




                      <div class="col-12">
                        <hr class="border-double" />

                        <div class="form-group col-md-6 offset-md-3 mt-2">
                            <asp:Button ID="BtnConfirm" runat="server" Text="Save Changes" OnClick="BtnConfirm_Click" CssClass="btn btn-warning btn-block btn-md btn-bold mt-2 mb-3 radius-2"/>
                        </div>
                      </div>

                    </div>
                  </div>
               
    </form>
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/popper.js"></script>
    <script src="assets/js/bootstrap.js"></script>
    <script src="assets/js/ace.js"></script>
    <script src="assets/js/PageSpesific/ResetPass.js"></script>
</body>
</html>
