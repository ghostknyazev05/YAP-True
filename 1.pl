% �������� �������� ��� ��������������� �����
reverse_number(N, R) :- reverse_number(N, 0, R).

% ������� ������: ���� ����� ����� 0, ���������� ����������� ���������
reverse_number(0, Acc, Acc).

% ����������� ������: ��������� ��������� ����� � ��������� � � ����� �������
reverse_number(N, Acc, R) :-
    N > 0,
    LastDigit is N mod 10,
    Rest is N // 10,
    NewAcc is Acc * 10 + LastDigit,
    reverse_number(Rest, NewAcc, R).

% ������� ����� � ������ ����������
input :-
    write('�������� ����������� ����� � ������� �������'),nl,
    write('������� �����: '),
    read(N),
    reverse_number(N, R),
    write('�������� �����: '), write(R), nl.
