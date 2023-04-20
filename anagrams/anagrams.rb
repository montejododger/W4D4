require "byebug"

###################################################################################
# Phase I

def anagram1?(str_1, str_2) # 0(n!) -> factorial 
    ana = [] # 0(n) -> linear 
    str_1.chars.permutation(str_1.length) {|combination| ana << combination.join} # 0(n!) -> permutation
    ana.include?(str_2) # 0(n)  --> linear/ iteration
end

# p anagram1?("gizmo", "sally")    #=> false
# p anagram1?("elvis", "lives")    #=> true

###################################################################################

# Phase II

# def anagram2?(str_1, str_2)

# end

# p gram2?("gizmo", "sally")    #=> false
# p anagram2?("elvis", "lives")    #=> true