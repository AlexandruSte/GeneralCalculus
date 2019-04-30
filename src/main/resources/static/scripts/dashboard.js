function showTable(id){
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

            switch (id) {
                case "additions":
                    $( "tr:first" ).css( "background-color", "#26A69A" );
                    $("#second-table tr").eq(0).css("background-color", "#26A69A");
                    break;
                case "multiplications":
                    $( "tr:first" ).css( "background-color", "#4CAF50" );
                    $("#second-table tr").eq(0).css("background-color", "#4CAF50");
                    break;
                case "subtractions":
                    $( "tr:first" ).css( "background-color", "#FF3D00" );
                    $("#second-table tr").eq(0).css("background-color", "#FF3D00");
                    break;
                case "divisions":
                    $( "tr:first" ).css( "background-color", "#FFC107" );
                    $("#second-table tr").eq(0).css("background-color", "#FFC107");
                    break;
            }

            $( "tr:first" ).css( "color", "white" );
            $("#second-table tr").eq(0).css("color", "white");
        },
        error : function(e) {
            alert('Error: ' + e);
        }
    });

}