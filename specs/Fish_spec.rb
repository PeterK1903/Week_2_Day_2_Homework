require('minitest/autorun')
require('minitest/reporters')
require_relative("../Bear.rb")
require_relative("../Fish.rb")
require_relative("../River.rb")

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class FishTest < MiniTest::Test

  def setup()
      @fish = Fish.new("Harold")
    end

    def test_get_fish_name
      assert_equal("Harold", @fish.name)
    end

  end
