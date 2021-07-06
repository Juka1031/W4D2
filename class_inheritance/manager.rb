require_relative 'employee'
class Manager < Employee
    def initialize()
        @employees = []
    end

    def bonus(multiplier)
        sum = @employees.inject do |acc,employee|
            acc += employee.salary
        end
        sum*multiplier
    end
    
end