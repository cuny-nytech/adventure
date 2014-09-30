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
require 'player'

class TestGame < MiniTest::Test
  def test_game_name
    game = Game.new('Adventure in the magic land', 'conf/locations.yaml')
    assert_equal('Adventure in the magic land', game.name)
  end

  
  def test_npc
    npc = NPC.new(0,{"strength" => 10, "weapon_skill" => 12, "agility" => 5, "endurance" => 8, "health" => 40})
    assert_equal(10, npc.strength)
    assert_equal(12, npc.weapon_skill)
    assert_equal(40, npc.health)

    npc.add_item "sword"
    npc.add_item "gold key"
    assert_equal(["sword", "gold key"], npc.storage)

    npc.change_location 12
    assert_equal(12, npc.location)
    puts npc.choose_action ["n", "s", "pick up", "take out"]
    puts npc.choose_action ["n", "s", "pick up", "take out"]
    puts npc.choose_action ["n", "s", "pick up", "take out"]
    puts npc.choose_action ["n", "s", "pick up", "take out"]
    puts npc.choose_action ["n", "s", "pick up", "take out"]
  end

  def test_human_player 
    p = HumanPlayer.new(16, {"strength" => 14, "weapon_skill" => 10, "agility" => 8, "endurance" => 13, "health" => 25}, "Pedro")

    assert_equal(16, p.location)
    assert_equal("Pedro", p.name)

  end

end

