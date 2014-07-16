require  '../lib/roman'
require 'test/unit'


class TestRoman < Test::Unit::TestCase

def setup
@t=Roman.new
end

def teardown
@t=nil
end

def test_one
assert_equal 'I',@t.convert(1)
assert_equal 'II',@t.convert(2)
assert_equal 'III',@t.convert(3)
assert_equal 'IV',@t.convert(4)
assert_equal 'V',@t.convert(5)
assert_equal 'VI',@t.convert(6)
assert_equal 'VII',@t.convert(7)
assert_equal 'IX',@t.convert(9)
assert_equal 'X',@t.convert(10)
assert_equal 'XIV',@t.convert(14)
assert_equal 'XXXVII',@t.convert(37)
assert_equal 'XXXXVI',@t.convert(46)
assert_equal 'L',@t.convert(50)
assert_equal 'LXXV',@t.convert(75)
assert_equal 'LXXXVII',@t.convert(87)
assert_equal 'C',@t.convert(100)
assert_equal 'CXXV',@t.convert(125)
assert_equal 'CCCLXXXXVII',@t.convert(397)
assert_equal 'D',@t.convert(500)
assert_equal 'DCCLXXXXIX',@t.convert(799)
assert_equal 'M',@t.convert(1000)
end
end  
