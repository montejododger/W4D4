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



list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]



def my_min(arr) # 0(n)
    min = arr[0]
    arr.each do |ele|
        if ele < min
            min = ele
        end
    end
    min
end

p my_min(list)
p my_min1(list)

