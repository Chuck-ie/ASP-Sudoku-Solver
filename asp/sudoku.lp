% GENERATE: grid with possible answer sets
sudoku(ROW,COL,NUM) :- initial(ROW,COL,NUM).
{ sudoku(ROW,COL,NUM) : NUM=1..9 } = 1 :- ROW=1..9, COL=1..9.

% RULE: only allow a number once in each row
:- sudoku(ROW,COL,NUM), sudoku(ROW',COL,NUM), ROW != ROW'.

% RULE: only allow a number once in each column
:- sudoku(ROW,COL,NUM), sudoku(ROW,COL',NUM), COL!= COL'.

% RULE: only allow a number once in each subgrid
:- sudoku(ROW,COL,NUM), sudoku(ROW',COL',NUM),
   (((ROW-1)/3)*3 + (COL-1)/3) == (((ROW'-1)/3)*3 + (COL'-1)/3),
   ROW!=ROW', COL!=COL'.

% only display sudoku triplet in output for readability
#show sudoku/3.