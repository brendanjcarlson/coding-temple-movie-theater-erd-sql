'''
There were and still are many problem in CW about palindrome numbers and palindrome strings.
We suposse that you know which kind of numbers they are.
If not, you may search about them using your favourite search engine.
In this kata you will be given a positive integer,
val and you have to create the function next_pal()(nextPal Javascript) that will output
the smallest palindrome number higher than val.

Let's see:
For Python
next_pal(11) == 22

next_pal(188) == 191

next_pal(191) == 202

next_pal(2541) == 2552
You will be receiving values higher than 10, all valid.
Enjoy it!!
'''



def next_pal(n: int) -> int:
    while str(n) != str(n)[::-1]: n+=1; return n

print(next_pal(12301010000))