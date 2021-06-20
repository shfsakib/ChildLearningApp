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
                                    <asp:ImageButton ID="btnRhymes" OnClick="btnRhymes_OnClick" ImageUrl="../MenuLink/app-file/rhymes.png" class="button-size-rhyme" runat="server" />
                                </div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="btnQuiz" OnClick="btnQuiz_OnClick" ImageUrl="../MenuLink/app-file/quiz.png" class="button-size-num" runat="server" />
                                </div>
                                <div class="col-1"></div>

                            </div>
                        </div>
                        <a href="#" class="button-mic" id="btnMic" runat="server" onserverclick="btnMic_OnServerClick"><i class="fas fa-volume-up"></i></a>
                        <a href="#" class="button-mute" id="btnMute" runat="server" onserverclick="btnMute_OnServerClick" visible="False"><i class="fas fa-volume-mute"></i></a>
                    </div>
                    <%--<iframe width="560" height="315" src="https://www.youtube.com/embed/yCjJyiqpAuU" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>--%>
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
                                <asp:GridView ID="gridAlpha" Width="100%" class="table table-hover table-bordered" Style="background: transparent; color: white!important" AutoGenerateColumns="False" ShowHeader="False" ShowHeaderWhenEmpty="True" EmptyDataText="No Alphabet Found" runat="server">
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
                                                        <asp:Label ID="lblWord" Style="font-size: 24px; font-weight: bold; top: 5px; position: relative" runat="server" Text='<%#Eval("Word")%>'></asp:Label>
                                                        <span>
                                                            <asp:LinkButton runat="server" class="btn btn-success" Style="border-radius: 50%;" ID="btnSpeakWord" OnClick="btnSpeakWord_OnClick" title="Speak"><i class="fas fa-volume-up"></i></asp:LinkButton></span>
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
                                <asp:GridView ID="gridNum" Width="100%" class="table table-hover table-bordered" Style="background: transparent; color: white!important" AutoGenerateColumns="False" ShowHeader="False" ShowHeaderWhenEmpty="True" EmptyDataText="No Number Found" runat="server">
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
                                                        <asp:Label ID="lblNum" Style="font-size: 24px; font-weight: bold; top: 5px; position: relative" runat="server" Text='<%#Eval("Word")%>'></asp:Label>
                                                        <span>
                                                            <asp:LinkButton runat="server" class="btn btn-success" Style="border-radius: 50%;" OnClick="btnSpeak_OnClick" ID="btnSpeak" title="Speak"><i class="fas fa-volume-up"></i></asp:LinkButton></span>
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
                <asp:Panel ID="panelRhymes" runat="server" Visible="False">
                    <div class="row">
                        <div class="col-12" style="padding: 15px; margin-left: 15px;">
                            <asp:LinkButton ID="lnkHomeRhyme" class="btn btn-primary" OnClick="lnkHome_OnClick" runat="server"><i class="fas fa-home fa-lg"></i></asp:LinkButton>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="table-responsive" style="border: none; width: 100%; overflow-x: hidden;">
                                <asp:GridView ID="gridRhyemes" Width="100%" class="table table-hover table-bordered" Style="background: rgba(0,0,0,0.7); color: white!important" AutoGenerateColumns="False" ShowHeader="False" ShowHeaderWhenEmpty="True" EmptyDataText="No Number Found" runat="server">
                                    <Columns>
                                        <asp:TemplateField HeaderText="">
                                            <ItemTemplate>
                                                <div class="row">
                                                    <a href="#" class="col-12" runat="server" id="btnRhyme" onserverclick="btnRhyme_OnServerClick" style="text-decoration: none; color: white;">
                                                        <div class="col-12 text-center">
                                                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("RhymesId")%>' />
                                                            <asp:HiddenField ID="link" runat="server" Value='<%#Eval("Link")%>' />
                                                            <asp:Label ID="Label1" runat="server" Style="font-size: 25px; font-weight: Bold; font-family: comic sans ms;" Text='<%#Eval("RhymeName")%>'></asp:Label>
                                                        </div>
                                                    </a>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="panelVideo" runat="server" Visible="False">
                    <div class="row">
                        <div class="col-12" style="padding: 15px; margin-left: 15px;">
                            <asp:LinkButton ID="lnkBack" class="btn btn-primary" OnClick="lnkBack_OnClick" runat="server"><i class="fas fa-caret-left fa-lg"></i></asp:LinkButton>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12" style="padding: 10px 20px;">
                            <iframe width="100%" height="350px" runat="server" id="videoFrame" frameborder="0" allow="accelerometer; autoplay; clipboard-write;  encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </div>
                    </div>
                </asp:Panel>
                <asp:Panel ID="panelQuiz" runat="server" Visible="False" Style="height: 100vh; background: url('../MenuLink/quiz back.jpg'); background-repeat: no-repeat; background-size: 100% 100%;">
                    <div class="row">
                        <div class="col-12" style="padding: 20px 30px;">
                            <asp:LinkButton ID="LinkButton1" class="btn btn-primary" OnClick="lnkHome_OnClick" runat="server"><i class="fas fa-home fa-lg"></i></asp:LinkButton>
                            <span style="font-size: 16px; font-family: comic sans ms; color: white; position: absolute; right: 25px;">High Score:
                                <asp:Label ID="lblHigh" runat="server" Text="10"></asp:Label></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 text-right" style="padding: 20px 30px;">
                            <span style="font-size: 16px; font-family: comic sans ms; color: white; top: -46px; position: relative;">Label:
                                <asp:Label ID="lblLevel" runat="server" Text="0"></asp:Label>
                            </span>
                            <br />
                            <span style="font-size: 16px; font-family: comic sans ms; color: white; top: -40px; position: relative;">Your Score: 
                            <asp:Label ID="lblScore" runat="server" Text="0"></asp:Label></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 text-center" style="padding: 20px 30px; color: white; font-size: 30px; font-weight: bold;">
                            <asp:Label ID="lblQuestion" runat="server" Style="word-wrap: break-word; white-space: pre-line;" Text="Your question"></asp:Label>
                        </div>
                    </div>
                    <div class="row" style="padding: 30px;">
                        <asp:LinkButton ID="lnkA" OnClick="lnkA_OnClick" CssClass="btn col-12" Style="background: white; border-radius: 15px; color: black; height: 42px; font-size: 20px; font-weight: 600;" runat="server">dsasas</asp:LinkButton>
                        <asp:LinkButton ID="lnkB" OnClick="lnkB_OnClick" CssClass="btn col-12" Style="background: white; border-radius: 15px; color: black; height: 42px; margin-top: 10px; font-size: 20px; font-weight: 600;" runat="server">dsds</asp:LinkButton>
                        <asp:HiddenField ID="hiddenAns" runat="server" />
                        <asp:HiddenField ID="hiddenPoint" runat="server" />
                        <audio src="" id="audioQuiz" runat="server" autoplay></audio>

                    </div>
                </asp:Panel>
                <div class="alertModalBg" id="alertModalBg" runat="server" visible="False">
                    <div class="successAlertModal">
                        <div class="col-12 text-center pt-3">
                            <img class="alertAnim" id="alertImg" runat="server" src="/MenuLink/app-file/success.gif" />
                        </div>
                        <div class="col-12 text-center p-3">
                            <h3 class="alertMessage" id="alertMsg" runat="server"></h3>
                        </div>
                        <div class="col-12 text-center p-3">
                            <asp:LinkButton ID="lnkOk" OnClick="lnkOk_OnClick" CssClass="btn btn-primary" runat="server">Ok</asp:LinkButton>
                        </div>
                    </div>
                </div>
                <audio src="" id="audioBg" runat="server" autoplay loop="loop"></audio>
            </ContentTemplate>
            <Triggers>
                <asp:PostBackTrigger ControlID="btnAlpha" />
            </Triggers>
        </asp:UpdatePanel>

    </form>
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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
            //$('.alertModalBg').click(function () {
            //    //$('.alertModalBg').css("display", "none");
            //    $('.successAlertModal').css("top", "-20%");
            //    alert();
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
