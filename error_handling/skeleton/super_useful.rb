class WrongFoodError < StandardError; end
class YearsKnownError < StandardError; end

# PHASE 1
def convert_to_int(str)
    begin
  Integer(str)
    rescue
    
    end
end

# PHASE 2
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
    puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
    raise StandardError
  end 
  # rescue StandardError
    # retry 
end

def feed_me_a_fruit
  

  puts "Hello, I am a friendly monster. :)"

  puts "Feed me a fruit! (Enter the name of a fruit:)"
  begin  
    maybe_fruit = gets.chomp
    raise WrongFoodError.new(puts "Give me a coffee!!!") unless maybe_fruit == "coffee"
  rescue WrongFoodError
    retry 
  
    reaction(maybe_fruit)
    end
end  

# PHASE 3
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    raise YearsKnownError.new (puts "You have no name") if name.length <= 0
    @yrs_known = yrs_known
    raise YearsKnownError.new(puts "Must be 5 or more") unless yrs_known >= 5
    @fav_pastime = fav_pastime
    raise YearsKnownError.new (puts "You have no pastime") if fav_pastime.length <= 0
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end


