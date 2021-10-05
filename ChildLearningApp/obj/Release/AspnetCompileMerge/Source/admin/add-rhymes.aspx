<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="add-rhymes.aspx.cs" Inherits="ChildLearningApp.admin.add_rhymes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-title">
        <h3>Add Rhymes</h3>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    Rhymes Name:
                    <asp:TextBox ID="txtName" placeholder="Twinkle Twinkle Little Star etc" autocomplete="off" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    Video Link:
                    <asp:TextBox ID="txtLink" placeholder="https://www.youtube.com/embed/yCjJyiqpAuU" autocomplete="off" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    Language Type:
                    <asp:DropDownList ID="ddlType" CssClass="form-control" runat="server">
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>Bangla</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <br />
                    <asp:Button ID="btnAdd" class="btn btn-primary" OnClick="btnAdd_OnClick" runat="server" Text="Add Rhymes" />
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

</asp:Content>
