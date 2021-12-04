val(1..9).
subgrid_size(3).

sudoku(X,Y,N)  :- initial(X,Y,N).
{ sudoku(X,Y,N) } :- not initial(X,Y,N), val(X), val(Y), val(N).

% Feld definieren
:- S = #count { X,Y,N : sudoku(X,Y,N) }, S != K*K*K*K, subgrid_size(K).

% Jede Zelle nur maximal eine Belegung:
:- sudoku(X,Y,N), sudoku(X,Y,N'), N != N'. 

% Eindeutige Wertevergabe in Reihe:
:- sudoku(X,Y,N), sudoku(X',Y,N), X != X'.

% Eindeutige Wertevergabe in Spalte:
:- sudoku(X,Y,N), sudoku(X,Y',N), Y!= Y'.

% Eindeutige Wertevergabe im Subgrid
:-  sudoku(X,Y,N), sudoku(X',Y',N),
    g = (((X-1)/S)*S + (Y-1)/S), g' = (((X'-1)/S)*S + (Y'-1)/S), g == g', 
    subgrid_size(S).

#show sudoku/3.