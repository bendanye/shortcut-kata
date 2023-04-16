# Shortcut Kata - IDE

This guide is meant for practicing shortcuts in IDE and do not use this guide as means to write good code or practice TDD.

## Disclaimer

Although the list of shortcuts are mainly for Java/Python but many of the actions can be reused for other programming languages.

## List of shortcuts

The following are the list of actions that will be practicing:

* Create new class/file
* Go to implementation
* Go to declaration
* Resolve error
* Switch to test/main class
* Shift up/down the current line of code
* Run last run test
* Run all tests
* Search and open up a file
* Search and go to the method inside the class
* Rename method/variable
* Refactor a string to const
* Move the const to another class
* Go to last open file
* Open/close project tab
* Create toString(), equals or hashcode method
* Set/Remove Breakpoint
* Run debug mode
* Find Usages
* Optimse import
* Column mode
* Switch to left/right open code
* Select whole word
* Go to terminal

## Setup

Make sure the IDE has all the tools you need to write codes and run tests.

## Practice 1

1. Create new test code (let called it as test_p1)
2. Inside the test code, write a test method that assert a function (p1_m1) from the source code (p1) to return "hello world"
3. Run test to make sure is failed
4. Create new source code (let called it as p1)
5. Display the new source code at another view so that both test and source codes are displayed side by side
6. Create new method in p1 that returns "hello world"
7. Run test and the test should be passing
8. Write another test method in test_p1 that expects a source function (p1_m2) to return "kata"
9. Run this new test to make sure is failed
10. Go to p1 and add a new method that returns "kata"
11. Run the test again and the test should be passing
12. Run all tests in test_p1 and all tests should be passing
13. Close test_p1 and p1

There is new requirements!! 

Requirement 1: Instead of returning "hello world", it should return "hello shortcut".

1. Go to test_p1, edit the test method and change it to return "hello shortcut" by selecting "world" and replace with kata.
2. Run test to make sure is failed
3. Go to p1 and make the change in p1_m1 to return "hello shortcut"
4. Run test and the test should be passing

Requirement 2: Instead of returning "kata", it should return "KATA"

1. Go to test_p1, edit the test method and change it to return "KATA" by selecting "kata" and uppercase it.
2. Run test to make sure is failed
3. Go to p1 and make the change in p1_m2 to return "KATA"
4. Run test and the test should be passing

Run all tests and make sure all are passing then close test_p1 and p1.

## Practice 2

1. Run test2_1.py to make sure is failing
2. Open test2_1.csv
3. Add new header column, address and value, "NA" to all the rows in between first and second column
4. Go to last line of file and add new row
```
31,NA,Test,2_2,hellokata@furl.net,Male
```
5. Run test2_1.py and make sure the test is passing
6. Close all opened files
7. Go to test2_2.py to make sure is failing
8. Open test2_2.csv
9. Go to line 10 and change value in the last column to "test2_2"
10. Run test2_2.py to make sure the test is passing
11. Close all opened files
12. Go to test2_3.py to make sure the test is failing
13. Open test2_3.csv
14. Replace all the word from "word" to 'world' from line 4 to the end in the CSV file
15. Run test 3 to make sure the test is passing
16. Go to terminal and run `make test2` and ensure no errors
17. Close all files
