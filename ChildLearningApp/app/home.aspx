<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="ChildLearningApp.app.home" %>

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
                            <asp:Image ID="btnAlpha" ImageUrl="../MenuLink/app-file/alpha.png" class="button-size-quiz" runat="server" />
                        </div>
                        <div class="col-5 button-pad">
                            <asp:Image ID="btnNumeric" ImageUrl="../MenuLink/app-file/numeric.png" class="button-size-alpha" runat="server" />
                        </div>
                        <div class="col-1"></div>
                    </div>
                    <a href="#" id="test">test</a>
                    <a href="#" id="test2">test</a>

                    <div class="row">
                        <div class="col-1"></div>
                        <div class="col-5 button-pad">
                            <asp:Image ID="btnRhymes" ImageUrl="../MenuLink/app-file/rhymes.png" class="button-size-rhyme" runat="server" />
                        </div>
                        <div class="col-5 button-pad">
                            <asp:Image ID="btnQuiz" ImageUrl="../MenuLink/app-file/quiz.png" class="button-size-num" runat="server" />
                        </div>
                        <div class="col-1"></div>

                    </div>

                </div>
                <a href="#" class="button-mic" id="btnMic"><i class="fas fa-volume-up"></i></a>
                <a href="#" class="button-mute" id="btnMute" style="display: none;"><i class="fas fa-volume-mute"></i></a>
            </div>
        </asp:Panel>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <script>
        $(document).ready(function () {
            var mySound = new Audio('../MenuLink/app-file/bg-music.mp3');
            mySound.play();
            $('#btnMute').click(function () {
                $("#btnMute").css("display", "none");
                $("#btnMic").css("display", "block");
                mySound.play();
            }); $('#btnMic').click(function () {
                $("#btnMic").css("display", "none");
                $("#btnMute").css("display", "block");
                mySound.pause();
            });
        });

    </script>
</body>
</html>
