require_relative 'employee'

class Manager < Employee
    def initialize(name,title,salary,boss)
        super 
        @employees = []
    end

    def bonus(multiplier)
        sum = @employees.inject do |acc,employee|
            acc += employee.salary
        end
        sum*multiplier
    end

    def hire(employee)
        @employees << employee
    end
    
end


ned = Manager.new("Ned", "Founder", 1000000)
darren = Manager.new("Darren", "TA Manager", 78000, "Ned")