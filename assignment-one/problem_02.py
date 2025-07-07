num1 = float(input("Enter first number: "))
num2 = float(input("Enter second number: "))
operator = input("Enter '+, -, /, *' to perform operation: " )
if operator == "+":
    print("Sum =", num1 + num2)
elif operator == "-":
    print("Substraction =", num1 - num2)
elif operator == "*":
    print("Multiplication =", num1 * num2)
elif operator == "/":
    print("Division =", num1 / num2)
else:
    print("Invalid Operator!!")