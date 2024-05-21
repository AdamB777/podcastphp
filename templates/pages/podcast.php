<!-- <?php session_start();
        dump($_SESSION);  ?> -->
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
    <article class="podcast">
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
        <?php foreach ($params['bestOnePodcast'] as $newPodcast) : ?>
            
                <div class="photo-podcast"><img class="img-comment" src="./img/podcasts_logo/<?php echo $newPodcast['zdjeciePodcastu'] ?>.jpg" alt=""></div>
               <div class="datas-podcast">
               <table class="datas-table">
                    <tr>
                        <td><label for=""><span class="table-text">Nazwa:</span> <?php echo $newPodcast['tytul'] ?></label></td>
                    </tr>
                    <tr>
                        <td><label for=""><span class="table-text">Rodzaj:</span> <?php echo $newPodcast['nazwa'] ?></label></td>
                    </tr>
                    <tr>
                        <td><label for="rating"><span class="table-text"> Oceń:</span> </label></td>
                        <td><?php
                            $podcast_id = $_GET['id'];
                            // dump($podcast_id);
                            if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] == true) { ?>

                                <form action="?action=rate" method="post" onsubmit="location.href = location.href">
                                    <input type="hidden" name="podcast_id" value="<?php echo $_GET['id']; ?>">
                                    <label for="rating">Ocena:</label>
                                    <select id="rating" name="rating">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
                                    <input type="submit" value="Oceń">

                                </form>
                            <?php } ?>
                            <!-- <?php dump($params['succes']); ?> -->
                        </td>
                    </tr>
                    <tr>
                        <td><Label><span class="table-text">Srednia:</span> <?php echo $newPodcast['srednia_ocena'] ?></Label></td>
                    </tr>
                </table>
               </div>
                <div class="authdesc">
                    <h2>Opis:</h2>
                    <?php echo $newPodcast['opis'] ?>
                </div>
            
        <?php endforeach; ?>

        <?php if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] == true ) { ?>
<button onclick="location.href='?action=main'" class="btn btn-comment">powrot</button>
        <!-- <section class="comments5 wrapper"> -->
        <div class="addcomments">
            
            <h2>dodaj komentarz</h2>
            <form action="?action=createPodcsastComment" method="post" class="commentsform"><table class="add-comment-table">
                <tr>
                    <td><label>Tytul</label></td>
                </tr>
                <tr>
                    <td><input type="text" name="title"></td>
                </tr>
                <tr>
                    <td><label>Opis</label></td>
                </tr>
                <tr>
                    <td><textarea name="description" id="" cols="30" rows="10"></textarea></td> 
                </tr>
                <input type="hidden" name="userId" value="<?php echo $_SESSION['user']['id']; ?>">
                <input type="hidden" name="datanew" value="<?php echo date('Y-m-d'); ?>">
                <input type="hidden" name="podcastId" value="<?php echo $newPodcast['Id'] ?>"><tr>
                                <td><input type="submit" value="dodaj" class="btn "></td>
                </tr>
                
            </table>
            </form>
        </div>
        <?php } ?>
        <h2>komentarze</h2>
        <?php foreach ($params['newestPodcastComment'] as $newAuthcomm) : ?>
            <h3><?php echo $newAuthcomm['tytul'] ?></h3>
            <div><?php echo $newAuthcomm['tresc'] ?></div>
            <br>
            <p><?php echo $newAuthcomm['data'] ?></p>
            <p><?php echo $newAuthcomm['login'] ?></p>
            <hr>
            <?php if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] == true && $_SESSION['user']['login'] == $newAuthcomm['login']) { ?>
                <!-- <button class="btn" id="edit-button">Edytuj</button> -->

                <div class="edit-hide">
                    <h5>Edytuj lub usun</h5>
                    <form action="?action=updateComment" method="post">
                        <table>
                            <tr>
                                <td><input type="hidden" name="comment_id" value="<?php echo $newAuthcomm['Id']; ?>"></td>
                            </tr>
                        
                        <input type="hidden" name="comment_data" value="<?php echo date("Y-m-d"); ?>">
                        <input type="hidden" name="comment_title" value="<?php echo $newAuthcomm['tytul']; ?>">
                        <textarea name="edit" id="" cols="30" rows="10"><?php echo $newAuthcomm['tresc'] ?></textarea>
                        <tr>
                            <td><input type="submit" value="zapisz zmiany" class="btn"></td>
                        </tr>
                        
                    </table>
                    </form>
                    <button class="btn" onclick="location.href='?action=deleteComment&comment_id=<?php echo $newAuthcomm['Id']; ?>'">Usuń</button>
                </div>

            <?php } ?>

        <?php endforeach; ?>
        <!-- </section> -->
    </article>
</body>

</html>