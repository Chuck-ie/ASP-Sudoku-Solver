% initial(row, column, number)

{ sudoku(X,Y,Z) } :- not initial(X,Y,_), X=1..9, Y=1..9, Z=1..9.
{ sudoku(X,Y,Z) } :- initial(X',Y',Z'), X=X', Y=Y', Z=Z'.

:- { sudoku(X,Y,Z) } != 81.

:- sudoku(X,Y,Z), sudoku(X,Y',Z), Y!=Y'.
:- sudoku(X,Y,Z), initial(X,Y',Z), Y!=Y'.

:- sudoku(X,Y,Z), sudoku(X',Y,Z), X!=X'.
:- sudoku(X,Y,Z), initial(X',Y,Z), X!=X'.

:- sudoku(X,Y,Z), sudoku(X,Y,Z'), Z!=Z'.


#show sudoku/3.
