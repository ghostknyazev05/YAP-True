% ����� � ������ �����������
stamp(buick).
stamp(chrysler).
stamp(mustang).

% ����� � ������ �����������
color(blue).
color(black).

% �������� ��� ������� ������
solve :-
   stamp(Mark),
   color(Color),

   % ��������� ������� ���������
   (braun(Mark, Color); jones(Mark, Color); smith(Mark, Color)),

   % ����� �������
   format('����� ����������: ~w~n', [Mark]),
   format('���� ����������: ~w~n', [Color]).

% ������� ��� ��������� ������: ���� ����� �����, ���� ���� �������
braun(Mark, Color) :-
   ((Mark = buick, Color \= blue);(Mark \= buick, Color = blue)).

% ������� ��� ��������� ������: ���� ����� �����, ���� ���� �������
jones(Mark, Color) :-
   ((Mark = chrysler, Color \= black); (Mark\=chrysler, Color = black)).

% ������� ��� ��������� �����: ���� ����� �����, ���� ���� �������.
smith(Mark, Color) :-
   ((Mark = mustang, Color \= blue); (Mark \= mustang, Color = blue)).

% ������ �������
go :-
   solve.
