% �������� ��� ���������� ���������� ���������
complement(Set, Universal, Complement) :-
    subtract(Universal, Set, Complement).

% ��������������� �������� ��� �������� ���������� �� ������
remove_duplicates([], []).
remove_duplicates([H|T], [H|Result]) :-
    \+ member(H, T),
    remove_duplicates(T, Result).
remove_duplicates([H|T], Result) :-
    member(H, T),
    remove_duplicates(T, Result).

% �������� ��� ����� �������������� ��������� � ��������� ������������
input:-
    write('����� ���������� ���������.'),nl,
    write('������� ������������� ���������:'),
    read(UniversalSet),
    write('������� ���������:'),
    read(InputSet),
    remove_duplicates(InputSet, UniqueSet),
    complement(UniqueSet, UniversalSet, Complement),
    write('���������� ���������: '), write(UniqueSet), nl,
    write('����������: '), write(Complement), nl.
