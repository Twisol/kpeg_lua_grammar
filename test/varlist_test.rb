require "test/unit"
require './test/helper_methods'

class VarlistTest < Test::Unit::TestCase
  include TestHelperMethods

  def test
    assert_nothing_raised do
      parse "var1", :varlist
      parse "var1,var2", :varlist
      parse "var1, var2", :varlist
    end
  end

  def test_bad
    assert_raise RuntimeError do
      parse "some_method var2", :varlist
    end
  end
end
