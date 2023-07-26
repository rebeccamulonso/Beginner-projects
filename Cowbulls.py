import random

def compare_numbers(number, user_guess):
    cow = 0
    bull = 0
    for i in range(len(number)):
        if number[i] == user_guess[i]:
            bull += 1
        elif user_guess[i] in number:
            cow += 1
    return (cow, bull)

playing = True # gotta play the game
number = str(random.randint(0, 9999)).zfill(4) # random 4 digit number with leading zeros
guesses = 0
print('number') # print the number for testing purposes

print("Let's play a game of Cowbull!") # explanation
print("I will generate a number, and you have to guess the numbers one digit at a time.")
print("For every number that exists in the sequence but is in the wrong place, you get a cow. For every one in the right place, you get a bull.")
print("The game ends when you get 4 bulls!")
print("Type exit at any prompt to exit.")

while playing:
    user_guess = input("Give me your best guess!")
    if user_guess == "exit":
        break
    if not user_guess.isdigit() or len(user_guess) != 4:
        print("Your guess must be a 4-digit number.")
        continue
    cowbullcount = compare_numbers(number, user_guess)
    guesses += 1

    print("You have " + str(cowbullcount[0]) + " cows and " + str(cowbullcount[1]) + " bulls.")

    if cowbullcount[1] == 4:
        playing = False
        print("You win the game after " + str(guesses) + " guesses! The number was " + str(number))
    else:
        print("Your guess isn't quite right, try again.")

