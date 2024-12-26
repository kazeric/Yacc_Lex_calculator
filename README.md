# Simple Calculator using LEX and YACC
## Overview
This project implements a simple calculator that can evaluate mathematical expressions involving addition and subtraction of integers. It uses LEX (for lexical analysis) to tokenize the input and YACC (for syntax analysis) to parse and evaluate the mathematical expressions.

The calculator can handle expressions like:
3 + 5
10 - 2
7 + 3 - 2

## Features
Supports addition (+) and subtraction (-) of integer values.

Returns the result of the mathematical expression.

Checks for invalid strings, using lex and yacc

## Main Files
### calc.l: 
Contains the LEX specifications for tokenizing the input (numbers and operators).

### calc.y: 
Contains the YACC grammar and rules for parsing and evaluating the expressions.

## Grammar
calculation: --> expression

expression: --> expression PLUS term 
    
  | expression MINUS term 
  
  | term 

term: --> NUMBER 

## How to run
### Generate the lexer and parser source files:
yacc -d calc.y

flex calc.l

### Compile the program:
gcc -o calc lex.yy.c y.tab.c -lm

### Run the program
./calc

### Enter a string when prompted:
5 + 10 - 3&

&- being the end symbol



