<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="rhymes-list.aspx.cs" Inherits="ChildLearningApp.admin.rhymes_list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="card-title">
        <h3>Rhymes List</h3>
    </div>
    <hr />
    <div class="row">
        <div class="col-12">
            <div class="table-responsive" style="border: none;">
                <asp:GridView ID="gridRhymes" Width="100%" class="table table-hover table-bordered table-striped"  AutoGenerateColumns="False" ShowHeader="True" ShowHeaderWhenEmpty="True" EmptyDataText="No Rhymes Found" runat="server">
                    <Columns>
                        <asp:TemplateField HeaderText="Rhymes_Name">
                            <ItemTemplate>
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("RhymesId")%>' />
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("RhymeName")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Link">
                            <ItemTemplate>
                                <asp:Label ID="lblWord" runat="server" Text='<%#Eval("Link")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Type">
                            <ItemTemplate>
                                <asp:Label ID="lblType" runat="server" Text='<%#Eval("Type")%>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:LinkButton ID="lnkRemove" class="btn btn-danger" OnClick="lnkRemove_OnClick" runat="server"><i class="fas fa-trash-alt fa-lg"></i>&nbsp;Remove</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
