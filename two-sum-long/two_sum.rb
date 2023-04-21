# def two_sum?(arr, target_sum)

# end


##########################################################

# Phase I

def bad_two_sum?(arr, target_sum)           # O (n^2) + 2 =====> O (n^2) == Quadratic/Polynomial
    (0...arr.length).each do |i|   # O (n)
        (i+1...arr.length).each do |j|  # O (n * n) ======> O (n^2)
            return true if arr[i] + arr[j] == target_sum  # O n(1)
        end
    end
    false   # O (1)
end

arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false

##########################################################

# Phase II

def okay_two_sum?(arr, target_sum)
    # return....
    pivot = arr[0]
    rest = arr[1..-1]
    if pivot + rest[0] == target_sum
        return true
    else
        okay_two_sum?(rest.shift)
    end
end
