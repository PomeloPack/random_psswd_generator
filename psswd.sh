#!/usr/bin/python3

import random


letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']


numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']


symbols = ['!', '#', '$', '%', '&', '(', ')', '*', '+']

print("Random Password Generator!")


random_number_letters = int(input("How many letters would you like in your password?\n")) 
random_number_numbers = int(input("How many symbols would you like?\n"))
random_number_symbols = int(input("How many numbers would you like?\n"))



password_list = []


for letter in range(1, random_number_numbers + 1):
    password_list.append(random.choice(letters))
    

for number in range(1, random_number_numbers + 1):
    password_list.append(random.choice(numbers))

for symbol in range(1, random_number_symbols + 1):
    password_list.append(random.choice(symbols))


random.shuffle(password_list)


final_password = ""
for password in password_list:
  final_password += password

print(f"Your generated password is: {final_password}")

print("------------------------------------------------------------------------------------------------------------")

passwd_again = input(print(f"If you dont't like your psswd: {final_password} do you want to generate a new one ? [yes / no]: "))

if passwd_again == "yes":
    letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z']
    numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
    symbols = ['!', '#', '$', '%', '&', '(', ')', '*', '+']

    random_number_letters = int(input("How many letters would you like in your password?\n")) 
    random_number_numbers = int(input("How many symbols would you like?\n"))
    random_number_symbols = int(input("How many numbers would you like?\n"))

    password_list = []
    for letter in range(1, random_number_numbers + 1):
        password_list.append(random.choice(letters))
    

    for number in range(1, random_number_numbers + 1):
        password_list.append(random.choice(numbers))

    for symbol in range(1, random_number_symbols + 1):
        password_list.append(random.choice(symbols))

    random.shuffle(password_list)

    final_password = ""
    for password in password_list:
        final_password += password

    print(f"Your generated password is: {final_password}")

else:
    print("Enjoy you password")
