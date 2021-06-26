<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" Async="true" CodeBehind="add-alphabet.aspx.cs" Inherits="ChildLearningApp.admin.add_alphabet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-title">
        <h3>Add Alphabet</h3>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    Alphabet:
                    <asp:TextBox ID="txtalpha" placeholder="Aa,Bb,Cc etc" autocomplete="off" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    Word with Alphabet:
                    <asp:TextBox ID="txtWord" placeholder="A for Apple" autocomplete="off" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    Pronounce Audio (*.mp3,*.wav,*.aac):
                    <asp:FileUpload ID="fileAudio" accept=".mp3,.wav,.aac" class="form-control" runat="server" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    Picture of Alphabet with word:
                    <asp:FileUpload ID="filePic" accept=".png,.jpg,.jpeg" onchange="ImagePreview(this)" class="form-control" runat="server" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <br />
                    <asp:Image ID="imgPic" ImageUrl="/MenuLink/image.png" Style="width: 150px; height: 150px; border: 2px solid #495057; border-radius: 5px;" runat="server" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <br />
                    <asp:Button ID="btnAdd" class="btn btn-primary" OnClick="btnAdd_OnClick" runat="server" Text="Add Alphabet" />
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=imgPic.ClientID%>').prop('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }
    </script>
</asp:Content>
