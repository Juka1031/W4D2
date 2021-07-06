require_relative 'manager'
class Employee
    attr_reader :name, :title, :salary, :boss

    def initialize(name,title,salary,boss=nil)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
        # Manager.employees <<
    end

    def bonus(multiplier)
        bonus = @salary * multiplier
    end



end

david = Employee.new("David", "TA", 10000, "Darren")
shawna = Employee.new("Shawna", "TA", 12000, "Darren")
darren = Employee.new("Darren", "TA Manager", 78000, "Ned")
ned = Employee.new("Ned", "Founder", 1000000)