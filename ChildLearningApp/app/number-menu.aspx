<%@ Page Title="" Language="C#" MasterPageFile="~/app/app.Master" AutoEventWireup="true" CodeBehind="number-menu.aspx.cs" Inherits="ChildLearningApp.app.number_menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-12 p-0">
        <div class="row">
            <div class="col-1"></div>
            <div class="col-5 button-pad">
                <asp:imagebutton id="btnNumeric" OnClick="btnNumeric_OnClick" imageurl="../MenuLink/app-file/123.png" class="button-size bg-red" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Numbers</h4>
            </div>
            <div class="col-5 button-pad">
                <asp:imagebutton id="imgAddtion" OnClick="imgAddtion_OnClick" imageurl="../MenuLink/app-file/addition.png" class="button-size bg-pink" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Addition</h4>
            </div>
            <div class="col-1"></div>
        </div>
        <div class="row">
            <div class="col-1"></div>
            <div class="col-5 button-pad">
                <asp:imagebutton id="imgSubstration" OnClick="imgSubstration_OnClick" imageurl="../MenuLink/app-file/substract.png" class="button-size bg-green" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Subtraction</h4>
            </div>
            <div class="col-1"></div>
        </div>
    </div>
</asp:Content>
