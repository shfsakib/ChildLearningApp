<%@ Page Title="" Language="C#" MasterPageFile="~/app/app.Master" AutoEventWireup="true" CodeBehind="number-matcher.aspx.cs" Inherits="ChildLearningApp.app.number_matcher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="matchId" runat="server" />
    <asp:Label ID="lblAlpha" Style="display: none;" runat="server" Text="A"></asp:Label>
    <%--<label id="lblAlpha" class="lblAlpha">Apple</label>--%>
    <h3 class="loadText" id="loadText" style="display: none; color: white; margin: 0 auto; padding: 0 15px;">Analyzing...</h3>
    <div class="col-md-12 pt-3" style="padding-left: 12px!important;">
        <canvas id="sig-canvas" style="background: #016931; border: 4px solid #AE7F38; color: white !important; z-index: 3;">Get a better browser, bro.
        </canvas>
        <asp:Image ID="imgLetter" Style="z-index: 2; width: 92%; height: 400px; position: absolute; top: 20px; pointer-events: none; opacity: 0.2;" runat="server" />
    </div>
    <div class="col-md-12">
        <a class="btn btn-primary text-white btn-block" style="font-size: 20px;" id="sig-submitBtn">Submit</a>
        <button class="btn btn-danger btn-block" style="font-size: 20px;" id="sig-clearBtn">Clear</button>

        <asp:Button ID="match" runat="server" OnClick="match_OnClick" Style="opacity: 0; pointer-events: none; position: absolute;" Text="Match" />

    </div>
    <div class="col-12 pt-3 pb-3">
        <div class="row">
            <div class="col-6">
                <asp:LinkButton ID="lnkPrev" OnClick="lnkPrev_OnClick" CssClass="btn btn-success btn-block" Style="font-size: 20px;" runat="server">Prev</asp:LinkButton>
            </div>
            <div class="col-6">
                <asp:LinkButton ID="lnkNext" OnClick="lnkNext_OnClick" CssClass="btn btn-primary btn-block" Style="font-size: 20px;" runat="server">Next</asp:LinkButton>
            </div>
        </div>
    </div>
    <div class="col-md-12">
        <img id="sig-image" src="" style="display: none;" alt="Your signature will go here!" />
    </div>
    <audio src="" id="audioQuiz" runat="server" autoplay></audio>
    <div class="alertModalBg" id="alertModalBg" runat="server">
        <div class="successAlertModal">
            <div class="col-12 text-center pt-3">
                <img class="alertAnim" id="alertImg" runat="server" src="/MenuLink/app-file/success.gif" />
            </div>
            <div class="col-12 text-center p-3">
                <h3 class="alertMessage" id="alertMsg" runat="server"></h3>
            </div>
            <div class="col-12 text-center p-3">
                <asp:LinkButton ID="lnkOk" CssClass="btn btn-primary" OnClick="lnkOk_OnClick" runat="server">Ok</asp:LinkButton>
            </div>
        </div>
    </div>
    <style>
        .successAlertModal {
            width: 300px;
            max-width: 300px;
            min-height: 150px;
            height: auto;
            background: white;
            padding: 0;
            min-width: 350px;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            position: relative;
            border-radius: 15px;
            border: 1px solid #a5a3d1;
            border-bottom: 15px solid #8C93C7;
            box-shadow: 2px 2px 5px 2px #a5a3d1;
        }

        .alertModalBg {
            position: absolute;
            width: calc(100%);
            height: calc(100vh);
            background: rgba(255, 255, 255, 0);
            z-index: 10000;
            top: 0;
            left: 0;
            overflow-x: hidden;
            overflow-y: auto;
            justify-content: center;
            align-items: center;
            display: none;
        }
        /*Alert modal css*/
        .alertAnim {
            width: 75px;
            height: 75px;
        }
    </style>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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
                            //alert('Perfect, Try another one');
                            document.querySelector("#ContentPlaceHolder1_alertModalBg").style.display = "block";
                            document.querySelector("#ContentPlaceHolder1_alertMsg").innerText = "Perfect, Try another one!";
                            document.querySelector("#ContentPlaceHolder1_alertImg").src = "/MenuLink/app-file/success.gif";
                            document.querySelector("#ContentPlaceHolder1_audioQuiz").src = "/MenuLink/app-file/win.mp3";
                            loadText.style.display = 'none';
                            const canvas = document.getElementById("sig-canvas");
                            let ctx = canvas.getContext("2d");
                            let drawColor = "#eaff00";
                            let drawWidth = "10";
                            ctx.strokeStyle = drawColor;
                            ctx.lineWidth = drawWidth;
                           // Click();
                        } else {
                            //alert('Not matched, Better luck next time');
                            document.querySelector("#ContentPlaceHolder1_alertModalBg").style.display = "block";
                            document.querySelector("#ContentPlaceHolder1_alertMsg").innerText = "Perfect, Try another one!";
                            document.querySelector("#ContentPlaceHolder1_alertImg").src = "/MenuLink/app-file/success.gif";
                            document.querySelector("#ContentPlaceHolder1_audioQuiz").src = "/MenuLink/app-file/win.mp3";
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
