<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="matching-character-info.aspx.cs" Inherits="ChildLearningApp.admin.matching_character_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-title">
        <h3>Matching Character Question</h3>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-12">
            <div class="row mt-2">
                <div class="col-md-12">
                    Picture of Character:
                    <asp:FileUpload ID="filePic" accept=".png,.jpg,.jpeg" onchange="ImagePreview(this)" class="form-control" runat="server" />
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-md-12">
                    <br />
                    <asp:Image ID="imgPic" ImageUrl="/MenuLink/image.png" Style="width: 150px; height: 150px; border: 2px solid #495057; border-radius: 5px;" runat="server" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    Character Answer:
                    <asp:TextBox ID="txtAns" placeholder="A,B,1,2..." autocomplete="off" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    Question Type:
                   <asp:DropDownList ID="ddlQuestType" CssClass="form-control" runat="server">
                       <asp:ListItem>--SELECT--</asp:ListItem>
                       <asp:ListItem>Alphabet</asp:ListItem>
                       <asp:ListItem>Number</asp:ListItem>
                   </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <br />
                    <asp:Button ID="btnAdd" class="btn btn-primary btn-block" OnClick="btnAdd_OnClick" runat="server" Text="Add Character" />
                </div>
            </div>
        </div>
        <div class="col-5 mt-3">
            <asp:DropDownList ID="ddlSearch" AutoPostBack="True" OnSelectedIndexChanged="ddlSearch_OnSelectedIndexChanged" CssClass="form-control" runat="server">
                <asp:ListItem>Alphabet</asp:ListItem>
                <asp:ListItem>Number</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-12 mt-3">
            <div class="table-responsive" style="border: none;">
                <asp:GridView ID="gridFind" Width="100%" class="table table-hover table-bordered table-striped" AutoGenerateColumns="False" ShowHeader="True" ShowHeaderWhenEmpty="True" EmptyDataText="No Question Found" runat="server">
                    <Columns>
                        <asp:TemplateField HeaderText="Picture">
                            <ItemTemplate>
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("MatchId")%>' />
                                <asp:Image ID="imgPicture1" Width="100px" Height="100px" ImageUrl='<%#Eval("Picture")%>' runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Answer">
                            <ItemTemplate>
                                <asp:Label ID="lblAnswer" runat="server" Text='<%#Eval("Answer")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Type">
                            <ItemTemplate>
                                <asp:Label ID="lblType" runat="server" Text='<%#Eval("Type")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkRemove" class="btn btn-danger" OnClick="lnkRemove_OnClick" runat="server" ToolTip="Make Inactive"><i class="fas fa-trash-alt fa-lg"></i></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=imgPic.ClientID%>').prop('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }
    </script>
</asp:Content>
