function showTable(id){
    /*var div = document.getElementById('tables');
    var divs = div.getElementsByTagName('div');
    for (var i = 0; i < divs.length; i += 1) {
        divs[i].style.visibility = "hidden";
        if(divs[i].id==id)
            divs[i].style.visibility = "visible";
    }*/

    $.ajax({
        type : "GET",
        url : "/dashboard/details",
        data : {
            operation: id
        },
        success: function(data){
            console.log(data);
            var div = document.getElementById('tables');
            div.innerHTML = data;
            //window.location.href = "/success";
        },
        error : function(e) {
            alert('Error: ' + e);
        }
    });

}