#  Lab 7 - ToDoList

<hr>

Aplikacja korzysta z frameworku Core Data, zdefiniowałem sobie model Task o następujących atrybutach: id, isDone, name, date. Appka ma dwa ekrany, jeden z otwartymi zadaniami oraz polem dodawania nowego zadania i widok listy zakończonych zadań. Kazde zadanie ma zdefiniowane gesty po przeciągnieciu w lewo mozna usunac zadanie z listy, w prawo mozna oznaczyc zadanie jako wykoanane, wtedy pojawi sie na liscie ukonczonych zadan. Podczas pierwszego uruchomienia aplikacji zostaje utworzona baza danych, poźniej przy kazdym kolejnym uruchomieniu apki odczytuje ona z niej informacje.

## Początkowy stan kazdego z ekranow, brak zadnych dodanych taskow.

![initial_state_1](sc/app_initial_state_pending_tasks.png)

![initial_state_2](sc/app_initial_state_completed_task.png)

## Dodanie nowego zadania

![add_new_task](sc/add_task.png)

## Widzimy zadanie wcześniej oznaczone jako ukończone pojawiło się w drugim widoku

![completed_task_action](sc/completed_task.png)


## Screeny pokazujące gesty którymi mozemy usuwac zadania oraz  oznaczac je jako ukonczone


![complete_task_action](sc/complete_task_action.png)

![delete_task_action](sc/delete_task_action.png)