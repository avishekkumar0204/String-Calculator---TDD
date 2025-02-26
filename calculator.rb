class Calculator
    def self.add(str)
        delimiter = /[\n,]/

        if str.start_with?("//")
            parts = str.split("\n", 2)
            custom_delimiter = parts[0][2..-1]
            str = parts[1]
            delimiter = Regexp.escape(custom_delimiter)
        end

        arr = str.split(/#{delimiter}/).map(&:to_i)

        negatives = arr.select { |n| n < 0 }
        if negatives.any?
            raise "negative numbers not allowed #{negatives.join(',')}"
        end

        sum = 0
        for i in arr
            sum = sum + i
        end
        sum
    end
end