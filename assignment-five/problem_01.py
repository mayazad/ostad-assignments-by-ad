class Animal:
    def __init__(self):
        print("Animals make different sounds.")

class Dog(Animal):
    def __init__(self):
        super().__init__()
        print("Dog barks!")
    
if __name__ == "__main__":
    dog = Dog()
    
