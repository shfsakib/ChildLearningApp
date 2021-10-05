<%@ Page Title="" Language="C#" MasterPageFile="~/app/app.Master" AutoEventWireup="true" CodeBehind="bangla-number-menu.aspx.cs" Inherits="ChildLearningApp.app.bangla_number_menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-12 p-0">
        <div class="row">
            <div class="col-1"></div>
            <div class="col-5 button-pad">
                <asp:ImageButton ID="imgBanglaNumber" OnClick="imgBanglaNumber_OnClick" ImageUrl="../MenuLink/app-file/banglanumber.png" class="button-size bg-red" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">অংক</h4>
            </div>
            <div class="col-5 button-pad">
                <asp:ImageButton ID="imgBanglaAddition" OnClick="imgBanglaAddition_OnClick" ImageUrl="../MenuLink/app-file/bangla-add.png" class="button-size bg-yellow" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">যোগ</h4>
            </div>
            <div class="col-1"></div>
        </div>
        <div class="row">
            <div class="col-1"></div>
            <div class="col-5 button-pad">
                <asp:ImageButton ID="imgBanglaSubstraction" OnClick="imgBanglaSubstraction_OnClick" ImageUrl="../MenuLink/app-file/banglasubstract.png" class="button-size bg-lime" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">বিয়োগ</h4>
            </div>
            <div class="col-1"></div>
        </div>
    </div>
</asp:Content>
