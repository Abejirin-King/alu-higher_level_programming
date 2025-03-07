#!/usr/bin/python3

def lookup(obj):
    return dir(obj)

# Test cases
if __name__ == "__main__":
    print(lookup(5))  # int
    print(lookup(5.5))  # float
    print(lookup(object))  # object
    print(lookup([1, 2, 3]))  # list

    class MyClass():
        def dir(self):
            return ["my_class", "is", "empty"]

    obj1 = MyClass()
    print(lookup(obj1))  # MyClass with `dir` method

    class MyClass(): pass
    obj2 = MyClass()
    print(lookup(obj2))  # Empty MyClass

    class MyClass():
        one_attribute = 89
    obj3 = MyClass()
    print(lookup(obj3))  # MyClass with an attribute

    class MyClass():
        def one_meth(self): pass
    obj4 = MyClass()
    print(lookup(obj4))  # MyClass with a method

