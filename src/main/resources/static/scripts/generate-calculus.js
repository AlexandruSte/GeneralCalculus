var user_results = [];
var actual_results = [];
var calculations = 0;

function generate(){
    div = document.getElementById("calculus");
    p = document.getElementById("calcul")
    div.style.visibility = "visible";

    btn = document.getElementById("genBtn");
    btn.style.visibility = "hidden";

    var min=10;
    var max=50;
    var x =Math.floor(Math.random() * (+max - +min)) + +min;
    var y =Math.floor(Math.random() * (+max - +min)) + +min;
    var result = x*y;
    actual_results.push('' + result);
    calculations++;
    s = y + ' x ' + x;
    p.innerHTML = s;
}

function send(){
    var input_tag = document.getElementsByTagName("input");
    var result = '' + input_tag[0].value;
    input_tag[0].value = '';
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