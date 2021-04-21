<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="update-password.aspx.cs" Inherits="ChildLearningApp.admin.update_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-12">
            <h3>Update Password</h3>
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">User List</div>
                <div class="col-md-6">
                    <asp:DropDownList ID="ddlUser" class="form-control" runat="server"></asp:DropDownList>
                </div>
                <div class="col-md-2"></div>
            </div>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">New Password</div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtnew" class="form-control" placeholder="New Password" TextMode="Password" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-2"></div>
            </div>
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">Confirm Password</div>
                <div class="col-md-6">
                    <asp:TextBox ID="txtConfirmPass" class="form-control" placeholder="Confirm Password" TextMode="Password" runat="server"></asp:TextBox>
                </div>
                <div class="col-md-2"></div>
            </div>

            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="btnUpdate" CssClass="btn btn-primary mt2" Style="margin-top: 5px !important;" runat="server" OnClick="btnUpdate_OnClick" Text="Change Password" />
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>
    </div>
</asp:Content>
