<%@ Page Title="" Language="C#" MasterPageFile="~/app/app.Master" AutoEventWireup="true" CodeBehind="bangla-learn-menu.aspx.cs" Inherits="ChildLearningApp.app.bangla_learn_menu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-12 p-0">
        <div class="row">
            <div class="col-1"></div>
            <div class="col-5 button-pad">
                <asp:imagebutton id="imgBanglaAnimal" onclick="imgBanglaAnimal_OnClick" imageurl="../MenuLink/app-file/animal.png" class="button-size bg-violet" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">প্রাণীর নাম</h4>
            </div>
            <div class="col-5 button-pad">
                <asp:imagebutton id="imgBanglaMonth" onclick="imgBanglaMonth_OnClick" imageurl="../MenuLink/app-file/banglaMonth.png" class="button-size bg-pink" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">মাসের নাম
                </h4>
            </div>
            <div class="col-1"></div>
        </div>
        <div class="row">
            <div class="col-1"></div>
            <div class="col-5 button-pad">
                <asp:imagebutton id="imgBanglaWeek" onclick="imgBanglaWeek_OnClick" imageurl="../MenuLink/app-file/banglaweek.png" class="button-size bg-red" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">সপ্তাহের নাম</h4>
            </div>
            <div class="col-5 button-pad">
                <asp:imagebutton id="imgBanglaShape" onclick="imgBanglaShape_OnClick" imageurl="../MenuLink/app-file/shapes.png" class="button-size bg-orange" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">আকৃতি
                </h4>
            </div>
            <div class="col-1"></div>
        </div>
        <div class="row">
            <div class="col-1"></div>
            <div class="col-5 button-pad">
                <asp:imagebutton id="imgBanglaColor" Onclick="imgBanglaColor_OnClick" imageurl="../MenuLink/app-file/color.png" class="button-size bg-orange" runat="server" />
                <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">রঙের নাম
                </h4>
            </div>
            <div class="col-1"></div>
        </div>

    </div>
</asp:Content>
