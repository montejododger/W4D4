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

def anagram2?(str_1, str_2)           # O (n^3) =====> Polynomial
    str_1.each_char do |char| # O (n)
        # debugger
        idx = str_2.index(char) # O (n) ===> (n^2)
        if idx.nil?             # O (1) ====> (n^2) + (1)
            return false
        else
            str_2.delete!(char)  # O (n) =====> (n^3) + 1
        end
    end
    str_2.empty?                 # O (1) ======= (n^3) + 2
end

# idx.nil? ? return false : str_2.delete!(char)
  #  n    1                        n

# p anagram2?("gizmo", "sally")    #=> false
# p anagram2?("elvis", "lives")    #=> true

###################################################################################

# Phase III

def third_anagram?(str_1, str_2)    # O n^2 + n^2 + 1 ======> O (n^2)
    sorted_1 = str_1.chars.sort     # O (n^2)
    sorted_2 = str_2.chars.sort     # O (n^2)
    sorted_1 == sorted_2            # O 1
end

p third_anagram?("elvis", "lives")

