% Факты о марках автомобилей
stamp(buick).
stamp(chrysler).
stamp(mustang).

% Факты о цветах автомобилей
color(blue).
color(black).

% Предикат для решения задачи
solve :-
   stamp(Mark),
   color(Color),

   % Проверяем условия показаний
   (braun(Mark, Color); jones(Mark, Color); smith(Mark, Color)),

   % Вывод решения
   format('Марка автомобиля: ~w~n', [Mark]),
   format('Цвет автомобиля: ~w~n', [Color]).

% Правила для показаний Брауна: либо марка верна, либо цвет неверен
braun(Mark, Color) :-
   ((Mark = buick, Color \= blue);(Mark \= buick, Color = blue)).

% Правила для показаний Джонса: либо марка верна, либо цвет неверен
jones(Mark, Color) :-
   ((Mark = chrysler, Color \= black); (Mark\=chrysler, Color = black)).

% Правила для показаний Смита: либо марка верна, либо цвет неверен.
smith(Mark, Color) :-
   ((Mark = mustang, Color \= blue); (Mark \= mustang, Color = blue)).

% Запуск решения
go :-
   solve.
