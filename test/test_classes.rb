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
    
    f_path = 'conf/locations.yaml'
    game.load_data f_path
  
  end
end

