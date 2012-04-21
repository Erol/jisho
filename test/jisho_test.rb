require_relative 'test_helper.rb'

require 'jisho.rb'

class JishoTest < MiniTest::Unit::TestCase
  def test_jisho_check_returns_misspelled_words
    misspellings = Jisho.check 'iincorrect spellingg'

    refute_empty misspellings
    assert_includes misspellings.words, 'iincorrect'
    assert_includes misspellings.words, 'spellingg'
  end

  def test_jisho_check_ignores_non_misspelled_words
    misspellings = Jisho.check 'correct spelling'

    assert_empty misspellings
    refute_includes misspellings.words, 'correct'
    refute_includes misspellings.words, 'spelling'
  end
end