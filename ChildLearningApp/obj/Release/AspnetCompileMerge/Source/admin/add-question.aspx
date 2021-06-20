<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="add-question.aspx.cs" Inherits="ChildLearningApp.admin.add_question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card-title">
        <h3>Add Question</h3>
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
                    <asp:Button ID="btnAdd" class="btn btn-primary" OnClick="btnAdd_OnClick" runat="server" Text="Add Question" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
