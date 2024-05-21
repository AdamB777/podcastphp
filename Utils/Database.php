<?php

class Database
{
    private PDO $conn;

    public function __construct(array $config)
    {
        $this->createConnection($config);

    }

    private function createConnection(array $config)
    {
        $dsn = "mysql:dbname={$config['database']};host={$config['host']}";
        $this->conn = new PDO(
            $dsn,
            $config['user'],
            $config['password']
        );
    }

    public function getNotes()
    {
        $notes = [];

        $query = "SELECT newsy.tytul, newsy.tresc, newsy.data, uzytkownicy.login
        FROM newsy
        JOIN uzytkownicy
        ON newsy.idUzytkownika = uzytkownicy.Id
        WHERE uzytkownicy.czyAdmin = 1;
        ";
        $result = $this->conn->query($query, PDO::FETCH_ASSOC);
        // $notes=$result->fetch(PDO::FETCH_ASSOC);
        foreach ($result as $row) {
            $notes[] = $row;
        }
        // dump($notes);
        // exit;
        return $notes;
    }

    public function getNewest()
    {
        $notes = [];

        $query = "SELECT podcasty.Id, podcasty.tytul, podcasty.zdjeciePodcastu, ROUND(SUM(oceny.ocena) / COUNT(oceny.ocena), 2) as srednia_ocena
        FROM podcasty
        JOIN oceny ON podcasty.Id = oceny.idPodcastu
        GROUP BY podcasty.Id
        ORDER BY podcasty.data DESC
        LIMIT 3
        ";
        $result = $this->conn->query($query, PDO::FETCH_ASSOC);
        // $notes=$result->fetch(PDO::FETCH_ASSOC);
        foreach ($result as $row) {
            $newest[] = $row;
        }
        // dump($notes);
        // exit;
        return $newest;
    }

    public function getTheBestestPodcast()
    {

        $query = "SELECT podcasty.Id, podcasty.tytul, podcasty.zdjeciePodcastu, (SUM(oceny.ocena)/COUNT(oceny.idPodcastu)) AS srednia_ocena
        FROM podcasty
        JOIN oceny ON podcasty.id = oceny.idPodcastu
        GROUP BY podcasty.id
        ORDER BY srednia_ocena DESC
        LIMIT 3
        ";
        $result = $this->conn->query($query, PDO::FETCH_ASSOC);
        // $notes=$result->fetch(PDO::FETCH_ASSOC);
        foreach ($result as $row) {
            $best[] = $row;
        }
        // dump($notes);
        // exit;
        return $best;
    }

    public function getTheBestestPodcastOne(int $id)
    {

        $query = "SELECT podcasty.Id, podcasty.tytul, podcasty.zdjeciePodcastu, kategorie.nazwa,kategorie.opis, (SUM(oceny.ocena)/COUNT(oceny.idPodcastu)) AS srednia_ocena FROM podcasty JOIN kategorie ON podcasty.idKategorii = kategorie.Id JOIN oceny ON podcasty.Id = oceny.idPodcastu WHERE podcasty.Id = $id GROUP BY podcasty.Id;
        ";
        $result = $this->conn->query($query, PDO::FETCH_ASSOC);
        // $notes=$result->fetch(PDO::FETCH_ASSOC);
        foreach ($result as $row) {
            $best[] = $row;
        }
        // dump($notes);
        // exit;
        return $best;
    }

    public function getTheNewestPodcastOne(int $id)
    {

        $query = "SELECT podcasty.Id, podcasty.tytul, podcasty.zdjeciePodcastu, kategorie.nazwa,kategorie.opis, (SUM(oceny.ocena)/COUNT(oceny.idPodcastu)) AS srednia_ocena FROM podcasty JOIN kategorie ON podcasty.idKategorii = kategorie.Id JOIN oceny ON podcasty.Id = oceny.idPodcastu WHERE podcasty.Id = $id GROUP BY podcasty.Id;
        ";
        $result = $this->conn->query($query, PDO::FETCH_ASSOC);
        // $notes=$result->fetch(PDO::FETCH_ASSOC);
        foreach ($result as $row) {
            $best[] = $row;
        }
        // dump($notes);
        // exit;
        return $best;
    }

