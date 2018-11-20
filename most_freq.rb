def most_freq(arr)
  max_freq = 0
  max_value = nil
  freqs = Hash.new(0)
  arr.each do |e|
    freqs[e] += 1
    if freqs[e] > max_freq
      max_freq = freqs[e]
      max_value = e
    end
  end
  max_value
end

require 'minitest/autorun'

class MostFreqTest < Minitest::Test
  def test_with_regular_array
    arr = [1,3,1,3,2,1]
    expected = 1
    assert_equal expected, most_freq(arr)
  end

  def test_with_empty_array
    arr = []
    expected = nil
    assert_equal expected, most_freq(arr) 
  end
end