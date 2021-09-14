<%@ Page Title="" Language="C#" MasterPageFile="~/app/app.Master" AutoEventWireup="true" CodeBehind="alphabet-matcher.aspx.cs" Inherits="ChildLearningApp.app.alphabet_matcher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="lblAlpha" Style="display: none;" runat="server" Text="A"></asp:Label>
    <%--<label id="lblAlpha" class="lblAlpha">Apple</label>--%>
    <h3 class="loadText" id="loadText" style="display: none; color: white; margin: 0 auto; padding: 0 15px;">Analyzing...</h3>
    <div class="col-md-12 pt-3" style="padding-left: 12px!important;">
        <canvas id="sig-canvas" style="background: #016931; border: 4px solid #AE7F38; color: white !important; z-index: 3;">Get a better browser, bro.
        </canvas>
        <asp:Image ID="imgLetter" Style="z-index: 2; width: 100%; height: 400px; position: absolute; top: 20px; pointer-events: none; opacity: 0.5;" runat="server" />
    </div>
    <div class="col-md-12">
        <a class="btn btn-primary text-white btn-block" style="font-size: 20px;" id="sig-submitBtn">Submit</a>
        <button class="btn btn-danger btn-block" style="font-size: 20px;" id="sig-clearBtn">Clear</button>

        <asp:Button ID="match" runat="server" OnClick="match_OnClick" Style="opacity: 0;" Text="Match" />

    </div>
    <div class="col-md-12">
        <img id="sig-image" src="" style="display: none;" alt="Your signature will go here!" />
    </div>

    <script src='https://cdn.rawgit.com/naptha/tesseract.js/1.0.10/dist/tesseract.js'></script>

    <script>
        const canvas = document.getElementById("sig-canvas");
        let ctx = canvas.getContext("2d");
        let drawColor = "#eaff00";
        let drawWidth = "2";
        ctx.strokeStyle = drawColor;
        ctx.lineWidth = drawWidth;

        canvas.width = window.innerWidth - 30;
        canvas.height = 400;
        (function () {
            window.requestAnimFrame = (function (callback) {
                return window.requestAnimationFrame ||
                    window.webkitRequestAnimationFrame ||
                    window.mozRequestAnimationFrame ||
                    window.oRequestAnimationFrame ||
                    window.msRequestAnimaitonFrame ||
                    function (callback) {
                        window.setTimeout(callback, 1000 / 60);
                    };
            })();
            var drawing = false;
            var mousePos = {
                x: 0,
                y: 0
            };
            var lastPos = mousePos;

            canvas.addEventListener("mousedown", function (e) {
                drawing = true;
                lastPos = getMousePos(canvas, e);
            }, false);

            canvas.addEventListener("mouseup", function (e) {
                drawing = false;
            }, false);

            canvas.addEventListener("mousemove", function (e) {
                mousePos = getMousePos(canvas, e);
            }, false);

            // Add touch event support for mobile
            canvas.addEventListener("touchstart", function (e) {

            }, false);

            canvas.addEventListener("touchmove", function (e) {
                var touch = e.touches[0];
                var me = new MouseEvent("mousemove", {
                    clientX: touch.clientX,
                    clientY: touch.clientY
                });
                canvas.dispatchEvent(me);
            }, false);

            canvas.addEventListener("touchstart", function (e) {
                mousePos = getTouchPos(canvas, e);
                var touch = e.touches[0];
                var me = new MouseEvent("mousedown", {
                    clientX: touch.clientX,
                    clientY: touch.clientY
                });
                canvas.dispatchEvent(me);
            }, false);

            canvas.addEventListener("touchend", function (e) {
                var me = new MouseEvent("mouseup", {});
                canvas.dispatchEvent(me);
            }, false);

            function getMousePos(canvasDom, mouseEvent) {
                var rect = canvasDom.getBoundingClientRect();
                return {
                    x: mouseEvent.clientX - rect.left,
                    y: mouseEvent.clientY - rect.top
                }
            }

            function getTouchPos(canvasDom, touchEvent) {
                var rect = canvasDom.getBoundingClientRect();
                return {
                    x: touchEvent.touches[0].clientX - rect.left,
                    y: touchEvent.touches[0].clientY - rect.top
                }
            }

            function renderCanvas() {
                if (drawing) {
                    ctx.moveTo(lastPos.x, lastPos.y);
                    ctx.lineTo(mousePos.x, mousePos.y);
                    ctx.stroke();
                    lastPos = mousePos;
                }
            }

            // Prevent scrolling when touching the canvas
            document.body.addEventListener("touchstart", function (e) {
                if (e.target == canvas) {
                    e.preventDefault();
                }
            }, false);
            document.body.addEventListener("touchend", function (e) {
                if (e.target == canvas) {
                    e.preventDefault();
                }
            }, false);
            document.body.addEventListener("touchmove", function (e) {
                if (e.target == canvas) {
                    e.preventDefault();
                }
            }, false);

            (function drawLoop() {
                requestAnimFrame(drawLoop);
                renderCanvas();
            })();

            function clearCanvas() {
                canvas.width = canvas.width;
            }

            // Set up the UI
            var sigText = document.getElementById("sig-dataUrl");
            var sigImage = document.getElementById("sig-image");
            var clearBtn = document.getElementById("sig-clearBtn");
            var submitBtn = document.getElementById("sig-submitBtn");
            var label = document.getElementById('<%= lblAlpha.ClientID %>');
            var loadText = document.getElementById('loadText');
            clearBtn.addEventListener("click", function (e) {
                clearCanvas();
                sigImage.setAttribute("src", "");
            }, false);
            submitBtn.addEventListener("click", function (e) {

                loadText.style.display = 'block';
                var dataUrl = canvas.toDataURL();
                sigImage.setAttribute("src", dataUrl);
                setTimeout(function () {
                    var myImage = document.getElementById('sig-image');
                    var a;
                    Tesseract.recognize(myImage).then(function (result) {
                        a = result.text.toString().trim();
                        console.log(a, label.innerHTML);
                        if (a === label.innerHTML) {
                            alert('Perfect, Try another one');
                            loadText.style.display = 'none';
                            const canvas = document.getElementById("sig-canvas");
                            let ctx = canvas.getContext("2d");
                            let drawColor = "#eaff00";
                            let drawWidth = "10";
                            ctx.strokeStyle = drawColor;
                            ctx.lineWidth = drawWidth;
                            Click();
                        } else {
                            alert('Not matched, Better luck next time');
                            loadText.style.display = 'none';
                        }
                    });

                    clearCanvas();
                }, 100);
            }, false);

        })();
        function Click() {
            $('#ContentPlaceHolder1_match').click();
        }
    </script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            const canvas = document.getElementById("sig-canvas");
            let ctx = canvas.getContext("2d");
            let drawColor = "#eaff00";
            let drawWidth = "10";
            ctx.strokeStyle = drawColor;
            ctx.lineWidth = drawWidth;
        });
        function pageLoad() {
            const canvas = document.getElementById("sig-canvas");
            let ctx = canvas.getContext("2d");
            let drawColor = "#eaff00";
            let drawWidth = "10";
            ctx.strokeStyle = drawColor;
            ctx.lineWidth = drawWidth;
        }
    </script>
</asp:Content>
