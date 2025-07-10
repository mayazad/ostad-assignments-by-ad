numbers = [1, 5, 6, 5, 1, 2, 3]
new_list = []

for i in numbers:
    if numbers.count(i) > 1 and i not in new_list:
        new_list.append(i)
        
print(new_list)