    public function getNewestAuthors()
    {
        $notes = [];

        $query = "SELECT autorzy.Id, autorzy.imieAutora ,autorzy.nazwiskoAutora, autorzy.zdjecieAutora, ROUND(SUM(oceny.ocena) / COUNT(oceny.ocena), 2) as srednia_ocena
        FROM autorzy
        JOIN oceny ON autorzy.Id = oceny.idPodcastu
        GROUP BY autorzy.Id
        ORDER BY autorzy.data DESC
        LIMIT 3
        ";
        $result = $this->conn->query($query, PDO::FETCH_ASSOC);
        // $notes=$result->fetch(PDO::FETCH_ASSOC);
        foreach ($result as $row) {
            $newest[] = $row;
        }
        // dump($notes);
        // exit;
        return $newest;
    }

    public function getNewestAuthor(int $id)
    {
        $notes = [];

        $query = "SELECT autorzy.*, podcasty.tytul as tytul_podcastu, kategorie.nazwa as nazwa_kategorii FROM autorzy JOIN podcasty ON autorzy.Id=podcasty.idAutora JOIN kategorie ON podcasty.idKategorii=kategorie.Id WHERE autorzy.Id=$id";
        $result = $this->conn->query($query, PDO::FETCH_ASSOC);
        // $notes=$result->fetch(PDO::FETCH_ASSOC);
        foreach ($result as $row) {
            $newauth[] = $row;
        }

        return $newauth;
    }

    public function getAllCommentsForAuthor(int $id)
    {
        $notes = [];

        $query = "SELECT komentarzedoautorow.tytul, komentarzedoautorow.tresc, komentarzedoautorow.data, uzytkownicy.login
        FROM komentarzedoautorow
        JOIN uzytkownicy ON komentarzedoautorow.idUzytkownika = uzytkownicy.Id
        WHERE komentarzedoautorow.idAutora = $id
        ORDER BY komentarzedoautorow.data DESC";
        $result = $this->conn->query($query, PDO::FETCH_ASSOC);
        // $notes=$result->fetch(PDO::FETCH_ASSOC);
        foreach ($result as $row) {
            $newauthcomment[] = $row;
        }

        return $newauthcomment;
    }

    public function getAllCommentsForPodcast(int $id)
    {
        $notes = [];

        $query = "SELECT komentarzedopodcastow.Id, komentarzedopodcastow.tytul, komentarzedopodcastow.tresc, komentarzedopodcastow.data, uzytkownicy.login
        FROM komentarzedopodcastow
        JOIN uzytkownicy ON komentarzedopodcastow.idUzytkownika = uzytkownicy.Id
        WHERE komentarzedopodcastow.idPodcastu = $id
        ORDER BY komentarzedopodcastow.data DESC";
        $result = $this->conn->query($query, PDO::FETCH_ASSOC);
        // $notes=$result->fetch(PDO::FETCH_ASSOC);
        foreach ($result as $row) {
            $newauthcomment[] = $row;
        }

        return $newauthcomment;
    }

