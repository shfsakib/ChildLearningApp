<%@ Page Title="" Language="C#" MasterPageFile="~/app/app.Master" AutoEventWireup="true" CodeBehind="alphabet-list.aspx.cs" Inherits="ChildLearningApp.app.alphabet_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-12" style="overflow-x: auto; overflow-y: hidden;">
        <asp:datalist id="alphabetData" repeatdirection="Horizontal" runat="server">
            <ItemTemplate>
               <asp:HiddenField ID="HiddenField2" runat="server" Value='<%#Eval("Letter") %>'/>
                <asp:LinkButton runat="server" id="btnLetter" CssClass="btn" style="font-size: 50px; font-weight: bold; color: white !important;" OnClick="btnLetter_OnClick"><%#Eval("Letter")%></asp:LinkButton>
            </ItemTemplate>
        </asp:datalist>
    </div>
    <div class="col-12">
        <asp:image id="imgWord" style="width: 100%; height: 350px; border: 2px solid; background: white;" runat="server" />
    </div>
    <audio src="" id="audioWord" runat="server" autoplay="autoplay"></audio>
    <div class="col-12 mt-2 text-center" style="overflow-x: auto; overflow-y: hidden;">
        <asp:datalist id="wordData" repeatdirection="Horizontal" repeatcolumns="4" runat="server">
            <ItemTemplate> 
                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("Word") %>'/>
                <asp:ImageButton ID="ImageButton1" Style="height: 75px; width: 75px; margin: 5px;border: 1px solid white;background: white;" OnClick="ImageButton1_OnClick" ImageUrl='<%#Eval("WordPicture")%>' runat="server" />
          </ItemTemplate>
        </asp:datalist>
    </div>
    <div class="col-12 text-center">
        <asp:image id="imgLetter" style="width: 200px; height: 200px; border: 2px solid; background: white;" runat="server" />
    </div>
    <div class="col-12 d-flex mt-2 mb-2 text-center">
        <h1 style="color: white; margin: 0 auto;">
            <asp:label id="lblLetter" runat="server" text="Letter"></asp:label>
        </h1>
        <asp:linkbutton id="lnkMic" cssclass="btn" style="color: white !important;" onclick="lnkMic_OnClick" runat="server"><i class="fas fa-volume-up fa-lg mt-3"></i></asp:linkbutton>
        <audio src="" id="audioLetter" runat="server" autoplay="autoplay"></audio>
        <%--/Audio/212332red.mp3--%>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            setTimeout(function () {
                $('#ContentPlaceHolder1_audioWord')[0].play();
            }, 300);
        });

    </script>
</asp:Content>
