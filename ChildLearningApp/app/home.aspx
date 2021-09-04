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
                 
                <audio src="" id="audioGrid" runat="server" autoplay></audio>
                <audio src="" id="audioBg" runat="server" autoplay loop="loop"></audio>
            </ContentTemplate>
            <Triggers>
                <asp:PostBackTrigger ControlID="btnAlpha" />
            </Triggers>
        </asp:UpdatePanel>

    </form>
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    
</body>
</html>
