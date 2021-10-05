<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="calculation-info.aspx.cs" Inherits="ChildLearningApp.admin.calculation_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-title">
        <h3>Calculation Info</h3>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    Question:
                    <asp:TextBox ID="txtQuestion" placeholder="1+2,3-2..." autocomplete="off" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-md-12">
                    Picture 1 of Number:
                    <asp:FileUpload ID="filePic" accept=".png,.jpg,.jpeg" onchange="ImagePreview(this)" class="form-control" runat="server" />
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-md-12">
                    <br />
                    <asp:Image ID="imgPic" ImageUrl="/MenuLink/image.png" Style="width: 150px; height: 150px; border: 2px solid #495057; border-radius: 5px;" runat="server" />
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-md-12">
                    Picture 2 of Number:
                    <asp:FileUpload ID="filePic2" accept=".png,.jpg,.jpeg" onchange="ImagePreviewWord(this)" class="form-control" runat="server" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <br />
                    <asp:Image ID="imgWord" ImageUrl="/MenuLink/image.png" Style="width: 150px; height: 150px; border: 2px solid #495057; border-radius: 5px;" runat="server" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    Option A:
                    <asp:TextBox ID="txtOptA" placeholder="Option A" autocomplete="off" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    Option B:
                    <asp:TextBox ID="txtOptB" placeholder="Option B" autocomplete="off" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    Answer:
                    <asp:TextBox ID="txtAns" placeholder="Enter answer" autocomplete="off" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    Language Type:
                   <asp:DropDownList ID="ddlType" CssClass="form-control" runat="server">
                       <asp:ListItem>--SELECT--</asp:ListItem>
                       <asp:ListItem>Bangla</asp:ListItem>
                       <asp:ListItem>English</asp:ListItem>
                   </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    Calculation Type:
                   <asp:DropDownList ID="ddlCalType" CssClass="form-control" runat="server">
                       <asp:ListItem>--SELECT--</asp:ListItem>
                       <asp:ListItem>Addition</asp:ListItem>
                       <asp:ListItem>Substraction</asp:ListItem>
                   </asp:DropDownList>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <br />
                    <asp:Button ID="btnAdd" class="btn btn-primary btn-block" OnClick="btnAdd_OnClick" runat="server" Text="Add" />
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-12 mt-5"> 
        </div>
        <div class="col-5 mt-3">
            <asp:DropDownList ID="ddlSearch" AutoPostBack="True" OnSelectedIndexChanged="ddlSearch_OnSelectedIndexChanged" CssClass="form-control" runat="server">
                <asp:ListItem>English</asp:ListItem>
                <asp:ListItem>Bangla</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-12 mt-3">
            <div class="table-responsive" style="border: none;">
                <asp:GridView ID="gridCal" Width="100%" class="table table-hover table-bordered table-striped" AutoGenerateColumns="False" ShowHeader="True" ShowHeaderWhenEmpty="True" EmptyDataText="No Calculation Found" runat="server">
                    <Columns>
                        <asp:TemplateField HeaderText="Question">
                            <ItemTemplate>
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("Id")%>' />
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("Question")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Picture1">
                            <ItemTemplate>
                                <asp:Image ID="imgPicture1" Width="100px" Height="100px" ImageUrl='<%#Eval("Picture1")%>' runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Picture2">
                            <ItemTemplate>
                                <asp:Image ID="imgPicture2" Width="100px" Height="100px" ImageUrl='<%#Eval("Picture2")%>' runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Option1">
                            <ItemTemplate>
                                <asp:Label ID="lblOption1" runat="server" Text='<%#Eval("Option1")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Option2">
                            <ItemTemplate>
                                <asp:Label ID="lblOption2" runat="server" Text='<%#Eval("Option2")%>'></asp:Label>
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
                        <asp:TemplateField HeaderText="CalType">
                            <ItemTemplate>
                                <asp:Label ID="lblCalType" runat="server" Text='<%#Eval("CalType")%>'></asp:Label>
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
            function ImagePreviewWord(input) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $('#<%=imgWord.ClientID%>').prop('src', e.target.result);
                    };
                    reader.readAsDataURL(input.files[0]);
                    }
                }
    </script>
</asp:Content>
