require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'
require './lib/deck'

class DeckTest < Minitest::Test

  def test_cards_to_deck
    card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card1, card2, card3]
    deck = Deck.new(cards)
    assert_instance_of Deck, deck
  end

  def test_cards_method
    card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card1, card2, card3]
    deck = Deck.new(cards)
    assert_equal deck.cards, cards
  end

  def test_count_method
    card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card1, card2, card3]
    deck = Deck.new(cards)
    assert_equal 3, deck.count
  end

  def test_cards_in_category_method
    card1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card1, card2, card3]
    deck = Deck.new(cards)
    assert_equal [card2, card3], deck.cards_in_category(:STEM)
    assert_equal [card1], deck.cards_in_category(:Geography)
    assert_equal [], deck.cards_in_category("Pop Culture")
  end

end
