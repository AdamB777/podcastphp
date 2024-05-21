<?php session_start();  ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=sectio, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <title>Document</title>
</head>
<!-- <?php dump($params['search']) ?> -->

<body>
    <div class="wrapper">

    </div>
    <section class="findAuthors wrapper">
        <div class="authfind">
        <button class="btn" onclick="location.href='?action=main'">Powrot</button>
            <h2 class="title-search">Wyniki wyszukiwania dla: <span class="search-word"> <?php echo $params['search'] ?></span></h2>
            <?php if (empty($params['search'])) : ?>
                <p>Brak wyników dla wyszukiwania</p>
            <?php else : ?>
                <?php foreach ($params['searchResults'] as $result) : ?>
                    <div class="search-result">
                        <table class="search-table">
                            <tr>
                                <td><h3>Tytul: <?php echo $result['tytul'] ?> <button class="btn" onclick="location.href='?action=showPodcast&id=<?php echo $result['Id'] ?>'">szczegoly podcastu</button></h3></td>
                            </tr>
                        <tr><td><p>Autor:<?php echo $result['imieAutora'] ?> <?php echo $result['nazwiskoAutora'] ?> <button class="btn" onclick="location.href='?action=show&id=<?php echo $result['id_autora'] ?>'">szczegoly autora</button></p></td></tr>
                        <tr>
                            <td><p><?php echo $result['opis'] ?></p></td>
                        </tr>
                        <tr>
                            <td><p><?php echo $result['nazwa'] ?></p></td>
                        </tr>
                        
                        
                    </table>
                    </div>
                    <br>
                    <hr>
                <?php endforeach; ?>
            <?php endif; ?>
           
        </div>
    </section>
</body>

</html>