require('minitest/autorun')
require('minitest/reporters')
require_relative('../Fish.rb')
require_relative('../Bear.rb')
require_relative('../River.rb')

MiniTest::Reporters.use!
MiniTest::Reporters::SpecReporter.new

class RiverTest < MiniTest::Test

  def setup()
     @river = River.new("Cart")
     @fish_1 = Fish.new("Harold")
     @fish_2 = Fish.new("Wendy")
     @fish_3 = Fish.new("Wanda")
   end

   def test_river_has_name()
     assert_equal("Cart", @river.name)
   end

   def test_fish_poplation_at_start_0()
     assert_equal(0, @river.fish_count())
   end

   def test_add_fish_to_river()
     @river.add_fish(@fish_1)
     @river.add_fish(@fish_2)
     @river.add_fish(@fish_3)
     assert_equal(3, @river.fish_count())
   end

   def test_remove_fish()
     @river.add_fish(@fish_1)
     @river.add_fish(@fish_2)
     @river.add_fish(@fish_3)
     @river.remove_fish(@fish_3)
     assert_equal(2, @river.fish_count())
   end

 end
