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
* Optimise import
* Column mode
* Switch to left/right open code
* Select whole word
* Go to terminal
* Upper/lowercase word

## Setup

Make sure the IDE has all the tools you need to write codes and run tests.

## Practice 1

### Part 1

1. Create new test code (let called it as test_p1)
2. Inside the test code, write a test method that assert a function (p1_m1) from the source code (p1) to return "hello this is world"
3. Run test to make sure is failed
4. Create new source code (let called it as p1)
5. Display the new source code at another view so that both test and source codes are displayed side by side
6. Create new method in p1 that returns "hello this is world"
7. Run test and the test should be passing
8. Write another test method in test_p1 that expects a source function (p1_m2) to return "kata"
9. Run this new test to make sure is failed
10. Go to p1 and add a new method that returns "kata"
11. Run the test again and the test should be passing
12. Run all tests in test_p1 and all tests should be passing
13. Close test_p1 and p1

### Part 2

There is new requirements!! 

Requirement 1: Instead of returning "hello this is world", it should return "hello shortcut".

1. Go to test_p1, edit the test method and change it to return "hello shortcut" by selecting "hello this is world" and replace with expected words.
2. Run test to make sure is failed
3. Go to p1 and make the change in p1_m1 to return "hello shortcut"
4. Run test and the test should be passing

Requirement 2: Instead of returning "kata", it should return "KATA"

1. Go to test_p1, edit the test method and change it to return "KATA" by selecting "kata" and uppercase it.
2. Run test to make sure is failed
3. Go to method p1_m2 in p1 via "Navigate to Implementation" and change return "KATA"
4. Run test and the test should be passing

Run all tests and make sure all are passing then close test_p1 and p1.

## Practice 2

### Part 1

1. Open test2_1.py, run test_csv_header_is_correct to make sure is failing
2. Open test2_1.csv
3. Add new header column, address between first and second column
4. Rerun test_csv_header_is_correct to make sure is passing now 
5. Run test_address_value_is_added to make sure is failing
6. Open test2_1.csv, add value, "NA" to all the rows in between first and second column
7. Rerun test_address_value_is_added to make sure is passing now
8. Run test_last_row_is_correct to make sure is failing
9. Open test2_1.csv, go to last line of file and add new row
```
1031,NA,Test,2_2,hellokata@furl.net,Male
```
10. Rerun test_last_row_is_correct to make sure is passing now
11. Run test2_1.py and make sure the test is passing
12. Close all opened files

### Part 2

1. Open test2_2.py, use `show structure popup` to open the structure of the tests
2. Go to test_row_10_is_correct, run this test to make sure is failing
3. Open test2_2.csv
4. Go to line 10 and change value in the last column to "test2_2"
5. Rerun test_row_10_is_correct to make sure the test is passing
6. Run test_row_16_and_17_is_correct to make sure is failing
7. Go to line 16 and swap with row 17 (Meaning 16 become 17, 17 become 16)
8. Rerun test_row_16_and_17_is_correct to make sure the test is passing
9. Close all opened files

### Part 3

1. Open test2_3.py, use `show structure popup` to open the structure of the tests
2. Go to test_has_world, run this test to make sure is failing
3. Open test2_3.csv
4. Replace all the word from "word" to 'world' from line 4 to the end in the CSV file
5. Rerun test_has_world to make sure the test is passing
6. Run test_has_kata to make sure is failing
7. Replace all the word from "doctor" to 'kata' in the CSV file
8. Rerun test_has_kata to make sure the test is passing
9. Run all tests in test2_3.py and make sure all tests are passing 
10. Close all opened files

### Part 4

1. Open test2_2.py, run all the tests to make sure all are passing
2. open Problems tab and noticed there are some warnings
3. Resolve the warnings, unused imports by removing it
4. Rerun all the tests to make sure all are still passing
5. Go to terminal and run `make test2_python` and ensure all tests are passing

## Practice 3

1. Open p3.json and reformat the file
2. Use "Select Opened File" function to select p3.json
3. Rename p3.json to p3_test.json
4. Copy the existing object and paste it using clipboard history
5. Collapse the json file
6. Expand the json file
7. Compare test2_1.csv with test2_2.csv
8. Open test3.py
9. Go to next error
10. Go to previous error

## Practice 4

1. Zoom in
2. Zoom out
3. Reset
4. Presenter Mode
5. Exit Presenter mode
6. Go to Run

## End of all practices

1. Commit with all files selected
2. Rollback all files
3. Delete new files that were created
