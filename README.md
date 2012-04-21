# Jisho 辞書

[Jisho](http://erol.github.com/jisho) is a Ruby wrapper for [Hunspell](http://hunspell.sourceforge.net/).

## Dependencies

Jisho requires Hunspell and atleast one dictionary. You can install them on Mac OS X via MacPorts:

    port install hunspell hunspell-dict-en_US

Or via HomeBrew:

    brew install hunspell

Debian users can use `apt-get`:

    apt-get install hunspell hunspell-en-us

## Installation

Add this line to your application's Gemfile:

    gem 'jisho'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jisho

## Usage

If you're not using Bundler, you will need to require Jisho in your application:

    require 'jisho'

You can check for misspelled words by calling `Jisho.check`:

    misspellings = Jisho.check 'Thiis sentence has a misspelled word.'

`Jisho.check` returns an array of hashes, each containing the misspelled word, the row and column where it is located, and the list of suggestions.

    misspellings # => [{:word=>"Thiis", :row=>1, :column=>1, :suggestions=>["Thais", "This", "Thins"]}]

You can also get the unique set of misspelled words:

    misspellings.words # => ["Thiis"]

## Contributing

1. Fork it
2. Create your feature branch ( `git checkout -b my-new-feature` )
3. Create tests and make them pass ( `rake test` )
4. Commit your changes ( `git commit -am 'Added some feature'` )
5. Push to the branch ( `git push origin my-new-feature` )
6. Create a new Pull Request