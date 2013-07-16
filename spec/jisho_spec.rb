require 'helper.rb'
require 'jisho'

describe Jisho do
  describe '.check' do
    it 'returns mispelled words' do
      misspellings = Jisho.check 'iincorrect spellingg'

      expect( misspellings ).not_to be_empty
      expect( misspellings.words ).to include 'iincorrect'
      expect( misspellings.words ).to include 'spellingg'
    end

    it 'ignores non-mispelled words' do
      misspellings = Jisho.check 'correct spelling'

      expect( misspellings ).to be_empty
    end
  end
end
