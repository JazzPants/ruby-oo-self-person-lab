# require 'pry'

# your code goes here
class Person
  # binding.pry
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize(name)
    #local variables
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  #returns happiness variable, so we can use increment on the method itself
  def happiness=(number)
    @happiness = number
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
  end

  def hygiene=(number)
    @hygiene = number
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end

  #   def happy?
  #     if @happiness > 7
  #       return true
  #     else
  #       return false
  #     end
  #   end

  #   def clean?
  #     if @hygiene > 7
  #       return true
  #     else
  #       return false
  #     end
  #   end

  def happy?
    happiness > 7
  end

  def clean?
    hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    'all about the benjamins'
  end

  def take_bath
    @hygiene += 4
    self.hygiene = @hygiene

    # lab solution:
    # self.hygiene += 4
    '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    @hygiene -= 3
    self.hygiene = @hygiene
    @happiness += 2
    self.happiness = @happiness
    '♪ another one bites the dust ♫'
  end

  def call_friend(friendInstance)
    #local methods
    self.happiness += 3
    friendInstance.happiness += 3
    "Hi #{friendInstance.name}! It's #{@name}. How are you?"
  end

  #lab solution (bit more dynamic)
  #   def call_friend(friend)
  #     [friend, self].each {|o| o.happiness += 3 }
  #     "Hi #{friend.name}! It's #{self.name}. How are you?"
  #   end

  def start_conversation(person, topic)
    if topic == 'politics'
      person.happiness -= 2
      self.happiness -= 2
      return 'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
      person.happiness += 1
      self.happiness += 1
      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end

  #lab solution (bit more dynamic)
  #   def start_conversation(person, topic)
  #     objects = [self, person]
  #     if topic == "politics"
  #       objects.each { |o| o.happiness -= 2}
  #       first, second = ["partisan", "lobbyist"]
  #     elsif topic == "weather"
  #       objects.each { |o| o.happiness += 1}
  #       first, second = ["sun", "rain"]
  #     end
  #     first ||= "blah"
  #     second ||= "blah"
  #     base_string = "blah blah #{first} blah #{second}"
  #   end
end
