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
                    $( "tr:first" ).css( "background-color", "#00C853" );
                    $("#second-table tr").eq(0).css("background-color", "#00C853");
                    break;
                case "multiplications":
                    $( "tr:first" ).css( "background-color", "#0091EA" );
                    $("#second-table tr").eq(0).css("background-color", "#0091EA");
                    break;
                case "subtractions":
                    $( "tr:first" ).css( "background-color", "#6200EA" );
                    $("#second-table tr").eq(0).css("background-color", "#6200EA");
                    break;
                case "divisions":
                    $( "tr:first" ).css( "background-color", "#D50000" );
                    $("#second-table tr").eq(0).css("background-color", "#D50000");
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