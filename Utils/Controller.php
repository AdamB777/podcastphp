<?php

require_once("./Utils/Database.php");
require_once("./Utils/View.php");

class Controller
{
    private const DEFAULT_ACTION = 'main';
    private static $configuration = [];

    private View $view;
    private Database $database;
    private array $request;

    public static function initConfiguration(array $configuration)
    {
        self::$configuration = $configuration;
    }

    public function __construct(array $request)
    {
        $this->database = new Database(self::$configuration['db']);
        $this->request = $request;

        // $action=$this->request=['action']??self::DEFAULT_ACTION;

        $viewParams = [];
        $this->view = new View();
    }

    public function run()
    {

        switch ($this->action()) {
            case 'create':
                $page = 'authors';
                $data = $this->getRequestPost();
                if (!empty($data)) {
                    $noteData = [
                        'title' => $data['title'],
                        'description' => $data['description'],
                        'authorId' => $data['authorId'],
                        'userId' => $data['userId']
                    ];
                    $this->database->createNote($noteData);
                    header('Location: ' . $_SERVER['HTTP_REFERER']);
                    // exit;
                }
                break;
            case 'updateComment':
                $page = 'podcast';
                $data = $this->getRequestPost();
                if (!empty($data)) {
                    $this->database->updateComment( $data);
                    header('Location: ' . $_SERVER['HTTP_REFERER']);
                }
                // dump($data);
                // exit;
                break;

            case 'createPodcsastComment':
                $page = 'podcast';
                $data = $this->getRequestPost();
                if (!empty($data)) {
                    $noteData = [
                        'title' => $data['title'],
                        'description' => $data['description'],
                        'podcastId' => $data['podcastId'],
                        'userId' => $data['userId'],
                        'datanew'=>$data['datanew']
                    ];
                    // dump($data);
                    // exit;
                    $this->database->createPodcastNote($noteData);
                    header('Location: ' . $_SERVER['HTTP_REFERER']);
                    // exit;
                }
                break;
                case 'deleteComment':
                    // $page = 'podcast';
                    $id = $_GET['comment_id'];
                    $this->database->deleteComment($id);
                    header('Location: ' . $_SERVER['HTTP_REFERER']);
                    // dump($id);
                    // exit;
                    break;
    
            case 'register':
                $page = 'main';
                $data = $this->getRequestPost();
                if (!empty($data)) {
                    $imie = $data['imieR'];
                    $nazwisko = $data['nazwiskoR'];
                    $login = $data['loginR'];
                    $email = $data['emailR'];
                    $password = $data['passwordR'];
                    $passwordRepeat = $data['password-repeatR'];
                    $hash_pass = password_hash($password, PASSWORD_DEFAULT);

                    if ($password !== $passwordRepeat) {
                        $params['error'] = "Hasła się różnią";
                    } else {
                        $this->database->createUser($imie, $nazwisko, $login, $email, $hash_pass);
                        $params['success'] = "Rejestracja przebiegła pomyślnie";
                    }
                }
                break;

                // session_start() ;
            case 'login':

                // $page = 'main';
                $data = $this->getRequestPost();
                if (!empty($data)) {
                    $login = $data['usernameL'];
                    $password = $data['passwordL'];
                    $user = $this->database->getUser($login);
                    if (password_verify($password, $user['hash_pass'])) {
                        $_SESSION['logged_in'] = true;

                        $_SESSION['user'] = [
                            'id' => $user['Id'],
                            'login' => $user['login'],
                            'email' => $user['email']
                        ];

                        header('Location: index.php');
                    } else {
                        $params['error'] = "Błędny login lub hasło";
                    }
                }
                break;
            case 'logout':
                session_start();
                session_destroy();
                header('Location: index.php');
                break;

            case 'search':
                $page = 'searchList';
                $data = $this->getRequestPost();
                if (!empty($data)) {
                    $search = $data['search1'];
                    $searchResults = $this->database->search($search);
                    $viewParams = [
                        'searchResults' => $searchResults,
                        'search' => $search,
                    ];
                }
                break;

                // case 'showTopPodcast':
                //     $page = 'bestPodcast';
                //     $data = $this->getRequestGet();
                //     $noteId = (int)$data['id'];
                //     $viewParams = [
                //         'bestOnePodcast' => $this->database->getTheBestestPodcastOne($noteId)
                //     ];
                //     break;
            case 'showPodcast':
                $page = 'podcast';
                $data = $this->getRequestGet();
                $noteId = (int)$data['id'];
                $viewParams = [
                    'bestOnePodcast' => $this->database->getTheNewestPodcastOne($noteId),
                    'newestPodcastComment' => $this->database->getAllCommentsForPodcast($noteId)
                ];

                break;
            case 'show':
                $page = 'authors';
                $data = $this->getRequestGet();
                $noteId = (int)$data['id'];
                $viewParams = [
                    'newestAuthor' => $this->database->getNewestAuthor($noteId),
                    'newestAuthorComment' => $this->database->getAllCommentsForAuthor($noteId)
                ];
                break;
            case 'rate':
                $page = 'podcast';
                header('Location: ' . $_SERVER['HTTP_REFERER']);
                if (isset($_SESSION['logged_in']) && $_SESSION['logged_in'] === true) {

                    $user_id = $_SESSION['user']['id'];
                    $podcast_id = $_POST['podcast_id'];
                    $rating = $_POST['rating'];
                    if (!$this->database->checkIfRated($user_id, $podcast_id)) {
                        $this->database->addRating($user_id, $podcast_id, $rating);
                        $params['success'] = "Podcast został oceniony";
                    } else {
                        $params['error'] = "Ten podcast został już przez Ciebie oceniony";
                    }
                } else {
                    $params['error'] = "Musisz być zalogowany, aby móc oceniać podcasty";
                }

                // dump($params);
                break;
            default:
                $page = 'main';
                // $viewParams=['resultList']='wysw not';
                $data = $this->getRequestGet();
                $sortBy = isset($data['sortBy']) ? $data['sortBy'] : 'nazwiskoAutora';
                $sortOrder = isset($data['sortOrder']) ? $data['sortOrder'] : 'asc';
                $viewParams = [
                    'notes' => $this->database->getNotes(),
                    'newest' => $this->database->getNewest(),
                    'best' => $this->database->getTheBestestPodcast(),
                    'newestAuthors' => $this->database->getNewestAuthors(),
                    'authorsAndPodcasts' => $this->database->getPodcastsAndAuthorsRatings($sortBy, $sortOrder),

                ];
                // $this->database->createNote($data);
                // $newest=$this->database->getNewest();
                // dump($newest);
                break;
        }
        $this->view->render($page, $viewParams ?? []);
    }

    private function action()
    {
        $data = $this->getRequestGet();
        return $data['action'] ?? self::DEFAULT_ACTION;
    }

    private function register()
    {
        echo "kaczka";
    }

    private function getRequestGet(): array
    {
        return $this->request['get'] ?? [];
    }

    private function getRequestPost(): array
    {
        return $this->request['post'] ?? [];
    }
}
