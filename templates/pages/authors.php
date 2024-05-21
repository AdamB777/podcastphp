<?php 
require_once("./Utils/View.php"); 
require_once("./Utils/Controller.php"); 
?>
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
                    echo "
                    <button onclick='location.href=\"?action=main\"' id='login-buttonbig' class='btn btn-log'>Zaloguj się</button>";
                    } else {
                        echo "
                        <button id='login-buttonbig' class='btn btn-log disact'></button> <div class='napis'>Witaj " . $_SESSION['user']['login'] . "</div>
                        <button onclick='location.href=\"?action=logout\"' id='register-buttonbig' class='btn btn-log'>Wyloguj się</button>";
                    }
                
                ?>
        <?php foreach($params['newestAuthor'] as $newAuth) :?>
            <div class="photo-podcast" ><img class="img-comment1" src="./img/authors/<?php echo $newAuth['zdjecieAutora']?>.jpg" alt=""></div>
            <div class="datas-podcast">
               <table class="datas-table">
                <tr>
                    <td><label for=""><span class="table-text">Imie:</span> <?php echo $newAuth['imieAutora']?></label></td>
                </tr>
                <tr>
                    <td><label for=""><span class="table-text">Nazwisko:</span> <?php echo $newAuth['nazwiskoAutora']?></label></td>
                </tr>
                <tr>
                    <td><label for=""><span class="table-text">Podcast:</span><?php echo $newAuth['tytul_podcastu']?></label></td>
                </tr>
                <tr>
                    <td><label for=""><span class="table-text">Rodzaj:</span> <?php echo $newAuth['nazwa_kategorii']?></label></td>
                </tr>
            </table>
            <div class="authdesc">
            <?php echo $newAuth['opisAutora']?>
            </div>
        </div>
        <?php endforeach; ?>
    </article>
    <br>
    <?php if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] == true ) { ?>
    <button onclick="location.href='?action=main'" class="btn">powrot</button>
    <br>
    <section class="autthcomments wrapper">
        <div class="addcomments">
            <h2>dodaj komentarz</h2>
            <form action="?action=create" method="post" class="commentsform">
            <table class="add-comment-table">
                <tr>
                    <td><label>Tytul</label></td>
                </tr>
                <tr>
                    <td><input type="text" name="title"></td>
                </tr>
    <tr>
        <td><label>Opis</label> <textarea name="description" id="" cols="30" rows="10"></textarea></td>
    </tr>
    
    <input type="hidden" name="userId" value="<?php echo $_SESSION['user']['id']; ?>">
    <input type="hidden" name="authorId" value="<?php echo $newAuth['Id']?>">
    <tr>
        <td><input type="submit" value="dodaj" class="btn"></td>
    </tr>
    
            </table>
</form>

        </div>
        <?php } ?>
        <hr>
        <br>
        
        <h2>komentarze</h2>
        <?php foreach($params['newestAuthorComment'] as $newAuthcomm) :?>
            <h3><?php echo $newAuthcomm['tytul']?></h3>
        <div><?php echo $newAuthcomm['tresc']?></div>
        <br>
        <p><?php echo $newAuthcomm['data']?></p>
        <p><?php echo $newAuthcomm['login']?></p>
        <hr>
        <?php endforeach; ?>
    
    </section>
</body>
</html>