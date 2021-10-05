const canvas = document.querySelector('#canvas');
canvasSize();
let ctx = canvas.getContext("2d");
let startbg = "white";
ctx.fillStyle = startbg;
ctx.fillRect(0, 0, canvas.width, canvas.height);

let drawColor = "black";
let drawWidth = "2";
let isDrawing = false;
let restoreArray = [];
let index = 1;

function changeColor(e) {
    drawColor = e.style.background;
}

canvas.addEventListener("touchstart", start, false);
canvas.addEventListener("touchmove", draw, false);
canvas.addEventListener("mousedown", start, false);
canvas.addEventListener("mousemove", draw, false);

canvas.addEventListener("touchend", stop, false);
canvas.addEventListener("mouseup", stop, false);
canvas.addEventListener("mouseout", stop, false);

function start(event) {
    isDrawing = true;
    ctx.beginPath();
    ctx.moveTo(event.clientX - canvas.offsetLeft, event.clientY - canvas.offsetTop);
    event.preventDefault();
}
function draw(e) {
    if (isDrawing) {
        if (e.type == 'touchmove') {
            ctx.lineTo(e.touches[0].clientX - canvas.offsetLeft, e.touches[0].clientY - canvas.offsetLeft - 100);
            //ctx.lineTo(event.clientX - canvas.offsetLeft, event.clientY - canvas.offsetTop);
        }
        else if (e.type == 'mousemove') {
            ctx.lineTo(event.clientX - canvas.offsetLeft, event.clientY - canvas.offsetTop);
        }

        ctx.strokeStyle = drawColor;
        ctx.lineWidth = drawWidth;
        ctx.lineCap = "round";
        ctx.lineJoin = "round";
        ctx.stroke();
    }
    e.preventDefault();
}
function stop(e) {
    if (isDrawing) {
        ctx.stroke();
        ctx.closePath();
        isDrawing = false;
    }
    e.preventDefault();
    if (e.type != 'mouseout') {
        restoreArray.push(ctx.getImageData(0, 0, canvas.width, canvas.height));
        index += 1;
    }
}
function canvasSize() {
    canvas.width = window.innerWidth - 30;
    canvas.height = 400;
}
function clearCanvas(e) {
    ctx.fillStyle = startbg;
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    restoreArray = [];
    index = -1;
}
function undoLast(e) {
    if (index <= 0) {
        clearCanvas();
    } else {
        index -= 1;
        restoreArray.pop();
        ctx.putImageData(restoreArray[index], 0, 0);
    }
}
window.onresize = canvasSize;