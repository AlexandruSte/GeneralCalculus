function generate(){
    div = document.getElementById("calculus");
    p = document.getElementById("calcul")
    div.style.visibility = "visible";
    var min=10;
    var max=50;
    var x =Math.floor(Math.random() * (+max - +min)) + +min;
    var y =Math.floor(Math.random() * (+max - +min)) + +min;
    s = y + ' x ' + x;
    p.innerHTML = s;
}