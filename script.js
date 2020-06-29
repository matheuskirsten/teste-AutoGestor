$(function(){
    $("#search").keyup(function(){
        //recupera o valor do campo
        var search = $(this).val();

        //verifica se tem algo digitado
        if(search != ''){
            var data = {
                word : search
            }
            $.post('proc_pesq_user.php', data, function(retorna){
                //Mostra destro a ul os resultados
                $(".resulted").html(retorna);
            });
        }
    });
});
