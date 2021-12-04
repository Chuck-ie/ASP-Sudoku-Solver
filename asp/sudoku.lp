sudoku(X,Y,N) :- initial(X,Y,N).
{ sudoku(X,Y,N) : N=1..9 } = 1 :- X=1..9, Y=1..9.

% Jede Zelle nur maximal eine Belegung:
:- sudoku(X,Y,N), sudoku(X,Y,N'), N != N'.

% Eindeutige Wertevergabe in Reihe:
:- sudoku(X,Y,N), sudoku(X',Y,N), X != X'.

% Eindeutige Wertevergabe in Spalte:
:- sudoku(X,Y,N), sudoku(X,Y',N), Y!= Y'.

% Eindeutige Wertevergabe im Subgrid
:- sudoku(X,Y,N), sudoku(X',Y',N),
   (((X-1)/3)*3 + (Y-1)/3) == (((X'-1)/3)*3 + (Y'-1)/3),
   X!=X', Y!=Y'.

#show sudoku/3.