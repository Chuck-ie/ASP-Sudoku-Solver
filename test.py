import os, json, time

def test_results():

    clear_directory()

    for example_file in os.listdir("/home/chuckie/Projects/asp_sodoku/instances"):

        outputfile_name = f'output{example_file[-5:-3]}.txt'
        os.system(f'clingo instances/{example_file} asp/sudoku.lp 0 > outputs/output{example_file[-5:-3]}.txt')

        with open(f'outputs/{outputfile_name}', "r") as output:
            for line in output:
                if line.startswith("sudoku"):
                    answer = line.strip().split(" ")
                    
                    with open(f'solutions/{example_file[:-3]}.json', "r") as solutions_file:
                        data = json.load(solutions_file)
                        
                        solutions_count = len(data["Call"][0]["Witnesses"])
                        skipped_count = 0

                        for i in range(0, solutions_count):
                            solution = data["Call"][0]["Witnesses"][i]["Value"]
                        
                            if set(answer) != set(solution):
                                skipped_count += 1
                                
                        if skipped_count == solutions_count:
                            return "Wrong answerset in file {}".format(outputfile_name)

    return "All answers correct."

def clear_directory():
    try:
        os.system("rm outputs/*")
        time.sleep(1)
    except:
        return

print(test_results())
