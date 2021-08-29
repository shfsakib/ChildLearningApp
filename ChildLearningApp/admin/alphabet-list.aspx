<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="alphabet-list.aspx.cs" Inherits="ChildLearningApp.admin.alphabet_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-title">
        <h3>Alphabet List</h3>
    </div>
    <hr />
    <div class="row">
        <div class="col-12">
            <div class="table-responsive" style="border: none;">
                <asp:GridView ID="gridAlpha" Width="100%" class="table table-hover table-bordered table-striped" AutoGenerateColumns="False" ShowHeader="True" ShowHeaderWhenEmpty="True" EmptyDataText="No Alphabet Found" runat="server">
                    <Columns>
                        <asp:TemplateField HeaderText="Alphabet">
                            <ItemTemplate>
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("LetterId")%>' />
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("Letter")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Alphabet_Audio">
                            <ItemTemplate>
                                <asp:Label ID="lblaAudio" runat="server" Text='<%#Eval("LetterAudio")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Alphabet_Picture">
                            <ItemTemplate>
                                <asp:Image ID="imgLetter" Width="100px" Height="100px" ImageUrl='<%#Eval("LetterPicture")%>' runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Word">
                            <ItemTemplate>
                                <asp:Label ID="lblWord" runat="server" Text='<%#Eval("Word")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Word_Audio">
                            <ItemTemplate>
                                <asp:Label ID="lblAudio" runat="server" Text='<%#Eval("WordAudio")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Word_Picture">
                            <ItemTemplate>
                                <asp:Image ID="Image11" Width="100px" Height="100px" ImageUrl='<%#Eval("WordPicture")%>' runat="server" />
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
</asp:Content>
