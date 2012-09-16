# Randomer

A gem for random everything.

## Installation

Add this line to your application's Gemfile:

    gem 'randomer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install randomer

## Usage

```ruby
# Get one in an array or a range random
range_number = 1..1000
array_string = ['cp', 'mv', 'ab', 'git', 'ruby']
puts Randomer::Ranger.rand_in range_number
# => 855
puts Randomer::Ranger.rand_in array_string
# => "ruby"

puts Randomer::Ranger.randmon_string 10
# => "myjxquvpsr"

puts Randomer::Ranger.randmon_string 10 :lower
# => "rviekbiyuy"

Randomer::Ranger.randmon_string 10, :upper
# => "WMIKCIOGVJ"

puts Randomer::Ranger.randmon_string(
  10,
  :upper,
  :lower
)
# => "RANTIrawWk"

puts Randomer::Ranger.randmon_string(
  10,
  :symbol
)
# => "**'&-!/)(%"

puts Randomer::Ranger.randmon_string(
  50,
  :symbol,
  :upper,
  :lower,
  :number
)
# => "o.42zCQ1ER'W1Q#A+YmgNbOexl((Xk9YSO+BP029Z6R4g+LQBo"

# random with percent hash
percent_list = {
  :a => 400,  # Most probability get this!
  :b => 1000, # Most probability get this!
  :c => 1,    # Amoust nerver get this!
  :e => 0,    # Never get this!
}
puts Randomer::Percent.pick_one percent_list
# => b
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## TODO

1. More random way!
