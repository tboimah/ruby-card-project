class Card
    attr_reader :rank, :suit

    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end

    def to_s
        "#{rank} of #{suit}"
    end
end

# Test the card class
card = Card.new("Ace", "Spades")
puts card
