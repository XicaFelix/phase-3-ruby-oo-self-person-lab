# your code goes here
class Person
    attr_reader :name, :happiness
    attr_accessor :bank_account, :hygiene
    def initialize (name, bank_account = 25, happiness = 8 , hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness= happy_level
        if happy_level > 10
            @happiness= 10
        elsif happy_level < 0
            @happiness= 0
        else
            @happiness= happy_level
        end
    end

    def hygiene= hygiene_level
        if hygiene_level > 10
            @hygiene= 10
        elsif hygiene_level < 0
            @hygiene= 0
        else
            @hygiene= hygiene_level
        end
    end

    def happy?
        self.happiness > 7 ? true : false
    end

    def clean?
        self.hygiene > 7 ? true : false
    end

    def get_paid amount
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene= (self.hygiene + 4)
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene= (self.hygiene - 3)
        self.happiness= (self.happiness + 2)
        '♪ another one bites the dust ♫'
    end

    def call_friend friend
        @friend = Person.new(friend)
        self.happiness= (self.happiness + 3)
        friend.happiness= (friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation someone, topic
        case topic
        when 'politics'
            self.happiness= (self.happiness - 2)
            someone.happiness= (someone.happiness - 2)
            'blah blah partisan blah lobbyist'
        when 'weather'
            self.happiness= (self.happiness + 1)
            someone.happiness= (someone.happiness + 1)
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end

end
