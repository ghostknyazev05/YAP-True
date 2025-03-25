% Предикат для нахождения дополнения множества
complement(Set, Universal, Complement) :-
    subtract(Universal, Set, Complement).

% Вспомогательный предикат для удаления дубликатов из списка
remove_duplicates([], []).
remove_duplicates([H|T], [H|Result]) :-
    \+ member(H, T),
    remove_duplicates(T, Result).
remove_duplicates([H|T], Result) :-
    member(H, T),
    remove_duplicates(T, Result).

% Предикат для ввода универсального множества и множества пользователя
input:-
    write('Найти дополнение множества.'),nl,
    write('Введите универсальное множество:'),
    read(UniversalSet),
    write('Введите множество:'),
    read(InputSet),
    remove_duplicates(InputSet, UniqueSet),
    complement(UniqueSet, UniversalSet, Complement),
    write('Уникальное множество: '), write(UniqueSet), nl,
    write('Дополнение: '), write(Complement), nl.
