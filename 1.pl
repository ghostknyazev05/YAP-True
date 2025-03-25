% Основной предикат для переворачивания числа
reverse_number(N, R) :- reverse_number(N, 0, R).

% Базовый случай: если число стало 0, возвращаем накопленный результат
reverse_number(0, Acc, Acc).

% Рекурсивный случай: извлекаем последнюю цифру и добавляем её в новый порядок
reverse_number(N, Acc, R) :-
    N > 0,
    LastDigit is N mod 10,
    Rest is N // 10,
    NewAcc is Acc * 10 + LastDigit,
    reverse_number(Rest, NewAcc, R).

% Функция ввода и вывода результата
input :-
    write('Записать натуральное число в обратом порядке'),nl,
    write('Введите число: '),
    read(N),
    reverse_number(N, R),
    write('Обратное число: '), write(R), nl.
