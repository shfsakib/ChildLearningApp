<%@ Page Title="" Language="C#" MasterPageFile="~/app/app.Master" AutoEventWireup="true" CodeBehind="substraction.aspx.cs" Inherits="ChildLearningApp.app.substraction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-12">
        <asp:image id="img1" style="width: 100%; height: 250px; border: 2px solid; background: white;" runat="server" />
    </div>
    <div class="col-12">
        <asp:image id="img2" style="width: 100%; height: 250px; border: 2px solid; background: white;" runat="server" />
    </div>
    <div class="col-12 text-center pt-2">
        <asp:label id="lblQuestion" runat="server" style="font-size: 50px; font-weight: 600; color: white;" text=""></asp:label>
    </div>
    <div class="col-12 pt-3 pb-3">
        <div class="row">
            <div class="col-6">
                <asp:linkbutton id="opt1" cssclass="btn btn-primary btn-block" OnClick="opt1_OnClick" style="font-size: 30px;" runat="server"></asp:linkbutton>
            </div>
            <div class="col-6">
                <asp:linkbutton id="opt2" cssclass="btn btn-success  btn-block" OnClick="opt2_OnClick" style="font-size: 30px;" runat="server"></asp:linkbutton>
            </div>
        </div>
    </div>

    <audio src="" id="audioQuiz" runat="server" autoplay></audio>
    <asp:hiddenfield id="hiddenAns" runat="server"></asp:hiddenfield>
    <div class="alertModalBg" id="alertModalBg" runat="server" visible="False">
        <div class="successAlertModal">
            <div class="col-12 text-center pt-3">
                <img class="alertAnim" id="alertImg" runat="server" src="/MenuLink/app-file/success.gif" />
            </div>
            <div class="col-12 text-center p-3">
                <h3 class="alertMessage" id="alertMsg" runat="server"></h3>
            </div>
            <div class="col-12 text-center p-3">
                <asp:linkbutton id="lnkOk" cssclass="btn btn-primary" onclick="lnkOk_Click" runat="server">Ok</asp:linkbutton>
            </div>
        </div>
    </div>
    <style>
        .successAlertModal {
            width: 450px;
            max-width: 450px;
            min-height: 150px;
            height: auto;
            background: white;
            padding: 0;
            min-width: 350px;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            position: relative;
            border-radius: 15px;
            border: 1px solid #a5a3d1;
            border-bottom: 15px solid #8C93C7;
            box-shadow: 2px 2px 5px 2px #a5a3d1;
        }

        .alertModalBg {
            position: absolute;
            width: calc(100%);
            height: calc(100vh);
            background: rgba(255, 255, 255, 0);
            z-index: 10000;
            top: 0;
            left: 0;
            overflow-x: hidden;
            overflow-y: auto;
            justify-content: center;
            align-items: center;
        }
        /*Alert modal css*/
        .alertAnim {
            width: 75px;
            height: 75px;
        }
    </style>
</asp:Content>
