# Podcasty

Podcasty jest aplikacją interetową służącą do katalogowania i oceniania podcastów.
Napisany on został w języku PHP i wykorzystuje bazę danych MySQL

---

### Struktura katalogów skryptu

* /config

Katalog zawiera plik konfiguracyjny **config.php** , w pliku znajduje się konfiguracja połączenia z bazą danych.
Plik **seed.sql** zawiera przykładowe dane którymi można uzupełnić bazę danych.

* /css

W katalogu umieszczone są style CSS dla skryptu.

* /img

W tym katalogu są umieszczone pliki graficzne.

* /js

Skrypty Javascript używane przez aplikację.

* /templates

Katalog zawiera szablony HTML poszczególnych stron aplikacji.

* /Utils

Katalog zawiera kontroler aplikacji i połączenia z bazą danych.

* /

W głównym katalogu znajduje się skrypt index.php odpowiadający za uruchomienie aplikacji, oraz instalator install.php, zapisujący przykładowe dane do bazy.

---

### Instalacja i konfiguracja

Pliki skryptu należy umieścić na serwerze a następnie skonfigurować połączenie z bazą danych, używając hasła, loginu i adresu serwera.

Następnie można wgrać do bazy danych przykładowe dane, uruchamiając na serwerze skrypt komendą:

```
php install.php
```

po uruchomieniu skryptu wyświetli się pomoc, oraz dostępne parametry:

* --empty  - zainstaluje pustą strukturę bazy
* --example - zainstaluje strukturę bazy i wypełni ją przykładowymi danymi
* --drop - usunie dane z bazy

Jeżeli instalator natrafi na błąd zostanie on wypisany.

---

### Funkcjonalność aplikacji

Aplikacja podcasty składa się z widoku strony głównej oraz widoków podstron.

#### Widok strony głównej

Na widok strony głównej składają się następujące moduły:

W górnym pasku znajdują się przyciski **rejestracji**, **logowania** oraz **wyszukiwarka**.

Funkcjonalność wyszukiwarki jest następująca:

Po wpisaniu wyszukiwanegego tekstu moduł wyszukuje dostępne zasoby, biorące pod uwagę rodzaj podcastu, autora oraz tytuł.

Poniżej górnego paska znajduje się menu przekierowujące do następujących sekcji:

* News - są to wiadomości, które mogą dodawać użytkownicy mający uprawnienia do dodawnia newsów.
* Nowe podcasty - wyświetla trzy ostatnio dodane podcasty do bazy danych.
* Najlepsze podcasty - w tej sekcjio wyświetlane są podcasty z najwyżą średnią.
* Nowi autorzy - wyświetla trzech ostatnio dodanych autorów.
* Lista - lista zawiera zbiór wszystkich podcastów i autorów. Wyniki znajdujące się na liście można sortować

#### Widok podstron

Aplikacja podcasty zawiera też następujące widoki niezwiązane ze stroną główną:

* Widok pojedynczego podcastu
* Widok autora
* Wyniki wyszukiwania

Wyżej wymienione widoki są oddzielnymi podstronami niezwiązanymi ze stroną główną.

Widok pojedyńczego podcastu oraz autora zawiera sekcję komentarzy. Niezalogowany użytkownik widzi komentarze.

Zalogowany może dodawać nowy komentarz, oraz edytować swoje własne.


Skrypt posiada również możliwość wystawiania ocen podcastom. Wystawiać oceny może zalogowany użytkownik. Ocen nie da się edytować.
