################################################################################
# Phase I
require "byebug"
def my_min1(arr) # O(n^2)
    min = arr[0]
    (0...arr.length).each do |i|
        ((i+1)...arr.length).each do |j|
            if arr[i] < arr[j] && arr[i] < min
                min = arr[i]
            end
        end
    end
    min
end



# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

# p my_min1(list)

###############################################################################
# Phase I

def my_min2(arr) # 0(n)
    min = arr[0]
    arr.each do |ele|
        if ele < min
            min = ele
        end
    end
    min
end

# p my_min2(list)


###############################################################################

# Phase I -m ""

# Example 1

## Largest contiguous sub-sum

# You have an array of integers and you want to find the largest contiguous(together in sequence) sub-sum.
# Find the sums of all contiguous sub-arrays and return the max.


def largest_contiguous_subsum(arr) #0(n^2)

    sub_arr = []

    (0...arr.length).each do |i|
        (i...arr.length).each do |j|
            sub_arr << arr[i..j]

        end
    end

    # sums = sub_arr.map do |sub|
    #     sub.sum
    # end

    sub_arr.map(&:sum).max

    # sums.max

end


# list = [5, 3, -7]
# # list = [-5, -1, -3]

# def largest_contiguous_subsum2(arr)
#     largest = arr[0]
#     current = arr[0]
#     arr[1..-1].each do |num|
#         current += num
#         largest
#     end
#     largest
# end

list = [2, 3, -6, 7, -6, 7]
def largest_contiguous_subsum2(arr) # On
    largest = arr[0]
    current = arr[0]
    debugger
    arr[1..-1].each do |num| # O(n)
        current = [current + num, num].max #O(1)
        largest = [largest, current].max   #O(1)
    end
    largest
end

p largest_contiguous_subsum2(list)
# arr[i] + arr[i+1..-1].sum

# possible sub-sums
# [5]           # => 5
# [5, 3]        # => 8 --> we want this one
# [5, 3, -7]    # => 1
# [3]           # => 3
# [3, -7]       # => -4
# [-7]          # => -7

###############################################################################
