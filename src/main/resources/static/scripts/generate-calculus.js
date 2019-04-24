var user_results = [];
var actual_results = [];
var calculations = 0;
var sign = '';

function start(){
    var div = document.getElementById("calculus");
    div.style.visibility = "visible";

    var divGen = document.getElementById("generation");
    divGen.style.visibility = "hidden";

    var operation = document.getElementById("operationType").value;
    switch (operation) {
        case "multiplication":
            sign = 'x';
            break;
        case "division":
            sign = '/';
            break;
        case "addition":
            sign = '+';
            break;
        case "subtraction":
            sign = '-';
            break;
    }
    var input_tag = document.getElementsByTagName("input");
    input_tag[0].focus();
    input_tag[0].scrollIntoView();
    generate();
}

function generate(){
    var min=10;
    var max=50;
    var x =Math.floor(Math.random() * (+max - +min)) + +min;
    var y =Math.floor(Math.random() * (+max - +min)) + +min;

    var result = 0;
    switch (sign) {
        case "+":
            result = x+y;
            break;
        case "-":
            result = x-y;
            break;
        case "x":
            result = x*y;
            break;
        case "/":
            result = Math.floor(x/y);
            break;
    }

    actual_results.push('' + result);
    calculations++;
    var s = y + ' ' + sign + ' ' + x;
    var p = document.getElementById("calcul")
    p.innerHTML = s;
}

function send(){
    var input_tag = document.getElementsByTagName("input");
    var result = '' + input_tag[0].value;
    input_tag[0].value = '';
    input_tag[0].focus();
    input_tag[0].scrollIntoView();
    if(result.length == 0)
        user_results.push('0');
    else
        user_results.push(result);
    if(calculations<4) {
        generate();
    }
    else{
        div = document.getElementById("calculus");
        div.style.visibility = "hidden";

        $.ajax({
            type : "POST",
            url : "/results",
            data : {
                myArray: user_results,
                myArray1: actual_results
            },
            success: function(data){
                console.log(data);
                window.location.href = "/success";
            },
            error : function(e) {
                alert('Error: ' + e);
            }
        });
    }
    console.log(result)
}