<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="add-admin.aspx.cs" Inherits="ChildLearningApp.admin.add_admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Main content -->
    <div class="card-title">
        <h3>Create Admin</h3>
    </div>
    <hr />
    <div class="col-md-12 card-body bc">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">Name : </div>
            <div class="col-md-6">
                <input type="text" runat="server" autocomplete="off" class="form-control wd" placeholder="Mr. xyz" id="nameTextBox" />
            </div>
            <div class="col-md-2"></div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">Email : </div>
            <div class="col-md-6">
                <input class="form-control wd" id="txtEmail" autocomplete="off" runat="server" type="email" placeholder="example@example.com" />
            </div>
            <div class="col-md-2"></div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">Mobile No. : </div>
            <div class="col-md-6">
                <input type="text" runat="server" autocomplete="off" class="form-control wd" placeholder="01XXXXXXXXX" id="mobileNoTextBox" />
            </div>
            <div class="col-md-2"></div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">Date of Birth : </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtDob" TextMode="Date" class="form-control wd" runat="server" placeholder="dd/mm/yyyy"></asp:TextBox>
            </div>
            <div class="col-md-2"></div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">Gender : </div>
            <div class="col-md-6">
                <asp:DropDownList ID="ddlGender" class="form-control wd" runat="server">
                    <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-md-2"></div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">Profile Picture : </div>
            <div class="col-md-6">
                <asp:FileUpload ID="profilePicFileUpload" onchange="ImagePreview(this);" class="form-control wd" accept=".png,.jpg,.jpeg" alt="profile pic" required="required" runat="server" />
            </div>
            <div class="col-md-2"></div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
            <div class="col-md-6">
                <br />
                <img id="profilePicImage" runat="server" class="form-control wd" src="../MenuLink/image.png" alt="ProfilePic" style="height: 250px; width: 250px" />
            </div>
            <div class="col-md-2"></div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">Type : </div>
            <div class="col-md-6">
                <asp:DropDownList ID="typeDropDownList" class="form-control wd" required="required" runat="server">
                    <asp:ListItem Text="Select"></asp:ListItem>
                    <asp:ListItem Text="Admin"></asp:ListItem>
                    <asp:ListItem Text="Moderator"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="col-md-2"></div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">Password : </div>
            <div class="col-md-6">
                <input type="password" runat="server"  autocomplete="off" class="form-control wd" placeholder="enter password" id="txtNewPass" />
            </div>
            <div class="col-md-2"></div>
        </div>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2">Confirm Password : </div>
            <div class="col-md-6">
                <input type="password" runat="server" autocomplete="off" class="form-control wd" placeholder="confirm password" id="txtConfirmPass" />
            </div>
            <div class="col-md-2"></div>
        </div>
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
            <div class="col-md-6">
                <asp:LinkButton ID="createButton" OnClick="createButton_OnClick" Style="width: 100%; margin-top: 2px" runat="server" class="btn btn-primary"> <i class="icon-add_to_queue"></i> Create</asp:LinkButton>
            </div>
            <div class="col-md-2"></div>
        </div>
    </div>
    <!-- /.row -->
    <style>
        .wd {
            margin-top: 2px;
        }
    </style>
    <!-- /.container-fluid -->
    <!-- /.content -->
    <script src="../ReferenceLink/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="../ReferenceLink/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../ReferenceLink/dist/js/adminlte.min.js"></script>
    <script type="text/javascript">
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=profilePicImage.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#txtConfirmPass').keyup(function () {
                var pass = $('#txtNewPass').val();
                var cPass = $('#txtConfirmPass').val();
                $('#lblMsg').fadeIn();
                if (pass !== cPass) {
                    $('#lblMsg').text('Password missmatch ✖');
                    $('#lblMsg').css('color', 'red');
                    setTimeout(function () {
                        $('#lblMsg').fadeOut(600);
                    }, 2000);
                } else {
                    $('#lblMsg').text('Password missmatch ✔');
                    $('#lblMsg').css('color', 'green');
                    setTimeout(function () {
                        $('#lblMsg').fadeOut(600);
                    }, 2000);
                }
            });
        });
    </script>
</asp:Content>
