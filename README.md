<h1>Kamke Test Suite - SymPy</h1>

This repository contains all the 1940 ODEs from <i>Differentialgleichungen Lösungsmethoden und Lösungen</i> by Kamke.
To view the results on the latest <a href="https://www.sympy.org">SymPy version, visit the <a href="https://naveensaigit.github.io/kamke_test_suite">home page</a>. The results of the test suite are available in JSON format in the `json` folder.

<h2>Run the Test Suite</h2>

If you want to run the test suite, clone the repository. To run the entire test suite, run -
```
python test_kamke.py
```

This will generate a folder with the results of the run in JSON format. To generate HTML pages from these files, run -

```
python test_kamke.py --html
```

<h2>Command Line Arguments</h2>

There are different ways to run the test suite using command line arguments. To view all the arguments, use `-h` or `--help`.

```
python test_kamke.py --help

usage: test_kamke.py [-h] [-e EXAMPLE] [-ch CHAPTER] [--hint HINT] [--all_hints] [--verify] [--dsolve_time DSOLVE_TIME] [--checkodesol_time CHECKODESOL_TIME]
                     [--html] [-rp]

optional arguments:
  -h, --help            show this help message and exit
  -e EXAMPLE, --example EXAMPLE
                        Name of the example in the format {chapter_no}.{problem_no} Specify all to test all examples
  -ch CHAPTER, --chapter CHAPTER
                        Chapter no. Tests all examples of a chapter
  --hint HINT           Hint to be used to solve the ODEs
  --all_hints           Solve the ODE with all matching hints
  --verify              Verify the solution from dsolve using checkodesol
  --dsolve_time DSOLVE_TIME
                        Timeout duration (in seconds) for dsolve
  --checkodesol_time CHECKODESOL_TIME
                        Timeout duration (in seconds) for checkodesol
  --html                Generate HTML reports from JSON files
  -rp, --remove_prev    Remove files generated from previous runs
```

<h2>Examples</h2>

Run the 5th example from the 2nd chapter

```
python test_kamke.py --example 2.5
```

Run all examples from chapter 3

```
python test_kamke.py --chapter 3
```

Solve all examples from chapter 5 using the hint `factorable`

```
python test_kamke.py -ch 5 --hint factorable
```

Find solutions for all matching hints from `dsolve` for the example `1.1`

```
python test_kamke.py -e 1.1 --all_hints
```

Find the solution to example `2.10` and verify if it is correct

```
python test_kamke.py -e 2.10 --verify
```

Find the solutions to all examples in chapter 7 with a timeout of 30 seconds for `dsolve` and 20 seconds for `checkodesol` for each ODE.

```
python test_kamke.py -ch 7 --dsolve_time=30 --checkodeosol_time=20
```

Run the entire test suite and delete any files from previous runs.

```
python test_kamke.py --remove_prev
```
