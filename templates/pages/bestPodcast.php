<!-- <?php session_start();dump($_SESSION['user']['login']);  ?> -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <title>Document</title>
</head>

<body>
    <article class="wrapper">
    <?php
                if (!isset($_SESSION['logged_in']) || $_SESSION['logged_in'] != true) {
                   echo"
                <button id='login-buttonbig' class='btn btn-log'>Zaloguj się</button>
                <button id='register-buttonbig' class='btn btn-log'>Zarejestruj się</button>";
                }else{
                    echo"
                    <button id='login-buttonbig' class='btn btn-log disact'></button> <div class='napis'>Witaj " . $_SESSION['user']['login'] . "</div>
                    <button onclick='location.href=\"?action=logout\"' id='register-buttonbig' class='btn btn-log'>Wyloguj się</button>";
                }
                
                ?>
    <?php foreach($params['bestOnePodcast'] as $bestPodcast) :?>
        <div>
            <div class="photo"><img class="img" src="./img/podcasts_logo/<?php echo $bestPodcast['zdjeciePodcastu']?>.jpg" alt=""></div>
            <table>
                <tr>
                    <td><label for="">Nazwa: <?php echo $bestPodcast['tytul']?></label></td>
                </tr>
                <tr>
                    <td><label for="">Rodzaj: <?php echo $bestPodcast['nazwa']?></label></td>
                </tr>
                <tr>
                    <td><label for="rating"> Ocen: </label></td>
                       <td> <select id="rating" name="fruit">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select></td>
                    </td>
                </tr>
                <tr>
                    <td><Label>Srednia: <?php echo $bestPodcast['srednia_ocena']?></Label></td>
                </tr>
            </table>
            <div class="authdesc">
                <h2>Opis:</h2>
                <?php echo $bestPodcast['opis']?>
            </div>
        </div>
        <?php endforeach; ?>
    </article>
    <br>
    <button onclick="location.href='?action=main'">powrot</button>
    <br>
    <section class="autthcomments wrapper">
        <div class="addcomments">
            <h2>dodaj komentarz</h2>
            <form action="" class="commentsform">
                <textarea name="" id="" cols="30" rows="10"></textarea>
                <input type="submit" value="dodaj">
            </form>
        </div>
        <hr>
        <br>
        <h2>komentarze</h2>
        <div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iure placeat maxime eum repellendus explicabo atque nobis! Aut temporibus beatae ut placeat cum ratione eos ipsam recusandae voluptatibus sapiente modi a, sequi tempora, veniam, voluptate asperiores.</div>
        <hr>
        <div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iure placeat maxime eum repellendus explicabo atque nobis! Aut temporibus beatae ut placeat cum ratione eos ipsam recusandae voluptatibus sapiente modi a, sequi tempora, veniam, voluptate asperiores.</div>
        <hr>
        <div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iure placeat maxime eum repellendus explicabo atque nobis! Aut temporibus beatae ut placeat cum ratione eos ipsam recusandae voluptatibus sapiente modi a, sequi tempora, veniam, voluptate asperiores.</div>
        <hr>
        <div>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iure placeat maxime eum repellendus explicabo atque nobis! Aut temporibus beatae ut placeat cum ratione eos ipsam recusandae voluptatibus sapiente modi a, sequi tempora, veniam, voluptate asperiores.</div>
        <hr>
    </section>
</body>

</html>