<%@ Page Title="" Language="C#" MasterPageFile="~/app/app.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="learn-color.aspx.cs" Inherits="ChildLearningApp.app.learn_color" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="btn-dark text-center p-3 mb-3">
        <h3>Colors</h3>
    </div><div class="col-12">
        <asp:Image ID="imgColor" Style="width: 100%; height: 400px; border: 2px solid;" runat="server" />
    </div>
     <div class="col-12 d-flex mt-3 text-center">
        <h1 style="color: white; margin: 0 auto;">
            <asp:Label ID="lblColorName" runat="server" Text="Color"></asp:Label>
        </h1>
        <asp:LinkButton ID="lnkMic" CssClass="btn" Style="color: white !important;" OnClick="lnkMic_OnClick" runat="server"><i class="fas fa-volume-up fa-lg mt-3"></i></asp:LinkButton>
        <audio src="" id="audioLearn" runat="server" autoplay="autoplay"></audio>
        <%--/Audio/212332red.mp3--%>
    </div>
    <div class="col-12 mt-4" style="overflow-x: auto; overflow-y: hidden;">
        <asp:DataList ID="colorData" RepeatDirection="Horizontal" runat="server">
            <ItemTemplate>
                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("LearnId") %>'/>
                <asp:ImageButton ID="ImageButton1" Style="height: 75px; width: 75px; margin: 5px;" OnClick="ImageButton1_OnClick" ImageUrl='<%#Eval("Picture")%>' runat="server" />
            </ItemTemplate>
        </asp:DataList>
    </div> 
   <%-- <audio id="ntaudio" run style="display: none">
        <source src="/Audio/212332red.mp3" type="audio/mp3" />
    </audio>--%>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            setTimeout(function () {
                $('#ContentPlaceHolder1_audioLearn')[0].play();
            }, 300);
        });

    </script>
</asp:Content>
