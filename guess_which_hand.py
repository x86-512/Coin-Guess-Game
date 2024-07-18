import qsharp

#Created on 7/17/2024
def main() -> None:
    while True:
        guess:str = input("Which hand do I have a coin in?\n> ")
        
        if guess.lower()=="exit":
            exit()

        if guess.lower()!="right" and guess.lower()!="left":
            print("Invalid input, it's either left or right, else type exit to quit")
            continue
        break

    qsharp.init(project_root = "./")

    computer_guess = "left" if str(qsharp.eval("quantum_disaster.randomBit()"))=="One" else "right"
    print("\x1b[32mYou are correct\x1b[0m" if computer_guess == guess else "\x1b[31mYou are incorrect\x1b[0m")

if __name__=="__main__":
    main()
