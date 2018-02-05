require 'minitest/autorun'
require 'minitest/pride'
require './lib/offset'

class OffsetTest < Minitest::Test

  def test_date_offset_exists
    date_offset = DateOffset.new
    date_offset.date_formatter

    assert_instance_of DateOffset, date_offset
  end

  def test_date_squared
    date_offset = DateOffset.new
    result = date_offset.date_squared.count

    assert_equal 4, result

  end

  def test_new_date_offset
    date = DateOffset.new

    result = date.rotation_sequence.count
    binding.pry

    assert_equal 4, result
  end

end
