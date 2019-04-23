var user_results = [];
var actual_results = [];

function generate(){
    div = document.getElementById("calculus");
    p = document.getElementById("calcul")
    div.style.visibility = "visible";
    var min=10;
    var max=50;
    var x =Math.floor(Math.random() * (+max - +min)) + +min;
    var y =Math.floor(Math.random() * (+max - +min)) + +min;
    actual_results.push(x*y);
    s = y + ' x ' + x;
    p.innerHTML = s;
}

function send(){
    var result = document.getElementsByTagName("input")[0].value;
    user_results.push(result);
    console.log(result)
}