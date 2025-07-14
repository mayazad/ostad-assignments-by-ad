# enter set elements separated by space
#example: 
# set1 = {1, 2, 3, 4, 5}
# set2 = {4, 5, 6, 7, 8}
def setInput():
    set1 = input("Enter first set elements: ")
    set1 = set(set1.strip().split(" "))
    set2 = input("Enter second set elements: ")
    set2 = set(set2.strip().split(" "))
    print("-" * 40)
    print(f"Union = {set1.union(set2)}") # {'6', '8', '7', '3', '5', '4', '1', '2'}
    print(f"Intersection = {set1.intersection(set2)}") # {'5', '4'}
    print(f"Difference = {set1.difference(set2)}") # {'1', '2', '3'}

setInput()