    public function getAuthorById(int $id)
    {
        $query = "SELECT * FROM authors WHERE id = :id";
        $stmt = $this->conn->prepare($query);
        $stmt->bindValue(':id', $id, PDO::PARAM_INT);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function createNote(array $data): void
    {
        $query = "INSERT INTO komentarzedoautorow (tytul, tresc, idAutora, idUzytkownika) 
                  VALUES (:title, :description, :authorId, :userId)";

        $stmt = $this->conn->prepare($query);
        $stmt->bindValue(':title', $data['title'], PDO::PARAM_STR);
        $stmt->bindValue(':description', $data['description'], PDO::PARAM_STR);
        $stmt->bindValue(':authorId', $data['authorId'], PDO::PARAM_INT);
        $stmt->bindValue(':userId', $data['userId'], PDO::PARAM_INT);
        $stmt->execute();
    }

    public function createPodcastNote(array $data): void
    {
        

        $query = "INSERT INTO komentarzedopodcastow (tytul, tresc, idPodcastu, idUzytkownika, data) 
                  VALUES (:title, :description, :podcastId, :userId, :datanew)";

        $stmt = $this->conn->prepare($query);
        $stmt->bindValue(':title', $data['title'], PDO::PARAM_STR);
        $stmt->bindValue(':description', $data['description'], PDO::PARAM_STR);
        $stmt->bindValue(':podcastId', $data['podcastId'], PDO::PARAM_INT);
        $stmt->bindValue(':userId', $data['userId'], PDO::PARAM_INT);
        $stmt->bindValue(':datanew', $data['datanew']);
        $stmt->execute();
    }

    public function search($word)
    {
        $query = "SELECT DISTINCT podcasty.*, autorzy.*, autorzy.Id as id_autora, kategorie.nazwa FROM podcasty JOIN autorzy ON podcasty.idAutora=autorzy.Id JOIN kategorie ON podcasty.idKategorii=kategorie.Id WHERE podcasty.tytul LIKE '%$word%' OR autorzy.imieAutora LIKE '%$word%' OR autorzy.nazwiskoAutora LIKE '%$word%' OR autorzy.opisAutora LIKE '%$word%' OR kategorie.nazwa LIKE '%$word%'";
        $result = $this->conn->query($query);
        return $result->fetchAll();
    }


    public function getPodcastsAndAuthorsRatings($sortBy = null, $sortOrder = 'ASC')
    {
        if ($sortBy === null) {
            $sortBy = 'nazwiskoAutora';
        }

        $query = "SELECT podcasty.Id, podcasty.tytul, AVG(oceny.ocena) as srednia_ocena, autorzy.imieAutora, autorzy.nazwiskoAutora, autorzy.Id as id_autora
        FROM podcasty
        JOIN autorzy ON podcasty.idAutora = autorzy.Id
        LEFT JOIN oceny ON podcasty.Id = oceny.idPodcastu
        GROUP BY podcasty.Id
        ORDER BY $sortBy $sortOrder
        ";
        $stmt = $this->conn->query($query);
        return $stmt->fetchAll();
    }


    public function checkLoginExist(string $login): bool
    {
        $query = "SELECT COUNT(*) FROM `uzytkownicy` WHERE login = '$login'";
        $result = $this->conn->query($query);
        $number_rows = $result->fetchAll();
        if ($number_rows >= 1)
        {
            return true;
        }
        return false;
    }


    public function createUser($imie,$nazwisko,$login,$email, $hash_pass,) {
        $query = "INSERT INTO uzytkownicy (imie,nazwisko,login ,email,hash_pass) VALUES (:imie, :nazwisko,:login, :email, :hash_pass)";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(':imie', $imie);
        $stmt->bindParam(':nazwisko', $nazwisko);
        $stmt->bindParam(':login', $login);
        $stmt->bindParam(':email', $email);
        $stmt->bindParam(':hash_pass', $hash_pass);
        $stmt->execute();
        }

        public function getUser($login) {
            $query = "SELECT * FROM uzytkownicy WHERE login = :login";
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(':login', $login);
            $stmt->execute();
            return $stmt->fetch();
            }

            public function checkIfRated($user_id, $podcast_id) {
                $query = "SELECT * FROM oceny WHERE idUzytkownika = :user_id AND idPodcastu = :podcast_id";
                $stmt = $this->conn->prepare($query);
                $stmt->bindParam(':user_id', $user_id);
                $stmt->bindParam(':podcast_id', $podcast_id);
                $stmt->execute();
                return $stmt->fetch() != false;
                }
                
                public function addRating($user_id, $podcast_id, $rating) {
                $query = "INSERT INTO oceny (idUzytkownika, idPodcastu, ocena) VALUES (:user_id, :podcast_id, :rating)";
                $stmt = $this->conn->prepare($query);
                $stmt->bindParam(':user_id', $user_id);
                $stmt->bindParam(':podcast_id', $podcast_id);
                $stmt->bindParam(':rating', $rating);
                $stmt->execute();
                }
                public function updateComment(   $data)
{
    $query = "UPDATE komentarzedopodcastow SET tytul=:title, tresc=:description  WHERE Id=:id";
    $stmt = $this->conn->prepare($query);
    $stmt->bindParam(':title', $data['comment_title']);
    $stmt->bindParam(':description', $data['edit']);
    // $stmt->bindParam(':date', $data['comment_data']);
    $stmt->bindParam(':id', $data['comment_id']);
    $stmt->execute();
    // dump($id);
    // exit;
    return true;
}
public function deleteComment($id)
{
    $query = "DELETE FROM komentarzedopodcastow WHERE Id = :id";
    $stmt = $this->conn->prepare($query);
    $stmt->bindParam(':id', $id);
    $stmt->execute();
    return true;
}

}