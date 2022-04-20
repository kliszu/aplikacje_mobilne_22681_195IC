#  Lab 2 - navigator

#### Przykładowe screeny działającej aplikacji

[!home_view](screenshots/Home_view.png)

[!user_view](screenshots/User_view.png)

[!settings_view](screenshots/Settings_view.png)

[!User_view_dark_mode](screenshots/User_view_black.png)


Zadanie wykonałem za pomocą komponentu TabView. Stworzyłem 3 widoki: Home, User i Settings, gdzie na środku ekranu umieściłem okrąg w różnych kolorach z tytułem widoku następnie za ww komponentu dodałem widok oraz pasek nawigacji z ikonami i tytułami róznymi dla kazdego widoku.

[!project_files](screenshots/project_files.png)

Struktura plików projektu

[!TabView](screenshots/Tab_view.png)

Kod zawarty w głównym widoku aplikacji, komponent TabView zawiera wszystkie nasze widoki, do kadzdego widoku zostala dodany Symbol SF oraz tytuł. Uzalezniłem równiez kolor ikony aktywnej karty. Dla motywu domyślnego(białego) tło ikony jest czarne, dla ciemnego motywu kolor tła ikony będzie biały.


Kazdy plik widoku zawiera ten sam schemat, został dodany Zstack gdzie wygenerowałem okrąg o średnicy 300 pikseli i wypełniłem go kolorem, dodatkowo został dodany tekst wyświetlający nazwę danego widoku w kolorze białym.

[!HomeView_code](screenshots/HomeView_code.png)

Kod źródłowy widoku Home

[!UserView_code](screenshots/UserView_code.png)

Kod źródłowy widoku User

[!Settings_code](screenshots/UserView_code.png)

Kod źródłowy widoku Settings


