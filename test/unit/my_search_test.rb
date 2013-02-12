require 'test_helper'

class MySearchTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert MySearch.new.valid?
  end
end
