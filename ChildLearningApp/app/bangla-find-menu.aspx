<%@ Page Title="" Language="C#" MasterPageFile="~/app/app.Master" AutoEventWireup="true" CodeBehind="bangla-find-menu.aspx.cs" Inherits="ChildLearningApp.app.bangla_find_menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-12 p-0">
        <div class="row">
            <div class="col-1"></div>
            <div class="col-5 button-pad">
                <asp:imagebutton id="imgBanglaAnimalFind" Onclick="imgBanglaAnimalFind_OnClick" imageurl="../MenuLink/app-file/findAnimal.png" class="button-size bg-blue" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">প্রাণী খুঁজা
                </h4>
            </div>
            <div class="col-5 button-pad">
                <asp:imagebutton id="imgBanglaNumberFind" Onclick="imgBanglaNumberFind_OnClick" imageurl="../MenuLink/app-file/bangla-number.png" class="button-size bg-green" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">অংক খুঁজা
                </h4>
            </div>
            <div class="col-1"></div>
        </div>
    </div>
</asp:Content>
