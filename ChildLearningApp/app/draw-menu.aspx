<%@ Page Title="" Language="C#" MasterPageFile="~/app/app.Master" AutoEventWireup="true" CodeBehind="draw-menu.aspx.cs" Inherits="ChildLearningApp.app.draw_menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-12 p-0">
        <div class="row">
            <div class="col-1"></div>
            <div class="col-5 button-pad">
                <asp:imagebutton id="DrawBoard" Onclick="DrawBoard_OnClick" imageurl="../MenuLink/app-file/drawing.png" class="button-size bg-blue" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Drawing Board</h4>
            </div>
            <div class="col-5 button-pad">
                <asp:imagebutton id="imgAlphaMatcher" Onclick="imgAlphaMatcher_OnClick" imageurl="../MenuLink/app-file/alphaMatcher.png" class="button-size bg-lime" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Draw Alphabet</h4>
            </div>
            <div class="col-1"></div>
        </div>
        <div class="row">
            <div class="col-1"></div>
            <div class="col-5 button-pad">
                <asp:imagebutton id="imgNumberMatcher" Onclick="imgNumberMatcher_OnClick" imageurl="../MenuLink/app-file/findNumber.png" class="button-size bg-red" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Draw Number</h4>
            </div>
            <div class="col-1"></div>
        </div>
    </div>
</asp:Content>
