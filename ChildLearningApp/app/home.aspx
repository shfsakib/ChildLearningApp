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
                                    <%HttpCookie langCookie = HttpContext.Current.Request.Cookies["lang"];
                                        if (langCookie != null && langCookie["type"] == "Eng")
                                        { %>
                                    <asp:Button ID="btnLang" class="btn btn-dark" OnClick="btnLang_OnClick" Style="position: absolute; right: 20px; top: 20px;" runat="server" Text="Eng" />
                                    <% }
                                        else
                                        { %>
                                    <asp:Button ID="btnBn" class="btn btn-dark" OnClick="btnBn_OnClick" Style="position: absolute; right: 20px; top: 20px;" runat="server" Text="Bn" />

                                    <% } %>
                                </div>
                            </div>
                            <% if (langCookie["type"] == "Eng")
                                { %>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="btnAlpha" OnClick="btnAlpha_OnClick" ImageUrl="../MenuLink/app-file/alpha.png" class="button-size bg-orange" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Alphabet</h4>
                                </div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="btnNumeric" OnClick="btnNumeric_OnClick" ImageUrl="../MenuLink/app-file/123.png" class="button-size bg-pink" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Numbers</h4>
                                </div>
                                <div class="col-1"></div>
                            </div>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="imgAddtion" OnClick="imgAddtion_OnClick" ImageUrl="../MenuLink/app-file/addition.png" class="button-size bg-lime" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Addition</h4>
                                </div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="imgSubstration" OnClick="imgSubstration_OnClick" ImageUrl="../MenuLink/app-file/substract.png" class="button-size bg-green" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Subtraction</h4>
                                </div>
                                <div class="col-1"></div>
                            </div>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="imgColor" OnClick="imgColor_OnClick" ImageUrl="../MenuLink/app-file/color.png" class="button-size bg-blue" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Colors</h4>
                                </div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="imgAnimal" OnClick="imgAnimal_OnClick" ImageUrl="../MenuLink/app-file/animal.png" class="button-size bg-yellow" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Animal</h4>
                                </div>
                                <div class="col-1"></div>
                            </div>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="imgMonth" OnClick="imgMonth_OnClick" ImageUrl="../MenuLink/app-file/month.png" class="button-size bg-lime" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Months</h4>
                                </div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="imgWeek" OnClick="imgWeek_OnClick" ImageUrl="../MenuLink/app-file/week.png" class="button-size bg-red" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Weeks</h4>
                                </div>
                                <div class="col-1"></div>
                            </div>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="imgShape" OnClick="imgShape_OnClick" ImageUrl="../MenuLink/app-file/shapes.png" class="button-size bg-green" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Shapes</h4>
                                </div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="Imagebutton1" OnClick="imgFindAnimal_OnClick" ImageUrl="../MenuLink/app-file/findAnimal.png" class="button-size bg-violet" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Find Animal</h4>
                                </div>
                                <div class="col-1"></div>
                            </div>

                            <div class="row">
                                <div class="col-1"></div>

                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="imgFindNum" OnClick="imgFindNum_OnClick" ImageUrl="../MenuLink/app-file/number.png" class="button-size bg-yellow" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Find Number</h4>
                                </div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="ImageButton3" OnClick="DrawBoard_OnClick" ImageUrl="../MenuLink/app-file/draw.png" class="button-size bg-orange" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Drawing Board</h4>
                                </div>
                                <div class="col-1"></div>
                            </div>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="imgAlphaMatcher" OnClick="imgAlphaMatcher_OnClick" ImageUrl="../MenuLink/app-file/alphaMatcher.png" class="button-size bg-lime" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Draw Alphabet</h4>
                                </div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="imgNumberMatcher" OnClick="imgNumberMatcher_OnClick" ImageUrl="../MenuLink/app-file/findNumber.png" class="button-size bg-blue" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Draw Number</h4>
                                </div>
                                <div class="col-1"></div>
                            </div>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="btnRhymes" OnClick="btnRhymes_OnClick" ImageUrl="../MenuLink/app-file/rhymes.png" class="button-size bg-red" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Rhymes</h4>
                                </div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="btnQuiz" OnClick="btnQuiz_OnClick" ImageUrl="../MenuLink/app-file/quiz.png" class="button-size bg-yellow" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">Quiz</h4>
                                </div>
                                <div class="col-1"></div>
                            </div>
                            <% }
                                else if (langCookie["type"] == "Bn")
                                { %>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="imgBanglaVowel" OnClick="imgBanglaVowel_OnClick" ImageUrl="../MenuLink/app-file/bangla vowel.png" class="button-size bg-green" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">স্বরবর্ণ</h4>
                                </div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="ImageButton2" OnClick="ImageButton2_OnClick" ImageUrl="../MenuLink/app-file/bangla consonent.png" class="button-size bg-blue" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">ব্যঞ্জনবর্ণ</h4>
                                </div>
                                <div class="col-1"></div>
                            </div>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="ImageButton4" OnClick="imgBanglaNumber_OnClick" ImageUrl="../MenuLink/app-file/banglanumber.png" class="button-size bg-red" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">অংক</h4>
                                </div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="imgBanglaAddition" OnClick="imgBanglaAddition_OnClick" ImageUrl="../MenuLink/app-file/bangla-add.png" class="button-size bg-yellow" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">যোগ</h4>
                                </div>
                                <div class="col-1"></div>
                            </div>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="imgBanglaSubstraction" OnClick="imgBanglaSubstraction_OnClick" ImageUrl="../MenuLink/app-file/banglasubstract.png" class="button-size bg-lime" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">বিয়োগ</h4>
                                </div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="imgBanglaColor" OnClick="imgBanglaColor_OnClick" ImageUrl="../MenuLink/app-file/color.png" class="button-size bg-pink" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">রঙের নাম
                                    </h4>
                                </div>
                                <div class="col-1"></div>
                            </div>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="imgBanglaAnimal" OnClick="imgBanglaAnimal_OnClick" ImageUrl="../MenuLink/app-file/animal.png" class="button-size bg-violet" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">প্রাণীর নাম</h4>
                                </div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="imgBanglaMonth" OnClick="imgBanglaMonth_OnClick" ImageUrl="../MenuLink/app-file/banglaMonth.png" class="button-size bg-blue" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">মাসের নাম
                                    </h4>
                                </div>
                                <div class="col-1"></div>
                            </div>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="imgBanglaWeek" OnClick="imgBanglaWeek_OnClick" ImageUrl="../MenuLink/app-file/banglaweek.png" class="button-size bg-red" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">সপ্তাহের নাম</h4>
                                </div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="imgBanglaShape" OnClick="imgBanglaShape_OnClick" ImageUrl="../MenuLink/app-file/shapes.png" class="button-size bg-orange" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">আকৃতি
                                    </h4>
                                </div>
                                <div class="col-1"></div>
                            </div>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="Imagebutton5" OnClick="imgBanglaAnimalFind_OnClick" ImageUrl="../MenuLink/app-file/findAnimal.png" class="button-size bg-blue" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">প্রাণী খুঁজা
                                    </h4>
                                </div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="imgBanglaNumberFind" OnClick="imgBanglaNumberFind_OnClick" ImageUrl="../MenuLink/app-file/bangla-number.png" class="button-size bg-green" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">অংক খুঁজা
                                    </h4>
                                </div>
                                <div class="col-1"></div>
                            </div>
                            <div class="row">
                                <div class="col-1"></div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="imgBanglaDraw" OnClick="imgBanglaDraw_OnClick" ImageUrl="../MenuLink/app-file/drawing.png" class="button-size bg-violet" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">আঁকা
                                    </h4>
                                </div>
                                <div class="col-5 button-pad">
                                    <asp:ImageButton ID="imgBanglaRhymes" OnClick="imgBanglaRhymes_OnClick" ImageUrl="../MenuLink/app-file/bangla_rhymes-btn.png" class="button-size bg-yellow" runat="server" />
                                    <h4 style="font-family: comic sans ms; color: white; margin: 0 auto;">ছড়া
                                    </h4>
                                </div>
                                <div class="col-1"></div>
                            </div>
                            <% } %>
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
        $(window).resize(function () {
            if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
                //
            } else {
                alert('You are not allowed to open this app in browser');
                location.href = 'http://google.it';
            }
        });
    </script>
</body>
</html>
