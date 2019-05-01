var user_results = [];
var actual_results = [];
var calculations = 0;
var sign = '';
var nrOfOps = 0;
var operation = "";
var difficulty = "";
var max = 0;
var min = 0;
var maxDiv = 0;
var minDiv = 0;

var startTime = 0;

function start(){
    startTime = performance.now();

    var div = document.getElementById("calculus");
    div.style.visibility = "visible";

    var divGen = document.getElementById("generation");
    divGen.style.visibility = "hidden";

    nrOfOps = document.getElementById("ops").value;

    operation = document.getElementById("operationType").value;

    difficulty = document.getElementById("difficultyType").value;

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
    
    setValuesForMaxMin();
    
    var input_tag = document.getElementsByTagName("input");
    input_tag[0].focus();
    input_tag[0].scrollIntoView();
    generate();
}

function generate(){
    var x = 0;
    var y = 0;

    if(operation=="division"){
        x =Math.floor(Math.random() * (+max - +min)) + +min;
        y =Math.floor(Math.random() * (+maxDiv - +minDiv)) + +minDiv;

        var res = x/y;
        if(res!=Math.floor(x/y)){
            var cat = Math.floor(x/y);
            x = cat*y;
        }
    }
    else{
        x =Math.floor(Math.random() * (+max - +min)) + +min;
        y =Math.floor(Math.random() * (+max - +min)) + +min;
    }

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
    var s = x + ' ' + sign + ' ' + y;
    var p = document.getElementById("calcul");
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
    if(calculations<nrOfOps) {
        generate();
    }
    else{
        var endTime = performance.now();

        var seconds = Math.round(((endTime - startTime)/1000) * 100) / 100;
        console.log(seconds);
        console.log(typeof seconds);
        div = document.getElementById("calculus");
        div.style.visibility = "hidden";

        $.ajax({
            type : "POST",
            url : "/calculus/results",
            data : {
                myArray: user_results,
                myArray1: actual_results,
                operations: operation,
                time: seconds,
                difficulty: difficulty
            },
            success: function(data){
                console.log(data);
                window.location.href = "/calculus/success";
            },
            error : function(e) {
                alert('Error: ' + e);
            }
        });
    }
    console.log(result)
}

function enterpressalert(e){
    var code = (e.keyCode ? e.keyCode : e.which);
    if(code == 13) {
        send();
    }
}

function setValuesForMaxMin() {
    switch (operation) {
        case "multiplication":
            switch (difficulty) {
                case "novice":
                    min = 1;
                    max = 12;
                    break;
                case "medior":
                    min = 8;
                    max = 35;
                    break;
                case "expert":
                    min = 14;
                    max = 90;
                    break;
            }
            break;
        case "addition":
            switch (difficulty) {
                case "novice":
                    min = 6;
                    max = 170;
                    break;
                case "medior":
                    min = 170;
                    max = 890;
                    break;
                case "expert":
                    min = 999;
                    max = 19999;
                    break;
            }
            break;
        case "division":
            switch (difficulty) {
                case "novice":
                    min = 30;
                    max = 100;
                    minDiv = 2;
                    maxDiv = 11;
                    break;
                case "medior":
                    min = 160;
                    max = 890;
                    minDiv = 8;
                    maxDiv = 24;
                    break;
                case "expert":
                    min = 999;
                    max = 19999;
                    minDiv = 12;
                    maxDiv = 30;
                    break;
            }
            break;
        case "subtraction":
            switch (difficulty) {
                case "novice":
                    min = 6;
                    max = 90;
                    break;
                case "medior":
                    min = 170;
                    max = 890;
                    break;
                case "expert":
                    min = 750;
                    max = 9999;
                    break;
            }
            break;
    }
}