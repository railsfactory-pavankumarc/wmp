require '../lib/numbers'
require 'test/unit'


class TestNumbers < Test::Unit::TestCase
def setup
@t=Numbers.new
end

def teardown
@t=nil
end


def test_num
assert_equal '1st',@t.convert(1)
assert_equal '2nd',@t.convert(2)
assert_equal '3rd',@t.convert(3)
assert_equal '4th',@t.convert(4)
assert_equal '5th',@t.convert(5)
assert_equal '31st',@t.convert(31)
assert_equal '28th',@t.convert(28)
assert_equal '10th',@t.convert(10)
assert_equal '16th',@t.convert(16)
assert_equal '23rd',@t.convert(23)
assert_equal '22nd',@t.convert(22)
  end



end 
