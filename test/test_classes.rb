#!/usr/bin/env ruby
# File that will test implementation of classes for adventure game
# using Test::Unit
#
# Slavisa Djukic<Slavisa.Djukic15@myhunter.cuny.edu>
# Sep. 27, 2104.
#
# run: ruby -I . test_classes.rb 

require 'minitest/autorun'
require 'game'

class TestGame < MiniTest::Test
  def test_game_name
    game = Game.new('Adventure in the magic land')
    assert_equal(game.name, 'Adventure in the magic land')
  end

  def test_locations
    
    game = Game.new(' ')
    
    #f_path = 'conf/locations.yaml'
    game.load_data
    
    assert_equal(game.locations_list[0].description, 'You are in the hills on the south west edge of the city.')
    assert_equal(game.locations_list[0].position, '(1, 1)')
    assert_equal(game.locations_list[1].position, '(1, 2)')
    assert_equal(game.locations_list[1].connections, "('n', 'w', 'e')")
  end
end

