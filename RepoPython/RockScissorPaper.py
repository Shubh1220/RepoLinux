import random

item_list=["Rock","Scissor","Paper"]

user_choice=input("Enter your move = Rock,Paper,Scissor: ")
com_choice=random.choice(item_list)

print(f"User choice: {user_choice} and computer choice: {com_choice}")

if user_choice==com_choice:
    print("Both games are tied")
elif user_choice=="Rock":
    if com_choice=="Paper":
        print("Paper covers Rock - Computer win")
    else:
        print("Rock smashes Scissor - You win")
elif user_choice=="Paper":
    if com_choice=="Scissor":
        print("Scissor cuts Paper - Computer win")
    else:
        print("Paper covers Rock - You win")
elif user_choice=="Scissor":
    if com_choice=="Rock":
        print("Rock  smashes Scissor - Computer win")
    else:
        print("Scissor cuts Paper - You win")
else:
    print("Invalid Choice!")