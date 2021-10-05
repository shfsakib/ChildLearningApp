<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quizes.aspx.cs" Inherits="ChildLearningApp.app.quizes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quiz</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="icon" href="../MenuLink/child.png" type="image/png" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <link rel="stylesheet" href="../MenuLink/vendors/font_awesome/css/all.min.css" />
    <link href="../MenuLink/app-file/app.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-12">
                <asp:Panel ID="panelQuiz" runat="server" Style="height: 100vh; background: url('../MenuLink/quiz back.jpg'); background-repeat: no-repeat; background-size: 100% 100%;">
                     <div class="row">
                        <div class="col-12 text-left p-3 pl-4">
                            <a class="btn btn-primary" href="/app/home.aspx"><i class="fas fa-caret-left"></i></a>
                        </div>
                    </div> 
                    <div class="row">
                        <div class="col-12" style="padding: 20px 30px;">
                            <span style="font-size: 16px; font-family: comic sans ms; color: white; position: absolute; right: 25px;">High Score:
                                <asp:Label ID="lblHigh" runat="server" Text="10"></asp:Label></span>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 text-right" style="padding: 20px 30px;">
                            <span style="font-size: 16px; font-family: comic sans ms; color: white; top: 0; position: relative;">Label:
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
            </div>
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
                    <asp:LinkButton ID="lnkOk" CssClass="btn btn-primary" OnClick="lnkOk_OnClick" runat="server">Ok</asp:LinkButton>
                </div>
            </div>
        </div>
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
     <script>
        $(document).ready(function () {
            if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
                //
            } else {
                alert('You are not allowed to open this app in browser');
                location.href = 'http://google.it';
            }
        });
        function pageLoad() {
            if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
                //
            } else {
                alert('You are not allowed to open this app in browser');
                location.href = 'http://google.it';
            }
        }
    </script>
</body>
</html>
