<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="ChildLearningApp.app.home" Async="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="icon" href="../MenuLink/child.png" type="image/png" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <link rel="stylesheet" href="../MenuLink/vendors/font_awesome/css/all.min.css" />
    <link href="../MenuLink/app-file/app.css" rel="stylesheet" />
</head>
<body style="overflow-x: hidden;" class="bg">
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

                <asp:Panel ID="Panel1" runat="server">
                    <div class="row">
                        <div class="col-12">
                            <div class="row" style="height: 80px; text-align: center">
                                <div class="col-12">
                                    <img src="../MenuLink/child.png" style="height: 70px; width: 70px;" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="btnAlpha" OnClick="btnAlpha_OnClick" ImageUrl="../MenuLink/app-file/alpha.png" class="button-size-quiz" runat="server" />
                                </div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="btnNumeric" OnClick="btnNumeric_OnClick" ImageUrl="../MenuLink/app-file/numeric.png" class="button-size-alpha" runat="server" />
                                </div>
                                <div class="col-1"></div>
                            </div>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="btnRhymes" ImageUrl="../MenuLink/app-file/rhymes.png" class="button-size-rhyme" runat="server" />
                                </div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="btnQuiz" ImageUrl="../MenuLink/app-file/quiz.png" class="button-size-num" runat="server" />
                                </div>
                                <div class="col-1"></div>

                            </div>
                        </div>
                        <a href="#" class="button-mic" id="btnMic" runat="server" OnServerClick="btnMic_OnServerClick"><i class="fas fa-volume-up"></i></a>
                        <a href="#" class="button-mute" id="btnMute" runat="server" OnServerClick="btnMute_OnServerClick" Visible="False"><i class="fas fa-volume-mute"></i></a>
                    </div>
                </asp:Panel>

                <asp:Panel ID="panelWord" runat="server" Visible="False">
                    <div class="row">
                        <div class="col-12" style="padding: 15px; margin-left: 15px;">
                            <asp:LinkButton ID="lnkHome" class="btn btn-primary" OnClick="lnkHome_OnClick" runat="server"><i class="fas fa-home fa-lg"></i></asp:LinkButton>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="table-responsive" style="border: none; width: 100%; overflow-x: hidden;">
                                <asp:GridView ID="gridAlpha" Width="100%" class="table table-hover table-bordered" Style="background: transparent;color: white!important" AutoGenerateColumns="False" ShowHeader="False" ShowHeaderWhenEmpty="True" EmptyDataText="No Alphabet Found" runat="server">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Alphabet">
                                            <ItemTemplate>
                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("AlphaId")%>' />
                                                <asp:Label ID="Label1" runat="server" Style="font-size: 50px; font-weight: Bold;" Text='<%#Eval("Alphabet")%>'></asp:Label>
                                                <div class="row">
                                                    <div class="col-12 text-center">
                                                        <asp:Image ID="Image11" Width="250px" Height="200px" ImageUrl='<%#Eval("Picture")%>' runat="server" />
                                                    </div>
                                                    <div class="col-12 text-center">
                                                        <asp:Label ID="lblWord" Style="font-size: 24px;font-weight: bold;top: 5px;position: relative" runat="server" Text='<%#Eval("Word")%>'></asp:Label>
                                                        <span>
                                                            <asp:LinkButton runat="server" class="btn btn-success" style="border-radius: 50%;" ID="btnSpeakWord" OnClick="btnSpeakWord_OnClick" title="Speak"><i class="fas fa-volume-up"></i></asp:LinkButton></span>
                                                           </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="panelNumber" runat="server" Visible="False">
                    <div class="row">
                        <div class="col-12" style="padding: 15px; margin-left: 15px;">
                            <asp:LinkButton ID="lnkHomeNum" class="btn btn-primary" OnClick="lnkHome_OnClick" runat="server"><i class="fas fa-home fa-lg"></i></asp:LinkButton>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="table-responsive" style="border: none; width: 100%; overflow-x: hidden;">
                                <asp:GridView ID="gridNum" Width="100%" class="table table-hover table-bordered" Style="background: transparent;color: white!important" AutoGenerateColumns="False" ShowHeader="False" ShowHeaderWhenEmpty="True" EmptyDataText="No Number Found" runat="server">
                                    <Columns>
                                        <asp:TemplateField HeaderText="Alphabet">
                                            <ItemTemplate>
                                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("NumId")%>' />
                                                <asp:Label ID="Label1" runat="server" Style="font-size: 50px; font-weight: Bold;" Text='<%#Eval("Number")%>'></asp:Label>
                                                <div class="row">
                                                    <div class="col-12 text-center">
                                                        <asp:Image ID="Image11" Width="250px" Height="200px" ImageUrl='<%#Eval("Picture")%>' runat="server" />
                                                    </div>
                                                    <div class="col-12 text-center">
                                                        <asp:Label ID="lblWord" Style="font-size: 24px;font-weight: bold;top: 5px;position: relative" runat="server" Text='<%#Eval("Word")%>'></asp:Label>
                                                        <span>
                                                            <asp:LinkButton runat="server" class="btn btn-success" style="border-radius: 50%;" OnClick="btnSpeak_OnClick" ID="btnSpeak" title="Speak"><i class="fas fa-volume-up"></i></asp:LinkButton></span>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </asp:Panel>
                <audio src="" id="audioBg" runat="server" autoplay></audio>
            </ContentTemplate>
            <Triggers>
                <asp:PostBackTrigger ControlID="btnAlpha"/>
            </Triggers>
        </asp:UpdatePanel>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <script>
        $(document).ready(function () {
            //var mySound = new Audio('../MenuLink/app-file/bg-music.mp3');

            //mySound.play();
            //mySound.loop = true;
            //$('#btnMute').click(function () {
            //    $("#btnMute").css("display", "none");
            //    $("#btnMic").css("display", "block"); 
            //}); $('#btnMic').click(function () {
            //    $("#btnMic").css("display", "none");
            //    $("#btnMute").css("display", "block"); 
            //});
        });
        function pageLoad() {
            //var mySound = new Audio('../MenuLink/app-file/bg-music.mp3');
            var mySound = document.getElementById("audioBg");
            //mySound.play();
            //mySound.loop = true;
            $('#btnMute').click(function () {
                $("#btnMute").css("display", "none");
                $("#btnMic").css("display", "block");
                mySound.play();
            }); $('#btnMic').click(function () {
                $("#btnMic").css("display", "none");
                $("#btnMute").css("display", "block");
                mySound.pause();
            });
        }
    </script>
</body>
</html>
