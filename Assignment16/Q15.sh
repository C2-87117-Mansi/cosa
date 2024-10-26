#!/usr/bin/python3

file1 = input("Enter the name of the first file: ")

file2 = input("Enter the name of the second file: ")

try:
    with open(file1, 'r') as f1, open(file2, 'a') as f2:
        for line in f1:
            f2.write(line.swapcase())  
    print(f"Contents of '{file1}' with reversed case have been appended to '{file2}'.")
except FileNotFoundError:
    print(f"File '{file1}' does not exist.")

