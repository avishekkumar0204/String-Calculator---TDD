class Calculator
    def self.add(str)
        arr = str.split(",").map(&:to_i)
        sum = 0
        for i in arr
            sum = sum + i
        end
        sum
    end
end