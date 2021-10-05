<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="find-question.aspx.cs" Inherits="ChildLearningApp.admin.add_find_question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-title">
        <h3>Find Question</h3>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    Question:
                    <asp:TextBox ID="txtQuestion" placeholder="Find ......" autocomplete="off" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-md-12">
                    Question Audio (*.mp3,*.wav,*.aac):
                    <asp:FileUpload ID="fileAudio" accept=".mp3,.wav,.aac" class="form-control" runat="server" />
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-md-12">
                    Picture of Answer:
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
                    Option 1:
                    <asp:FileUpload ID="fileOpt1" accept=".png,.jpg,.jpeg" onchange="ImagePreviewWord(this)" class="form-control" runat="server" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <br />
                    <asp:Image ID="imgWord" ImageUrl="/MenuLink/image.png" Style="width: 150px; height: 150px; border: 2px solid #495057; border-radius: 5px;" runat="server" />
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-md-12">
                    Option 2:
                    <asp:FileUpload ID="fileOpt2" accept=".png,.jpg,.jpeg" onchange="ImagePreviewOpt2(this)" class="form-control" runat="server" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <br />
                    <asp:Image ID="imgOpt2" ImageUrl="/MenuLink/image.png" Style="width: 150px; height: 150px; border: 2px solid #495057; border-radius: 5px;" runat="server" />
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-md-12">
                    Option 3:
                    <asp:FileUpload ID="fileOpt3" accept=".png,.jpg,.jpeg" onchange="ImagePreviewOpt3(this)" class="form-control" runat="server" />
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <br />
                    <asp:Image ID="imgOpt3" ImageUrl="/MenuLink/image.png" Style="width: 150px; height: 150px; border: 2px solid #495057; border-radius: 5px;" runat="server" />
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
                    Question Type:
                   <asp:DropDownList ID="ddlQuestType" CssClass="form-control" runat="server">
                       <asp:ListItem>--SELECT--</asp:ListItem>
                       <asp:ListItem>Animal</asp:ListItem>
                       <asp:ListItem>Number</asp:ListItem>
                   </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <br />
                    <asp:Button ID="btnAdd" class="btn btn-primary btn-block" OnClick="btnAdd_OnClick" runat="server" Text="Add Question" />
                </div>
            </div>
        </div>
        <div class="col-5 mt-3">
            <asp:DropDownList ID="ddlSearch" AutoPostBack="True" OnSelectedIndexChanged="ddlSearch_OnSelectedIndexChanged" CssClass="form-control" runat="server">
                <asp:ListItem>English</asp:ListItem>
                <asp:ListItem>Bangla</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-12 mt-3">
            <div class="table-responsive" style="border: none;">
                <asp:GridView ID="gridFind" Width="100%" class="table table-hover table-bordered table-striped" OnRowDataBound="gridFind_OnRowDataBound" AutoGenerateColumns="False" ShowHeader="True" ShowHeaderWhenEmpty="True" EmptyDataText="No Question Found" runat="server">
                    <Columns>
                        <asp:TemplateField HeaderText="Question">
                            <ItemTemplate>
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("FindId")%>' />
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("Question")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Answer">
                            <ItemTemplate>
                                <asp:Image ID="imgPicture1" Width="100px" Height="100px" ImageUrl='<%#Eval("AnswerPic")%>' runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Options">
                            <ItemTemplate>
                                <asp:DataList ID="dataOptions" RepeatDirection="Horizontal" RepeatColumns="2" runat="server">
                                    <ItemTemplate>
                                        <asp:Image ID="imgPicture10" Width="75px" Height="75px" ImageUrl='<%#Eval("Picture")%>' runat="server" />
                                    </ItemTemplate>
                                </asp:DataList>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Type">
                            <ItemTemplate>
                                <asp:Label ID="lblType" runat="server" Text='<%#Eval("LangType")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="CalType">
                            <ItemTemplate>
                                <asp:Label ID="lblCalType" runat="server" Text='<%#Eval("QuestionType")%>'></asp:Label>
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
                function ImagePreviewOpt2(input) {
                    if (input.files && input.files[0]) {
                        var reader = new FileReader();
                        reader.onload = function (e) {
                            $('#<%=imgOpt2.ClientID%>').prop('src', e.target.result);
                        };
                        reader.readAsDataURL(input.files[0]);
                        }
                    }
                    function ImagePreviewOpt3(input) {
                        if (input.files && input.files[0]) {
                            var reader = new FileReader();
                            reader.onload = function (e) {
                                $('#<%=imgOpt3.ClientID%>').prop('src', e.target.result);
                            };
                            reader.readAsDataURL(input.files[0]);
                            }
                        }
    </script>
</asp:Content>
