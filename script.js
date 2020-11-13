$(document).ready(function(){

    fetch_search();

    function fetch_search(query)
    {
        $.ajax({
            url:"search.php",
            method:"POST",
            data:{query:query},
            success:function(data)
            {
                $('#display').html(data);
            }
        });
    }
    $('#search').keyup(function(){
        var search = $(this).val();
        if(search != '' && search.length>=3)
        {
            fetch_search(search);
        }
        else
        {
            fetch_search();
        }
    });
});
