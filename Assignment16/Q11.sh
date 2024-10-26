#!/usr/bin/python3

def calculate_gross_salary(basic_salary):
    da = 0.40 * basic_salary  
    hra = 0.20 * basic_salary  
    gross_salary = basic_salary + da + hra  
    return gross_salary


basic_salary = float(input("Enter the basic salary: "))


gross_salary = calculate_gross_salary(basic_salary)

print(f"The gross salary is: {gross_salary:.2f}")

