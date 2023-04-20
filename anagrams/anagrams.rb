require "byebug"

###################################################################################
# Phase I

def anagram1?(str_1, str_2) # 0(n!) -> factorial
    ana = [] # 0(1) -> constant  before the loop ----- linear after
    str_1.chars.permutation(str_1.length) {|combination| ana << combination.join} # 0(n!) -> permutation
    ana.include?(str_2) # 0(n)  --> linear/ iteration
end

# p anagram1?("gizmo", "sally")    #=> false
# p anagram1?("elvis", "lives")    #=> true

###################################################################################

# Phase II

def anagram2?(str_1, str_2)           # O (n^2) =====> Polynomial // Quadratic
    str_1.each_char do |char| # O (n)
        idx = str_2.index(char) # O (n) ===> (n^2)
        if idx.nil?             # O (1) ====> (n^2) + (1)
            return false
        else
            str_2.delete!(char)  # O (n) =====> (n^2) + 1
        end
    end
    str_2.empty?                 # O (1) ======= (n^2) + 2
end
# Ternary ---> idx.nil? ? return false : str_2.delete!(char)
                # n             1             n

# p anagram2?("gizmo", "sally")    #=> false
# p anagram2?("elvis", "lives")    #=> true

###################################################################################

# Phase III

def anagram3?(str_1, str_2)     # (O(n) + 0(nlogn)) + (O(n) + 0(nlogn)) + 1 ======> 0(nlogn)  -----> log linear
    sorted_1 = str_1.chars.sort     # O(n) + 0(nlogn)
    sorted_2 = str_2.chars.sort     # O(n) + 0(nlogn)
    sorted_1 == sorted_2            # O(1)
end


# p anagram2?("gizmo", "sally")    #=> false
# p anagram2?("elvis", "lives")    #=> true


###################################################################################
##******************************************************************************##
#Assessment Help

# Phase IV

def anagram4?(str_1, str_2) # 0(n) -------> linear ( only 26 letters or 52 so 0(1) )
    hash_count_1 = Hash.new(0)  # 0(1) // 0(n)

    hash_count_2 = Hash.new(0)  # 0(1) 1 + 1 ----> 2

    str_1.chars {|char| hash_count_1[char] += 1} # 0(n) ---> 0(n) + 2
    str_2.chars {|char| hash_count_2[char] += 1} # 0(n) ---> 0(n) + 0(n) + 2

    hash_count_1 == hash_count_2 # 0(1) ----->  0(n) + 0(n) + 3
    
    
end


# p anagram4?("gizmo", "sally")    #=> false
# p anagram2?("elvis", "lives")    #=> true
