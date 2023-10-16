% Ramzi Yakan   300078504


% Test sudokus
sudoku([[2,1,4,3],[4,3,2,1],[1,2,3,4],[3,4,1,2]]).
sudoku([[2,1,4,3],[4,3,2,1],[1,2,3,3],[3,4,1,2]]).


% Q1
different(O) :-
    sort(O, S),
    length(O, OLength),
    length(S, SLength),
    OLength == SLength.


% Q2
extract4Columns(M, L) :-
    maplist(nth0(0), M, A),
    maplist(nth0(1), M, B),
    maplist(nth0(2), M, C),
    maplist(nth0(3), M, D),
    append([[A],[B],[C],[D]], L).


% Q3
extract4Quadrants(M, L) :- 
    nth0(0, M, A),
    nth0(1, M, B),
    nth0(2, M, C),
    nth0(3, M, D),
    append([[A],[B],[C],[D]], L).


% Q4
allDifferents(L) :-
    nth0(0, L, A),
    nth0(1, L, B),
    nth0(2, L, C),
    nth0(3, L, D),
    different(A), different(B), different(C), different(D).


%Q5
checkSudoku(M) :-
    extract4Columns(M, C),
    extract4Quadrants(M, Q),
    allDifferents(M), allDifferents(C), allDifferents(Q).





