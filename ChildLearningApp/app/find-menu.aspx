<%@ Page Title="" Language="C#" MasterPageFile="~/app/app.Master" AutoEventWireup="true" CodeBehind="find-menu.aspx.cs" Inherits="ChildLearningApp.app.find_menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-12 p-0">
        <div class="row">
            <div class="col-1"></div>
            <div class="col-5 button-pad">
                <asp:imagebutton id="imgFindAnimal" Onclick="imgFindAnimal_OnClick" imageurl="../MenuLink/app-file/findAnimal.png" class="button-size bg-violet" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Find Animal</h4>
            </div>
            <div class="col-5 button-pad">
                <asp:imagebutton id="imgFindNum" Onclick="imgFindNum_OnClick" imageurl="../MenuLink/app-file/number.png" class="button-size bg-yellow" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Find Number</h4>
            </div>
            <div class="col-1"></div>
        </div>
    </div>
</asp:Content>
