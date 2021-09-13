<%@ Page Title="" Language="C#" MasterPageFile="~/app/app.Master" AutoEventWireup="true" CodeBehind="find-bangla-number.aspx.cs" Inherits="ChildLearningApp.app.find_bangla_number" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:hiddenfield id="findId" runat="server"></asp:hiddenfield>
    <asp:hiddenfield id="AnswerId" runat="server"></asp:hiddenfield>

    <div class="col-12">
        <asp:label id="lblQuestion" style="font-size: 45px; font-weight: bold; color: white;" runat="server" text="Label"></asp:label>
    </div>
    <audio src="" id="audioLearn" runat="server" autoplay="autoplay"></audio>
    <div class="col-12 text-center">
        <asp:datalist id="dataOptions" repeatdirection="Horizontal" repeatcolumns="2" runat="server">
            <ItemTemplate> 
                <asp:ImageButton ID="imgPicture10" Width="100%" Height="225px" style="background: white;" ImageUrl='<%#Eval("Picture")%>' OnClick="imgPicture10_OnClick" runat="server" ></asp:ImageButton>
            </ItemTemplate>
    </asp:datalist>
    </div>
    <div class="alertModalBg" id="alertModalBg" runat="server" visible="False">
        <div class="successAlertModal">
            <div class="col-12 text-center pt-3">
                <img class="alertAnim" id="alertImg" runat="server" src="/MenuLink/app-file/success.gif" />
            </div>
            <div class="col-12 text-center p-3">
                <h3 class="alertMessage" id="alertMsg" runat="server"></h3>
            </div>
            <div class="col-12 text-center p-3">
                <asp:linkbutton id="lnkOk" cssclass="btn btn-primary" OnClick="lnkOk_OnClick" runat="server">Ok</asp:linkbutton>
            </div>
        </div>
    </div>
    <audio src="" id="audioQuiz" runat="server" autoplay></audio>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            setTimeout(function () {
                $('#ContentPlaceHolder1_audioLearn')[0].play();
            }, 300);
        });

    </script>
</asp:Content>
