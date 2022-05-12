# Given an array of integers, find the one that appears an odd number of times.

# There will always be only one integer that appears an odd number of times.
# Examples

# [7] should return 7, because it occurs 1 time (which is odd).
# [0] should return 0, because it occurs 1 time (which is odd).
# [1,1,2] should return 2, because it occurs 1 time (which is odd).
# [0,1,0,1,0] should return 0, because it occurs 3 times (which is odd).
# [1,2,2,3,3,3,4,3,3,3,2,2,1] should return 4, because it appears 1 time (which is odd).

def odd(arr):
    for n in arr:
        if arr.count(n) % 2 != 0:
            return n
print(odd([0,1,0,1,0]))
def odd(arr):
    s = set()
    for n in arr:
        if n in s:
            s.remove(n)
        else:
            s.add(n)
    return s.pop()
print(odd([1,2,2,3,3,3,4,3,3,3,2,2,1]))


on_time = ['n','s','n','s','n','s','n','s','n','s']
late = ['w','e','w','e','w','e','w','e','w','e','w','e']
lost = ['n','n','n','s','n','s','n','s','n','s']



# You live in the city of Cartesia where all roads are laid out in a perfect grid. 
# You arrived ten minutes too early to an appointment, so you decided to take the 
# opportunity to go for a short walk. The city provides its citizens with a Walk 
# Generating App on their phones -- everytime you press the button it sends you an 
# array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']). 
# You always walk only a single block for each letter (direction) and you know it takes 
# you one minute to traverse one city block, so create a function that will return true 
# if the walk the app gives you will take you exactly ten minutes (you don't want to be 
# early or late!) and will, of course, return you to your starting point. Return false otherwise.

#     Note: you will always receive a valid array containing a random assortment of direction 
#     letters ('n', 's', 'e', or 'w' only). It will never give you an empty array 
#     (that's not a walk, that's standing still!).


