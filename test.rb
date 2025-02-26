require_relative "calculator"
class Test
    def self.run
        test_input = {
            "" => 0,
            "2,3" => 5,
            "2,3,8" => 13,
            "2,3\n9" => 14,
            "1\n2,3" => 6,
            "//;\n1;2" => 3,
            "//|\n1|2|3" => 6,
            "//***\n1***2***3" => 6,
            "//;\n1;2;-3" => "negative numbers not allowed -3",
            "//;\n1;-2;-3" => "negative numbers not allowed -2,-3"
        }

        number = 1 
        passed = 0
        failed = 0
        test_input.each do |key, val|
            if Calculator.add(key) == val
                puts "Test case #{number} passed!!"
                passed += 1
            else
                puts "Test case #{number} failed!!"
                failed += 1
            end
            number += 1
        end

        puts "Passed:: #{passed} Failed:: #{failed}"
    end
end