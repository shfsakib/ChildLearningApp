<%@ Page Title="" Language="C#" MasterPageFile="~/app/app.Master" AutoEventWireup="true" CodeBehind="drawing-board.aspx.cs" Inherits="ChildLearningApp.app.drawing_board" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../MenuLink/canvas/sketch.css" rel="stylesheet" />
    <div class="col-12">
        <div class="field">
            <div class="row">
                <div class="col-12 pb-3">
                    <button type="button" onclick="undoLast()" class="btn btn-primary"><i class="fas fa-undo"></i></button>
                    <button type="button" onclick="clearCanvas()" class="btn btn-danger ml-2">Clear</button>
                </div>
                <div class="col-12 text-center">
                    <canvas id="canvas"></canvas>
                </div>
                <div class="col-12 pt-3 pb-2">
                    <input oninput="drawColor=this.value" type="color" class="color-picker">
                    <input type="range" min="2" max="100" oninput="drawWidth=this.value" value="2" style="position: relative; top: -10px;" class="pen-ramge">
                </div>
                <div class="col-12 pt-3 text-center d-none">
                    <div class="tools text-center">
                        <div onclick="changeColor(this)" class="color-field" style="background: black"></div>
                        <div onclick="changeColor(this)" class="color-field" style="background: red"></div>
                        <div onclick="changeColor(this)" class="color-field" style="background: blue"></div>
                        <div onclick="changeColor(this)" class="color-field" style="background: yellow"></div>
                        <div onclick="changeColor(this)" class="color-field" style="background: orange"></div>
                        <div onclick="changeColor(this)" class="color-field" style="background: green"></div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <script src="../MenuLink/canvas/sketch.js"></script>
</asp:Content>
