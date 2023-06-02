<script>
     $(function() {
        $('#formuser').unbind('submit').bind('submit', function(e) { //<-- e defined here
            e.preventDefault();
            var form = $(this);
            var data = new FormData(this);
            $.ajax({
                url: form.attr('action'),
                type: form.attr('method'),
                data: data,
                processData: false,
                contentType: false,
                dataType: 'json',
                success: function(data) {
                    console.log(data);
                    if(data.status == 'success'){
                        alert(data.msg);
                        location.reload();
                    }else{
                        alert(data.msg);
                    }
                },
                error: function(err){
                    alert(err);
                }
                
            });
            return false;
        });
    });



    
    function show_password(){
        var className = $("#icon").attr('class');
        className = className.indexOf('slash') !== -1 ? 'bi bi-eye' : 'bi bi-eye-slash'

        $("#icon").attr('class', className);
        var x = document.getElementById("password");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
    }
</script>