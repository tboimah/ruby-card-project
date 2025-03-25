# Ruby Card Class

## Description
This project implements a `Card` class in Ruby, simulating a card from a standard deck of playing cards. The class has attributes for **rank** (e.g., Ace, 2, 3, ..., King) and **suit** (e.g., Spades, Hearts, Diamonds, Clubs). It includes methods for displaying the card, comparing two cards, and other card-related functionalities.

## Getting Started

These instructions will help you set up the project on your local machine for development and testing.

### Prerequisites
Before running the project, ensure that you have **Ruby** installed. You can download it from [here](https://www.ruby-lang.org/en/documentation/).

### Installation

1. **Clone the repository**:

   First, clone the repository to your local machine using Git. Open your terminal and run the following command:
   ```bash
   git clone https://github.com/tboimah/ruby-card-project.git


2. Navigate to the project directory:

Change into the directory that was created when you cloned the repository:

    cd ruby-card-project

Run the Ruby file:

You can run the project by executing the Ruby script. Use the following command:

    ruby card.rb

3. Usage
Create a new Card

To create a new card, instantiate the Card class with a rank and suit:

    card = Card.new('Ace', 'Spades')
    puts card.display  # Output: Ace of Spades

This will create a card with the rank Ace and the suit Spades. The display method will output the card in the format: Ace of Spades.
Comparing Cards

You can compare two cards based on their rank (and suit if the ranks are equal):

    card1 = Card.new('Ace', 'Spades')
    card2 = Card.new('King', 'Hearts')

    if card1 > card2
      puts "#{card1.display} is greater than #{card2.display}"
    else
      puts "#{card2.display} is greater than #{card1.display}"
    end

This compares the two cards based on their rank. If their ranks are the same, it compares their suits.
Features

    Card Creation: Instantiate a Card object with a rank and suit.

    Display Card: The display method shows the card in a readable format: Rank of Suit.

    Card Comparison: You can compare cards based on rank, and if ranks are equal, then by suit.

    Flexible Structure: The class can be extended with additional features like shuffling or handling special cards.

Authors

    Thomas (tboimah)

    Ved

 
