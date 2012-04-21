class Jisho::Misspellings < Array
  # Get the unique set of misspelled words.

  def words
    return @words if defined? @words

    @words = self.map{ |e| e[:word] }.uniq
  end
end