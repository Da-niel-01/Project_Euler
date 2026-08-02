import math


def bin(n,k):
    return math.factorial(n)/(math.factorial(k)*math.factorial(n-k))


def f(n):
    possib = 0
    for b in range(0,n+1,4):
        for g in range(0,n+1-b,3):
            for r in range(0,n+1-b-g,2):
                possib += M(int(n-r/2-g/3*2-b/4*3),int(b/4),int(g/3),int(r/2))
    return possib



def M(n,b,g,r):
    return bin(n,b)*bin(n-b,g)*bin(n-b-g,r)

#print(M(6,2,2,2))
print(f(50))