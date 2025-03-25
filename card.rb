# card.rb

class Card
    attr_reader :rank, :suit
    
    # Initialize a new card with a rank and a suit
    def initialize(rank, suit)
      @rank = rank
      @suit = suit
    end
    
    # Method to display the card in a readable format
    def display
      "#{rank} of #{suit}"
    end
  
    # Method to compare cards by rank, and then suit if ranks are equal
    def >(other_card)
      rank_order = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace']
      rank_index_self = rank_order.index(rank)
      rank_index_other = rank_order.index(other_card.rank)
  
      if rank_index_self == rank_index_other
        suit_order = ['Clubs', 'Diamonds', 'Hearts', 'Spades']
        suit_index_self = suit_order.index(suit)
        suit_index_other = suit_order.index(other_card.suit)
        suit_index_self > suit_index_other
      else
        rank_index_self > rank_index_other
      end
    end
  end
  
  # Example usage of the Card class
  card1 = Card.new('Ace', 'Spades')
  card2 = Card.new('King', 'Hearts')
  
  puts card1.display  # Output: Ace of Spades
  puts card2.display  # Output: King of Hearts
  
  # Comparing the cards
  if card1 > card2
    puts "#{card1.display} is greater than #{card2.display}"
  else
    puts "#{card2.display} is greater than #{card1.display}"
  end
  