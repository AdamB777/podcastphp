<!-- <?php session_start();
        dump($_SESSION['user']['login']);  ?> -->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/87c8cd813a.js" crossorigin="anonymous"></script>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@100;300;400;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/style.css">

    <title>PodcastWeb</title>
</head>


<body>



    <button class="burger-btn">
        <div class="burger-btn__box">
            <div class="burger-btn__bars"></div>
        </div>
    </button>

    <nav class="nav nav-mobile">
        <ul class="nav-mobile__list">
            <li><a class="nav__link" href="#news">NEWS</a></li>
            <li><a class="nav__link" href="#newest">NOWE PODCASTY</a></li>
            <li><a class="nav__link" href="#top">NAJLEPSZE PODCASTY</a></li>
            <li><a class="nav__link" href="#newestauthor">NOWI AUTORZ</a></li>
            <li><a class="nav__link" href="#topauthor">LISTA</a></li>
            <button id="login-buttonsmall" class="btn btn-log btn-min">Zaloguj się</button>
            <li><button id="register-buttonsmall" class="btn btn-log btn-min">Zarejestruj się</button></li>
            <!-- <button onclick="document.getElementById('login').className='login-theme'">Hide</button> -->

            <li>
                <!-- SEAERCH -->
                <div class="sf">
                    <form action="?action=search" method="post" class="form1">
                        <table cellpadding="0" cellspacing="0">
                            <td><button type="submit" class="search-btn"><i class="fa-solid fa-magnifying-glass"></i></a></button></td>
                            <td>
                                <input type="text" placeholder="Wprowadź tekst" class="searh-input-text" name="search1">
                        </table>
                    </form>
                    </td>
                </div>
                <!-- *********************************************** -->
            </li>
        </ul>
    </nav>
    <!-- LOGIN -->
    <div id="login" class="login-theme active-login">

        <form action="?action=login" method="post" id="login-form" class="login">

            <table class="login-table">
                <div class="div-close"> <button class="btn-close"><i class="fa-solid fa-xmark"></i></button></div>
                <tr>
                    <td class="log-table-text">
                        <label for="usernameL" class="log-table-label">Nazwa:</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" id="usernameL" name="usernameL" class="log-table-input-text">
                    </td>
                </tr>
                <tr>
                    <td class="log-table-text">
                        <label for="passwordL" class="log-table-label">Hasło:</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="passwordl" id="passwordL" name="passwordL" class="log-table-input-text">
                    </td>
                </tr>
                <tr>
                    <td class="log-table-text"><input type="checkbox"><label class="log-table-label"> Zapamietaj mnie</td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" class="log-btn" value="Zaloguj się">
                    </td>
                </tr>
                <tr>
                    <td class="log-table-text-down"><label class="log-table-label" for="">Polityka Prywatnosci</label></td>
                </tr>
            </table>
        </form>
    </div>
    <!-- ****************************************************** -->
    <!-- REGISTER -->
    <div class="register-theme active-register">
        <form id="register-form1" class="register" action="?action=register" method="post">
            <div class="div-close"> <button class="btn-close"><i class="fa-solid fa-xmark"></i></button></div>
            <table class="register-table">
                <tr>
                    <td class="log-table-text">
                        <label for="imieR" class="log-table-label">Imie</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" id="imieR" name="imieR" class="log-table-input-text">
                    </td>
                </tr>
                <tr>
                    <td class="log-table-text">
                        <label for="nazwiskoR" class="log-table-label">Nazwisko</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" id="nazwiskoR" name="nazwiskoR" class="log-table-input-text">
                    </td>
                </tr>
                <tr>
                    <td class="log-table-text">
                        <label for="emailR" class="log-table-label">Email</label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="email" class="log-table-input-text" id="emailR" name="emailR">
                    </td>
                </tr>
                <tr>
                    <td class="log-table-text">
                        <label for="passwordR" class="log-table-label">Haslo</label>
                    </td>
                </tr>
                <tr>
                    <td><input type="password" class="log-table-input-text" id="passwordR" name="passwordR"></td>
                </tr>
                <tr>
                    <td class="log-table-text">
                        <label for="password-repeatR" class="log-table-label">Powtorz Hasło</label>
                    </td>
                </tr>
                <tr>
                    <td>
                    <input type="password" class="log-table-input-text" id="password-repeatR" name="password-repeatR">
                    </td>
                </tr>
                <tr>
                    <td class="log-table-text">
                    <label for="loginR" class="log-table-label">Login</label>
                    </td>
                </tr>
                <tr>
                    <td>
                    <input type="text" class="log-table-input-text" id="loginR" name="loginR">
                    </td>
                </tr>
                <td>
                    <input id="btnReg" type="submit" class="reg-btn" value="Zarejestruj się">
                </td>
                </tr>
            </table>
        </form>
    </div>

    <!-- ****************************************************** -->
    </div>
    <header>
        <nav class="nav-mobile-up">
            <div class="top-search">
                <p class="title">PODCASTWEB</p>

        </nav>
        <nav class="nav nav-desktop">
            <div class="main-title">
                <div class="top-search">
                    <p class="title">PODCASTWEB</p>
                    <!-- SEAERCH -->
                    <form action="?action=search" method="post" class="form">
                        <button type="submit" class="search-btn"><i class="fa-solid fa-magnifying-glass"></i></a></button>
                        <input type="text" placeholder="Wprowadź tekst" class="searh-input-text" name="search1">
                    </form>
                    <!-- *********************************************** -->
                    <?php
                    if (!isset($_SESSION['logged_in']) || $_SESSION['logged_in'] != true) {
                        echo "
                <button id='login-buttonbig' class='btn btn-log'>Zaloguj się</button>
                <button id='register-buttonbig' class='btn btn-log'>Zarejestruj się</button>";
                    } else {
                        echo "
                    <button id='login-buttonbig' class='btn btn-log disact'></button> <div class='napis'>Witaj " . $_SESSION['user']['login'] . "</div>
                    <button onclick='location.href=\"?action=logout\"' id='register-buttonbig' class='btn btn-log'>Wyloguj się</button>";
                    }

                    ?>
                </div>
                <hr class="line">
                <ul class="nav-desktop__list">
                    <li><a class="nav__link" href="#news">Newsy</a></li>
                    <li><a class="nav__link active" href="#newest">Nowe podcasty</a></li>
                    <li><a class="nav__link" href="#top">Najlepsze podcasty</a></li>
                    <li><a class="nav__link" href="#newestauthor">Nowi autorzy</a></li>
                    <li><a class="nav__link" href="#topauthor">Lista</a></li>
                    <li><a class="nav__link" href="./templates/pages/autor.php">Autor</a></li>
                    <!-- <li><a class="nav__link" href="#contact">Kontakt</a></li> -->

                </ul>
            </div>
        </nav>
        <header class="header">
            <div class="header-bgc">
                <p class="header-text">najwieksza baza <br>podcastow</p>
            </div>
        </header>
        <!-- NEWS -->
        <section class="news wrapper news" id="news">
            <?php foreach ($params['notes'] as $note) : ?>
                <h2 class="title-note"><?php echo $note['tytul'] ?></h2>

                <div class="note"><?php echo $note['tresc'] ?>
                    <p class="authNote"><?php echo $note['login'] ?></p>
                    <p class="date"><?php echo $note['data'] ?></p>
                </div>
                <hr>
            <?php endforeach; ?>
        </section>
        <!-- NEWEST PODCAST -->
        <section class="newest wrapper" id="newest">
            <h1 class="title-newest">najnowsze podcasty</h1>
            <div class="cards">
                <?php foreach ($params['newest'] as $new) : ?>
                    <div class="card1">
                        <a href="?action=showPodcast&id=<?php echo $new['Id'] ?>">
                            <img class="img" src="./img/podcasts_logo/<?php echo $new['zdjeciePodcastu'] ?>.jpg" alt=""></a>
                        <div class="title-card"><?php echo $new['tytul'] ?></div>
                        <div class="description-card newestcard">
                            <i class="fa-solid fa-heart heart"></i> <?php echo $new['srednia_ocena'] ?>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </section>
        <!-- TOP -->
        <section class="top wrapper" id="top">
            <h1 class="title-newest">Najwyzej oceniane</h1>
            <div class="cards">
                <?php foreach ($params['best'] as $best) : ?>
                    <div class="card1">
                        <a href="?action=showPodcast&id=<?php echo $best['Id'] ?>">
                            <img class="img" src="./img/podcasts_logo/<?php echo $best['zdjeciePodcastu'] ?>.jpg" alt=""></a>
                        <div class="title-card"><?php echo $best['tytul'] ?></div>
                        <div class="description-card topcard">
                            <i class="fa-solid fa-heart heart"></i> <?php echo $best['srednia_ocena'] ?>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </section>
        <!-- NEWESTAUTHOR -->
        <section class="newest wrapper" id="newestauthor">
            <h1 class="title-newest">najnowsi autorzy</h1>
            <div class="cards">
                <?php foreach ($params['newestAuthors'] as $newAuth) : ?>
                    <a href="?action=show&id=<?php echo $newAuth['Id'] ?>">
                        <div class="card1">
                            <img class="img" src="./img/authors/<?php echo $newAuth['zdjecieAutora'] ?>.jpg" alt="">
                    </a>
                    <div class="title-card"><?php echo $newAuth['imieAutora'] . " " . $newAuth['nazwiskoAutora'] ?></div>
                    <div class="description-card newestcard">
                        <i class="fa-solid fa-heart heart"></i> <?php echo $newAuth['srednia_ocena'] ?>
                    </div>
            </div>
        <?php endforeach; ?>
        </div>
        </section>
        <!-- ALL -->
        <!-- SORT DIV -->
        <section class="top wrapper" id="topauthor">
            <div class="sort-div">
                <form action="" method="get" class="sort-form1">
                    <label for="sortBy">Sortuj po:</label>
                    <select name="sortBy" id="sortBy">
                        <option value="nazwiskoAutora">Nazwisku autora</option>
                        <option value="tytul">Nazwie podcastu</option>
                        <option value="srednia_ocena">Sredniej ocenie</option>
                    </select>
                    <label for="sortOrder">Kolejnosc:</label>
                    <select name="sortOrder" id="sortOrder">
                        <option value="ASC">Rosnaco</option>
                        <option value="DESC">Malejaco</option>
                    </select>
                    <input class="btn" type="submit" value="Sortuj">
                </form>

                <!-- ----------------------------------------- -->
            </div>
            <div class="table-sort-div">

                <table cellpadding="0" cellspacing="0" border="0" class="table-sort">
                    <thead>
                        <tr>
                            <th>Nazwa podcastu</th>
                            <th>Ocena podcastu</th>
                            <th>Autor</th>
                            <th>Opcje</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($params['authorsAndPodcasts'] ?? [] as $ap) : ?>
                            <tr>
                                <td><?php echo $ap['tytul'] ?></td>
                                <td><?php echo $ap['srednia_ocena'] ?></td>
                                <td><?php echo $ap['imieAutora'] . " " . $ap['nazwiskoAutora'] ?></td>
                                <td>
                                    <a href="?action=showPodcast&id=<?php echo $ap['Id'] ?>">
                                        <button class="btn">Szczegóły Podcastu</button>
                                    </a>
                                    <a href="?action=show&id=<?php echo $ap['id_autora'] ?>">
                                        <button class="btn">Szczegóły Autora</button>
                                    </a>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </section>
        <!-- CONTACT -->
        <!-- <section class="newest wrapper" id="contact">
        <div class="contact-write">
            <h2>Wypelnij formularz i&nbsp;skontaktuj sie z nami</h2>
            <div class="contact__write-form">
                <div class="contact__write-form--left">
                    <ul>
                        <li>Imie i nazwisko: <input type="text"></li>
                        <li>Numer telefonu: <input type="text"></li>
                        <li>Email: <input type="email"></li>
                    </ul>
                </div>

                <div class="contact-rite-form--right">
                    <p>Wiadomosc</p>
                    <textarea name="" id="" cols="30" rows="10"></textarea>
                </div>

            </div>
            <button class="btn">Wyslij</button>
        </div>
    </section> -->
        <footer class="footer">
            <p class="footer__bottom-text">&copy; <span class="footer__year"></span> Krupa Mrozinsky</p>
        </footer>
        <script src="./js/main.js"></script>
</body>

</html>