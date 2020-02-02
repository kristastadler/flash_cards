require './lib/turn'
require './lib/card'
require './lib/deck'

class Round
  attr_reader :deck, :turns
#  attr_accessor :turns

  def initialize(deck_parameter)
    @deck = deck_parameter
    @turns = []
  end

  def current_card
    @deck.cards[0]
    end

  def take_turn(guess_parameter)
    @guess = guess_parameter
    new_turn = Turn.new(@guess, current_card)
    @turns << new_turn
  end

  def number_correct
    if @guess == current_card.answer
      p 1
    end
  end
  end
