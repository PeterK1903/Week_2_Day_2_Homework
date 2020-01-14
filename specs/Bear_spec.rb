require('minitest/autorun')
require('minitest/reporters')
require_relative('../River.rb')
require_relative('../Fish.rb')
require_relative('../Bear.rb')

MiniTest::Reporters.use!
MiniTest::Reporters::SpecReporter.new

class BearTest < MiniTest::Test


      def setup()
        @bear = Bear.new("Yogi","Grizzly")
        @river = River.new("Cart")
        @fish_1 = Fish.new("Harold")
        @fish_2 = Fish.new("Wendy")
        @fish_3 = Fish.new("Wanda")
      end

      def test_get_bear_name()
        assert_equal("Yogi", @bear.name)
      end

      def test_get_bear_type()
        assert_equal("Grizzly", @bear.type)
      end

      def test_get_food_count_0()
        assert_equal(0, @bear.food_count())
      end

      def test_bear_takes_fish_from_river()
        @river.add_fish(@fish_1)
        @river.add_fish(@fish_2)
        @river.add_fish(@fish_3)
        @river.remove_fish(@fish_1)
        @bear.add_fish_to_stomach(@fish_1)
        assert_equal(2, @river.fish_count())
        assert_equal(1, @bear.food_count())
      end

      def test_bear_can_roar()
        assert_equal("Roar!", @bear.roar())
      end

      def test_food_count()
        @river.add_fish(@fish_1)
        @river.add_fish(@fish_2)
        @river.add_fish(@fish_3)
        @river.remove_fish(@fish_1)
        @river.remove_fish(@fish_2)
        @bear.add_fish_to_stomach(@fish_1)
        @bear.add_fish_to_stomach(@fish_2)
        assert_equal(2 ,@bear.food_count())
      end

    end
