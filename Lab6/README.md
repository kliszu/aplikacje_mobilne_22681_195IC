# Lab 6

## Ekran 1 - ładowanie obrazków

<hr>

Kod ładujcy dwa obrazki, jeden lokalnie, a drugi z linka za pomocą asyncImage.

![images_code](sc/images_code.png)

![images_screen](sc/images_screen.png)

## Ekran 2 - slider

<hr>

Kod ładuje obrazek z pliku, slider umożliwia zmienianie rozmiaru obrazka

![slider_code](sc/slider_code.png)

![slider_screen](sc/slider_screen_1.png)

![slider_screen_1](sc/slider_screen_2.png)


## Ekran 3 - ikony i lazy loading

<hr>

Ikony zostały załadowe z bazy sf symbols dosępnych na platofrmie ios. Lazy loading zostało zaimplementowane za pomocą WebImage.

![icons_ll_code](sc/lazy_loading_code.png)

![icons_ll_sreen](sc/lazy_loading_screen.png)

## Ekran 4 - sprawdzanie połączenia

<hr>

W tym celu wykorzystałem bibliotekę Reach która zwraca status połączenia z siecią w postaci enum. 

![connection_code](sc/connect_code.png)

![connection_screen](sc/connect_screen_1.png)

![connection_screen_1](sc/connect_screen_2.png)

## Ekran 5 - zapis do lokalniej bazy danych

<hr>

Nie udało mi się znaleść odpowiednika AsyncStorage dla natywnego IOSa dlatego wykonałem ekran gdzie zapisuje listę zadań do lokalnej bazy danych za pomocą biblioteki Realm

![db_code](sc/db_code.png)

![db_screen_1](sc/db_screen.png)

![db_screen_2](sc/db_screen_1.png)

![db_screen_3](sc/db_screen_2.png)

## Ekran 6 - status połączenia

Wykonuję zapytanie do api, które zwraca losowe żarty z chuckiem norrisem, po każdym zapytaniu żart jest zapisany lokalnie, jeśli utracimy połączenie z internetem zostanie wyświetlona stosowna wiadomość, wcześniej wyświetlone żarty są nadal dostępne.

![status_code](sc/status_code.png)

![status_screen_1](sc/status_screen_1.png)

![status_screen_3](sc/status_screen_2.png)
