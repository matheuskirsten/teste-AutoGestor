<!DOCTYPE HTML>
<html>

<heady>
    <link rel="stylesheet" href="styles/home.css">
</heady>

<body>
    <header class="resultados">
            <?php

            include_once 'connection.php';

            $cidade = filter_input(INPUT_POST, 'word', FILTER_SANITIZE_STRING);

            $result_city = "select c.nome as nome, cat.nome as categoria, c.telefone as telefone, c.endereco as endereço, c.cidade as cidade, c.uf as uf
            from clientes as c inner join categoria as cat
            on cat.id = c.id_categoria where cidade LIKE '%$cidade%' LIMIT 40";

            $resulted_city = mysqli_query($conn, $result_city);

            if (($resulted_city) AND ($resulted_city -> num_rows != 0)) {

                echo '<p> Resultados </p>';  
                echo '<div class="cards">';
                while($row_city = mysqli_fetch_assoc($resulted_city)) {


                        echo '<div class="card">';

                            echo "<li id=nome>".$row_city['nome']."</li>";
                            echo "<li id=categoria>".$row_city['categoria']."</li>";
                            echo "<li id=categoria>".$row_city['telefone']."</li>";
                            echo "<li id=endereco>".$row_city['endereço']."</li>";
                            echo "<li id=cidade>".$row_city['cidade']."</li>";
                            echo '<li id="uf">'.$row_city['uf']."</li>";

                        echo '</div>';



                }
                echo "</div>";
            }else {

                echo "Nenhuma loja cadastrada nesta cidade";
            }

            ?>
    </header>
</body>
</html>