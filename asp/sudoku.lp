% initial(row, column, number)

{ sudoku(X,Y,Z) } :- not initial(X,Y,_), X=1..9, Y=1..9, Z=1..9.
{ sudoku(X,Y,Z) } :- initial(X,Y,Z).

% removes all sets that use the same cell twice
:- sudoku(X,Y,Z), sudoku(X,Y,Z'), Z!=Z'.

:- sudoku(X,Y,Z), sudoku(X,Y',Z), Y!=Y'.
:- sudoku(X,Y,Z), sudoku(X',Y,Z), X!=X'.


:- sudoku(X,Y,Z), sudoku(X',Y',Z), X=1..3, X'=1..3, Y=1..3, Y'=1..3, X!=X', Y!=Y'.
:- sudoku(X,Y,Z), sudoku(X',Y',Z), X=1..3, X'=1..3, Y=4..6, Y'=4..6, X!=X', Y!=Y'.
:- sudoku(X,Y,Z), sudoku(X',Y',Z), X=1..3, X'=1..3, Y=7..9, Y'=7..9, X!=X', Y!=Y'.


:- sudoku(X,Y,Z), sudoku(X',Y',Z), X=4..6, X'=4..6, Y=1..3, Y'=1..3, X!=X', Y!=Y'.
:- sudoku(X,Y,Z), sudoku(X',Y',Z), X=4..6, X'=4..6, Y=4..6, Y'=4..6, X!=X', Y!=Y'.
:- sudoku(X,Y,Z), sudoku(X',Y',Z), X=4..6, X'=4..6, Y=7..9, Y'=7..9, X!=X', Y!=Y'.


:- sudoku(X,Y,Z), sudoku(X',Y',Z), X=7..9, X'=7..9, Y=1..3, Y'=1..3, X!=X', Y!=Y'.
:- sudoku(X,Y,Z), sudoku(X',Y',Z), X=7..9, X'=7..9, Y=4..6, Y'=4..6, X!=X', Y!=Y'.
:- sudoku(X,Y,Z), sudoku(X',Y',Z), X=7..9, X'=7..9, Y=7..9, Y'=7..9, X!=X', Y!=Y'.




% remove all sets, that have either not all cells filled (<81) or filled the same cells multiple times (> 81)
:- { sudoku(X,Y,Z) } != 81.

#show sudoku/3.
