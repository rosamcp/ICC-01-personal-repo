#!/bin/python3

option = None

def menu () :
    print (" **Menu**")
    print (" 1) Read and display names")
    print (" 2) Add a new name")
    print (" \n 3) Exit")

def read_and_display():
    with open ("names.txt", "r") as file:
        for name in file:
            print (name.strip())

def write_name():
    with open ("names.txt", "a") as file:
        file.write("\n" + input ("Enter a new name: "))

while option != "3" :
    menu()
    option = input()
    if option == "1":
        read_and_display()
    elif option == "2":
        write_name()
    elif option == "3":
        break
    else:
        print ("\nInvalid selection \n")