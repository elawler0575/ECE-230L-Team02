# Lab 04 - SOP/POS and KMaps

Emaline Lawler
Annika Camarillo

In this lab, you’ve learned how to apply KMaps, Sum Of Products and Products of
sums to simplify digital logic equations. Then, you’ve proven out that they work
using an implemented design on your Basys3 boards.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

Summarize your learnings from the lab here.
In this lab we learned about the optimization of digital logic equations using Karnaugh maps, Sum of Products, and Products of Sums. In Vivado, we compared three ways of writing the equations, two of which were optimized. The three equations all gave the result, two used fewer AND and OR gates to be more efficient.

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?
We are able to go across the edges of the KMap due to Gray coding. Gray coding allows us to be more efficient by only switching one bit at a time.

### Why are the names Sum of Products and Products of Sums?
Sum of Products is named thus because you are summing together the products. In Products of Sum, you are multplying the sums together.

### Open the test.v file – how are we able to check that the signals match using XOR?
We are comparing the minterm.v and maxterm.v to the naive.v. Using XOR, the output is one if the minterm or maxterm files don't match the naive file. We want the output of XOR to be zero because that means the files match.
