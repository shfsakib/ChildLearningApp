<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rhymes.aspx.cs" Inherits="ChildLearningApp.app.rhymes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rhymes</title>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="icon" href="../MenuLink/child.png" type="image/png" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <link rel="stylesheet" href="../MenuLink/vendors/font_awesome/css/all.min.css" />
    <link href="../MenuLink/app-file/app.css" rel="stylesheet" />
</head>
<body class="bg">
    <form id="form1" runat="server">
        <div class="row">

            <div class="col-12">
                <asp:Panel ID="panelRhymes" runat="server">
                    <div class="row">
                        <div class="col-12 text-left p-3 pl-4">
                            <a class="btn btn-primary" href="/app/home.aspx"><i class="fas fa-caret-left"></i></a>
                        </div>
                    </div>
                    <div class="btn-dark col-12 text-center p-3 mb-3">
                        <h3>Rhymes</h3>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="table-responsive" style="border: none; width: 100%; overflow-x: hidden;">
                                <asp:GridView ID="gridRhyemes" Width="100%" class="table table-hover table-bordered" Style="background: rgba(0,0,0,0.7); color: white!important" AutoGenerateColumns="False" ShowHeader="False" ShowHeaderWhenEmpty="True" EmptyDataText="No Rhymes Found" runat="server">
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
            </div>
        </div>
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
    </script>
</body>
</html>
