# Given a sequence of numbers, find the largest pair sum in the sequence.

# For example

# [10, 14, 2, 23, 19] -->  42 (= 23 + 19)
# [99, 2, 2, 23, 19]  --> 122 (= 99 + 23)

# Input sequence contains minimum two elements and every element is an integer.

# Given a sequence of numbers, find the largest pair sum in the sequence.
# For example
# [10, 14, 2, 23, 19] -->  42 (= 23 + 19)
# [99, 2, 2, 23, 19]  --> 122 (= 99 + 23)
# Input sequence contains minimum two elements and every element is an integer.
# make function ()
# sort them
# find the indexs of the largest
# add two indexes together sum
def numbers(a_list):
    # print(sorted(a_list)[-1] + sorted(a_list)[-2])
    x= sum(sorted(a_list)[-2:])
    print(x)
numbers([99, 2, 2, 23, 19])
# def new_numbers(a_list):
#     x = max(a_list)
#     a_list.remove(x)
#     z = max(a_list)
#     print(x + z)
# new_numbers([99, 2, 2, 23, 19])