require '../lib/spell_digit'
require 'test/unit'


class TestSpell_digit < Test::Unit::TestCase
def setup
@t=Spell_digit.new
end

def teardown
@t=nil
end


  def test_one
   assert_equal "eleven",@t.convert(11)
   assert_equal "twelve",@t.convert(12)
   assert_equal "fifteen",@t.convert(15)
   assert_equal "thirtythree",@t.convert(33)
   assert_equal "five hundred",@t.convert(500)
   assert_equal "six hundred and eightyseven",@t.convert(687)
   assert_equal "one thousand two hundred and fifty",@t.convert(1250)
   assert_equal "two thousand three hundred and fifty",@t.convert(2350)
   assert_equal "five thousand eight hundred and ninty",@t.convert(5890)
   assert_equal "eight thousand ninty",@t.convert(8090)
  end
end
