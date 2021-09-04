<%@ Page Title="" Language="C#" MasterPageFile="~/app/app.Master" AutoEventWireup="true" CodeBehind="learn-color.aspx.cs" Inherits="ChildLearningApp.app.learn_color" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-12">
        <asp:Image ID="imgColor" Style="width: 100%; height: 300px; border: 2px solid;" runat="server" />
    </div>
    <div class="col-12 d-flex mt-3">
        <h1 style="color: white;">
            <asp:Label ID="lblColorName" runat="server" Text="Color"></asp:Label>
        </h1>
        <asp:LinkButton ID="lnkMic" CssClass="btn btn-success pt-3 ml-3" OnClick="lnkMic_OnClick" runat="server"><i class="fas fa-volume-up fa-lg"></i></asp:LinkButton>
        <audio src="" id="audioLearn" runat="server" autoplay="autoplay"></audio>
    </div>
    <div class="col-12 mt-4">
        <asp:LinkButton ID="lnkNext" OnClick="lnkNext_OnClick" CssClass="btn btn-primary btn-block" runat="server">Next</asp:LinkButton>
    </div>
</asp:Content>
