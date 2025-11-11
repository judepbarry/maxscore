# README for Username Validation Script

## Author Information
- **Name:** Jude Barry
- **Course:** CPSC298 Intro to Linux
- **Assignment:** Maxscore Assignment
- **Date:** 11/10

## Program Description
This Bash script, maxscore.sh, reads five positive integer scores, stores them in an array, determines which score is the highest, and then calculates the difference between each score and the highest score. Its purpose is to automate the process of finding and comparing the highest value in a set of numbers, similar to how a Java version of the program performs the same task. This script demonstrates the use of arrays, loops, and arithmetic operations in Bash.

## Usage
To run the script interactively:
```bash
./maxscore.sh
```

To test with the provided input file:
```bash
./maxscore.sh < maxscore-input
```

## How the Script Works
[Explain in 3-5 sentences how your script works. Include information about:]
- How you read and store numbers in an array
- How you loop through the array to find the maximum value
- How you calculate and display the difference between each score and the highest
The script begins by reading exactly five positive integers from the user or from an input file, storing them sequentially in a Bash array.
It then uses a for loop to iterate through the array and find the maximum score by comparing each value to the current maximum.
After determining the highest score, the script prints it, then loops through the array again to display each student’s score and the difference between that score and the highest one.
Arithmetic operations are handled using Bash’s built-in $(( )) syntax, and the output is formatted neatly for readability.
The script passes a ShellCheck audit to ensure clean, portable, and secure code practices.

## Testing Results
[Describe your testing process and results. Include:]
- Example successful inputs and results
- How you used the maxscore-input file to test
Example Input (from maxscore-input):
72
85
90
66
88

Example Output:
Highest score: 90
Student 1 score: 72, difference from highest: 18
Student 2 score: 85, difference from highest: 5
Student 3 score: 90, difference from highest: 0
Student 4 score: 66, difference from highest: 24
Student 5 score: 88, difference from highest: 2

I tested the script using both interactive mode and the maxscore-input file included in the repository. The output correctly identified the highest score and displayed accurate differences for all test values.

## Challenges and Solutions
[Optional: Describe any challenges you encountered while creating this script and how you solved them. This could include debugging issues, arrays, or Git workflow problems.]

## Resources
[List any resources you used (class slides, ChatGPT, etc.). Please refer to the course syllabus for more details on citations.]
Lecture slides, shellcheck documentation, chatgpt for assistance with bugfixing.

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
