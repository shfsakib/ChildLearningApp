<%@ Page Title="" Language="C#" MasterPageFile="~/app/app.Master" AutoEventWireup="true" CodeBehind="learn-menu.aspx.cs" Inherits="ChildLearningApp.app.learn_menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-12 p-0">
        <div class="row">
            <div class="col-1"></div>
            <div class="col-5 button-pad">
                <asp:ImageButton ID="imgColor" OnClick="imgColor_OnClick" ImageUrl="../MenuLink/app-file/color.png" class="button-size bg-blue" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Colors</h4>
            </div>
            <div class="col-5 button-pad">
                <asp:ImageButton ID="imgAnimal" OnClick="imgAnimal_OnClick" ImageUrl="../MenuLink/app-file/animal.png" class="button-size bg-lime" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Animal</h4>
            </div>
            <div class="col-1"></div>
        </div>
        <div class="row">
            <div class="col-1"></div>
            <div class="col-5 button-pad">
                <asp:ImageButton ID="imgMonth" OnClick="imgMonth_OnClick" ImageUrl="../MenuLink/app-file/month.png" class="button-size bg-orange" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Months</h4>
            </div>
            <div class="col-5 button-pad">
                <asp:ImageButton ID="imgWeek" OnClick="imgWeek_OnClick" ImageUrl="../MenuLink/app-file/week.png" class="button-size bg-red" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Weeks</h4>
            </div>
            <div class="col-1"></div>
        </div>
        <div class="row">
            <div class="col-1"></div>
            <div class="col-5 button-pad">
                <asp:ImageButton ID="imgShape" OnClick="imgShape_OnClick" ImageUrl="../MenuLink/app-file/shapes.png" class="button-size bg-green" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Shapes</h4>
            </div>
            <div class="col-1"></div>
        </div>
    </div>
</asp:Content>
