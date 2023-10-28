
# Question 1

def hello_name(user_name):
    print("hello_"+ user_name)
hello_name('USERNAME')


# Question 2

def first_odds():
    print(list(range(1, 100, 2)))
first_odds


# Question 3

def max_num_in_list(a_list):
    max = a_list[0]
    for num in a_list:
        if num > max:
            max = num
    return max

print(max_num_in_list([3,7,2,12]))

# Question 4

def is_leap_year(a_year):
    """Return if given year is leap year."""
    # divisible by 4, but not 100 unless also divisible by 400
    return a_year %4 == 0 and not a_year == 0 or a_year % 400 == 0
print(is_leap_year(2000))
print(is_leap_year(1973))

# Question 5

def is_consecutive(a_list):
    """Check if numbers in list are consecutive.
       Return boolean"""
    return sorted(a_list) == list(range(min(a_list), max(a_list)+1))
twist = [3,5,2,8,12]
shout = [1,2,3,4,5]
print(is_consecutive(twist))
print(is_consecutive(shout))
