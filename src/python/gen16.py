import random


password = ""

abc = "abcdefghijklmnñopqrstuvwxyz" #1/2 12.5
abcM = abc.upper()  # 1/2 12.5
num = "12345678"    # 1 33.5
sym = "!#$%&/()=?[]-+*<>|@" # 1 33.5

for i in range(16):
    # abc = 1,2,3
    # abcM = 4,5,6
    # num = 7
    # sym = 8
    number = random.randint(1, 8)
    if (number == 1 or number == 2 or number == 3):
        password += random.choice(abc)
    if (number == 4 or number == 5 or number == 6):
        password += random.choice(abcM)
    if (number == 7):
        password += random.choice(num)
    if (number == 8):
        password += random.choice(sym)
print(password)