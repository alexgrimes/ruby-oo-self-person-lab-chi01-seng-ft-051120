# your code goes here
require "pry"
class Person
    attr_reader :name, :happiness 
    attr_accessor :bank_account, :hygiene

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 

    #getter or setter method?
    #setter b/c we need to reset happiness if it doesn't obey the rule (round down)

    def happiness=(num)
        @happiness = num 
        if happiness > 10
            @happiness = 10
        elsif happiness < 0
            @happiness = 0
        else @happiness = happiness 
            #binding.pry
        end 
    end 

    def hygiene=(num)
        @hygiene = num
        #@happiness = round intg's >10 to 10 and <0 to 0, else it=itself
        if hygiene > 10
            @hygiene = 10
        elsif hygiene < 0
            @hygiene = 0
        else @hygiene = hygiene 
            #binding.pry
        end 
    end 

        #non-attribute instance method 
        #if @happiness > 7.. returns true

    def happy?
        if @happiness > 7
            true
        else 
            false 
        end
    end 

    def clean?
        if @hygiene > 7
            true
        else 
            false 
        end
    end

    def get_paid(salary)
        @bank_account = bank_account + salary
        p "all about the benjamins"
    end 

    def take_bath
        self.hygiene += 4
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        p "♪ another one bites the dust ♫"
    end 

    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        p "Hi #{person.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(person, topic)
        if topic == "politics"
            person.happiness -= 2
            self.happiness -= 2
            p "blah blah partisan blah lobbyist"
        elsif 
            topic == "weather"
            person.happiness += 1
            self.happiness += 1
            p "blah blah sun blah rain"
        else
            topic == "other"
            p "blah blah blah blah blah"
        end 
    end


end 

# class Person
#     attr_reader :name
#     attr_accessor :bank_account, :happiness
#     def initialize(name)
#         @name = name
#         @bank_account = 25
#         @happiness = 8
#         # binding.pry
#     end
#     def self.happiness
#     end 
# end