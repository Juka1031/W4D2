require_relative 'employee'
    
class Manager < Employee
    attr_accessor :employees
    def initialize(name,title,salary,boss)
        super 
        @employees = []
    end

    def bonus(multiplier)
        sum = @employees.inject(0) do |acc,employee|
            if employee.is_a?(Manager)
                #do recursion
                employee.employees.each do |ele1|
                    acc += ele1.salary
                end
            end
            acc += employee.salary
        end
        sum*multiplier
    end

    def hire(employee)
        # if employee.is_a?(Manager)
        #     flattened = employee.employees.flatten
        #     flattened.each do |ele|
        #         @employees << ele
        #     end
        #     # employee.employees = []
        #     @employees << Manager.new(employee.name,employee.title,employee.salary,employee.boss,employee.employees)
        # else
        @employees << employee
        # end
    end
    
end


# ned = Manager.new("Ned", "Founder", 1000000,nil)
# darren = Manager.new("Darren", "TA Manager", 78000, "Ned")