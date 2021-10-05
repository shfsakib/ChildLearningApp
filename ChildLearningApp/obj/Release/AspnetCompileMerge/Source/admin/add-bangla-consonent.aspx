<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="add-bangla-consonent.aspx.cs" Inherits="ChildLearningApp.admin.add_bangla_consonent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-title">
        <h3>Add Bangla Consonent</h3>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    Letter:
                    <asp:TextBox ID="txtalpha" placeholder="ক,খ,গ" autocomplete="off" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-md-12">
                    Letter Pronounce Audio (*.mp3,*.wav,*.aac):
                    <asp:FileUpload ID="fileAudio" accept=".mp3,.wav,.aac" class="form-control" runat="server" />
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-md-12">
                    Picture of Letter:
                    <asp:FileUpload ID="filePic" accept=".png,.jpg,.jpeg" onchange="ImagePreview(this)" class="form-control" runat="server" />
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-md-12">
                    <br />
                    <asp:Image ID="imgPic" ImageUrl="/MenuLink/image.png" Style="width: 150px; height: 150px; border: 2px solid #495057; border-radius: 5px;" runat="server" />
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-md-12">
                    Word with Letter:
                    <asp:TextBox ID="txtWord" placeholder="কাক,খই" autocomplete="off" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-md-12">
                    Word Pronounce Audio (*.mp3,*.wav,*.aac):
                    <asp:FileUpload ID="fileWordAudio" accept=".mp3,.wav,.aac" class="form-control" runat="server" />
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-md-12">
                    Picture of word:
                    <asp:FileUpload ID="fileWord" accept=".png,.jpg,.jpeg" onchange="ImagePreviewWord(this)" class="form-control" runat="server" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <br />
                    <asp:Image ID="imgWord" ImageUrl="/MenuLink/image.png" Style="width: 150px; height: 150px; border: 2px solid #495057; border-radius: 5px;" runat="server" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <br />
                    <asp:Button ID="btnAdd" class="btn btn-primary btn-block" OnClick="btnAdd_OnClick" runat="server" Text="Add Bangla Consonent" />
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
            function ImagePreviewWord(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $('#<%=imgWord.ClientID%>').prop('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }
    </script>
</asp:Content>
