# TypableMap

TypableMap assigns a uniq string to an object and fetches the object by the string.

It's inspired by TweetIrcGateway and FacebookIrcGateway.

## Installation

Add this line to your application's Gemfile:

    gem 'typable_map'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install typable_map

## Usage

    require 'typable_map'

    max_size = 4
    shuffle = true
    typable_map = TypableMap::TypableMap.new(max_size, shuffle)

    # assign a uniq string to an object

    obj1 = Object.new
    uniq_string1 = typable_map.push(obj1)
    puts uniq_string1 # => 'vowi'

    obj2 = Object.new
    uniq_string2 = typable_map.push(obj2)
    puts uniq_string2 # => 'lizo'

    # fetch an object

    obj1 = typable_map[uniq_string1]

    obj2 = typable_map[uniq_string2]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
