<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true"  Async="true" CodeBehind="add-alphabet.aspx.cs" Inherits="ChildLearningApp.admin.add_alphabet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    Alphabet:
                    <asp:TextBox ID="txtalpha" placeholder="A,B,C etc" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    Word with Alphabet:
                    <asp:TextBox ID="txtWord" placeholder="A for Apple" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    Picture of Alphabet with word:
                    <asp:FileUpload ID="filePic" accept=".png,.jpg,.jpeg" class="form-control" runat="server" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <asp:Image ID="imgPic" Style="width: 125px; height: 125px; border: 2px solid #495057; border-radius: 5px;" runat="server" />
                    <asp:LinkButton ID="lnkAdd" OnClick="lnkAdd_OnClick" runat="server">Speak</asp:LinkButton>
                     </div>
            </div>
        </div>
    </div>
</asp:Content>
