% initial(row, column, number)

{ sudoku(X,Y,Z) } :- not initial(X,Y,_), X=1..9, Y=1..9, Z=1..9.
{ sudoku(X,Y,Z) } :- initial(X,Y,Z).

% remove a set if a row holds the same number twice
:- sudoku(X,Y,Z), sudoku(X,Y',Z), Y!=Y'.
:- sudoku(X,Y,Z), initial(X,Y',Z), Y!=Y'.

% remove a set if a column holds the same number twice
:- sudoku(X,Y,Z), sudoku(X',Y,Z), X!=X'.
:- sudoku(X,Y,Z), initial(X',Y,Z), X!=X'.

% remove a set if a cell holds two or more values
:- sudoku(X,Y,Z), sudoku(X,Y,Z'), Z!=Z'.

% remove all sets, that have either not all cells filled (<81) or filled the same cells multiple times (> 81)
:- { sudoku(X,Y,Z) } != 81.

#show sudoku/3.
