import math


def bin(n,k):
    return math.factorial(n)/(math.factorial(k)*math.factorial(n-k))

def f(n,j):
    possib = 0
    t = 1
    while  t*j <= n:
        possib += bin(n-t*(j-1),t)
        t+= 1
        #print(possib)
    return possib
       
def sol(n):
    total = 0
    for j in [2,3,4]:
        total += f(n,j)
    return total

#print(f(5,2))
print(sol(50))