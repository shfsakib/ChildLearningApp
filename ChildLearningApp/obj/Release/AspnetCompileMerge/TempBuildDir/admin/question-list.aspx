<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="question-list.aspx.cs" Inherits="ChildLearningApp.admin.question_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-title">
        <h3>Question List</h3>
    </div>
    <hr />
    <div class="row">
        <div class="col-12">
            <div class="table-responsive" style="border: none;">
                <asp:GridView ID="gridQuestion" Width="100%" class="table table-hover table-bordered table-striped" OnPageIndexChanging="gridQuestion_OnPageIndexChanging" AllowPaging="True" PageSize="30" AutoGenerateColumns="False" ShowHeader="True" ShowHeaderWhenEmpty="True" EmptyDataText="No Question Found" runat="server">
                    <Columns>
                        <asp:TemplateField HeaderText="Level">
                            <ItemTemplate>
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("QuestionId")%>' />
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("LevelName")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Question">
                            <ItemTemplate>
                                <asp:Label ID="lblWord" runat="server" Text='<%#Eval("Question")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="OptionA">
                            <ItemTemplate>
                                <asp:Label ID="lblWord1" runat="server" Text='<%#Eval("OptionA")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="OptionB">
                            <ItemTemplate>
                                <asp:Label ID="lblWord2" runat="server" Text='<%#Eval("OptionB")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Answer">
                            <ItemTemplate>
                                <asp:Label ID="lblWord3" runat="server" Text='<%#Eval("Answer")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Point">
                            <ItemTemplate>
                                <asp:Label ID="lblWord4" runat="server" Text='<%#Eval("Point")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <a class="btn btn-primary" runat="server" href='<%#"/admin/update-question.aspx?id="+Eval("QuestionId")%>'><i class="fas fa-edit fa-lg"></i></a>
                                <asp:LinkButton ID="lnkRemove" class="btn btn-danger mt2" OnClick="lnkRemove_OnClick" runat="server"><i class="fas fa-trash-alt fa-lg"></i></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
