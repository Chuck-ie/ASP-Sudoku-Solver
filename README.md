# ASP-Sudoku-Solver
This Project was made in regards of an assignment for a "Computational Intelligence" class at my University

To solve this problem, me and my groupmember used the programming language Potassco (which is a so called "Answer Set Programing"-language named Clingo. Simply follow the official Documentation at https://potassco.org/clingo/ to install Anacondo and Clingo to run this Project.

Since the installation requires Anaconda you dont need to install anything afterwards like python3 for example. To use this Project as intended, you can simply clone this repository to your local folder and switch to the root directory. `Where you can find the test.py`
You can confirm this by running the following command:
Windows 10:
```bash
dir test.py
```
Linux/Ubuntu:
```bash
ls test.py
```
and see if you get an output. If not that proberbly means that youre in the wrong directory.

After that you can simply run the file `test.py` like the following:
```bash
python test.py
```
It will generate output files in the `Outputs` folder to read the answers sets from and compare those to the solutions in the `Solutions` folder and generate an output to tell you either that your answers were correct or that your answer was wrong plus the corresponding filename where the error occured.
