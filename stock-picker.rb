def stock_picker(arr)
    day_picker = [0, 1]
    largest_profit = arr[day_picker[1]] - arr[day_picker[0]]

    0.upto(arr.length - 1) do |i|
        i.upto(arr.length - 1) do |j|
            if arr[j] - arr[i] > largest_profit
                day_picker = [i, j]
                largest_profit = arr[day_picker[1]] - arr[day_picker[0]]
            end
        end
    end

    day_picker
end

stock_picker([17,3,6,9,15,8,6,1,10])