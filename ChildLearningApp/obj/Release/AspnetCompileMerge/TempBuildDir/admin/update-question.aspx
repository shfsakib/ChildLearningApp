<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="update-question.aspx.cs" Inherits="ChildLearningApp.admin.update_question" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-title">
        <h3>Update Question</h3>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-12">
                    Choose Level:
                    <asp:DropDownList ID="ddlLevel" class="form-control" runat="server"></asp:DropDownList>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    Question:
                    <asp:TextBox ID="txtQuestion" placeholder="Enter your question" autocomplete="off" class="form-control" runat="server"></asp:TextBox>
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
                    Enter Point:
                    <asp:TextBox ID="txtPoint" placeholder="Enter point" autocomplete="off" Text="1" TextMode="Number" class="form-control" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <br />
                    <asp:Button ID="btnUpdate" class="btn btn-primary" OnClick="btnUpdate_OnClick" runat="server" Text="Update Question" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
