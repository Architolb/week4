# Exercise 1

words = ['this' , 'is', 'a', 'sentence', '.']
word_length = len(words)

for i in range(word_length//2):
    words[i], words[ word_length -1 - i] = words[ word_length -1 - i], words[i]

print(words)
print('\n')

# Exercise 2
from collections import Counter

a_text = 'In computing, a hash table hash map is a data structure which implements an associative array abstract data type, a structure that can map keys to values. A hash table uses a hash function to compute an index into an array of buckets or slots from which the desired value can be found'

dict_ = dict(Counter(a_text.replace(',', '').replace('.', '').split()))

print(dict_)
print('\n')
# Exercise 3 Write a program to implement a Linear Search Algorithm. Also in a comment, write the Time Complexity of the following algorithm.
def linear(nums_list, target):
    for i in range(len(nums_list)):
        if nums_list[i] == target:
            return i
    return -1

nums_list = [10,23,45,70,11,15]
target = 70
print(linear(nums_list,target))


