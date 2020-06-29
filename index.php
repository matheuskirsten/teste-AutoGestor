<!DOCTYPE HTML>
<html>
<heady>
    <meta charset="utf8">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;700&family=Ubuntu:wght@700&display=swap" rel="stylesheet">
    

    <link rel="stylesheet" href="styles/home.css">
    
    <title> Pesquisa de Lojas</title>
</heady>
<body>
    <div id= "page-home">

        <h1>Pesquisa de lojas de carros</h1>
        <form method="POST" id="form-search" action="" autocomplete= "off"> 
            <label>Digite a cidade em que deseja buscar uma loja </label>
            <br/>
           
            <input type="text" name="pesquisa" id="search" placeholder="cidade">
        </form>

        <ul class="resulted">
        </ul>
    </div>
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/2.2.3/jquery.min.js"></script>
        <script type="text/javascript" src="script.js"></script>
   
</body>
</html>
