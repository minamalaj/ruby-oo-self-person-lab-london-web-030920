
class Person 
    attr_accessor :happiness, :hygiene, :bank_account
    attr_reader :name

    # the reason :happiness, :hygiene, :bank_account not passed in as parameters, 
    # because for this you wont need to (for every person) dictate a bank_account sum, 
    # happiness/ hygiene count. It is taken care of you in the initalize 
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8 
        @hygiene = 8 
    end 
    
    def happiness
        @happiness = 0 if @happiness < 0
        @happiness = 10 if @happiness > 10
        @happiness
    end 

    # Why is it necessary to return hygiene and hapiness at the end of both these methods?
    def hygiene
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
        @hygiene
    end 

    def happy?
        happiness > 7 ? true : false 
    end 

    def clean?
        hygiene > 7 ? true : false 
    end 

    def get_paid(salary)
        @bank_account += salary 
        return "all about the benjamins"
    end 

    def take_bath 
        self.hygiene += 4 
       return "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out 
        self.hygiene -= 3 
        self.happiness += 2 
        return "♪ another one bites the dust ♫"
    end 

    def call_friend(friend)
        self.happiness += 3 
        friend.happiness += 3 
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(person, topic)
        case topic 
        when "politics"
            self.happiness -= 2 
            person.happiness -= 2
           "blah blah partisan blah lobbyist"
        when "weather" 
            self.happiness += 1 
            person.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end 
    end 
end 


