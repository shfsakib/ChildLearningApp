<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="add-level.aspx.cs" Inherits="ChildLearningApp.admin.add_level" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="card-title">
        <h3>Add Level</h3>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    Level Name:
                    <asp:TextBox ID="txtLevel" placeholder="Level 1, Level 2 etc" autocomplete="off" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
             
            <div class="row">
                <div class="col-md-12">
                    <br />
                    <asp:Button ID="btnAdd" class="btn btn-primary" OnClick="btnAdd_OnClick" runat="server" Text="Add Level" />
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-12" style="margin-top: 10px;">
             <div class="table-responsive" style="border: none;">
                <asp:GridView ID="gridLevel" Width="100%" class="table table-hover table-bordered table-striped"  AutoGenerateColumns="False" ShowHeader="True" ShowHeaderWhenEmpty="True" EmptyDataText="No Level Found" runat="server">
                    <Columns>
                        <asp:TemplateField HeaderText="Level_Name">
                            <ItemTemplate>
                                <asp:HiddenField ID="HiddenField1" runat="server" Value='<%#Eval("LevelId")%>' />
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("LevelName")%>'></asp:Label>
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
