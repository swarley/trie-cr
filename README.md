# trie-cr

A crystal based implementation of a trie data structure.

## Installation

Add this to your application's `shard.yml`:


## Usage

```crystal
require "trie"
```

```crystal
trie = Trie(String).new
# => #<Trie(String):0x18b0d80 @children={}, @data=nil>
trie.insert("foo")
# => #<Trie(String):0x1127d20 @children={}, @data="bar">
trie.get("foo")
# => "bar"
trie.get("bar")
# Error

```

## Contributing

Please, please, please send me feedback or feature requests. Trying to get into crystal and I'm happy to hear what could be done better.
1. Fork it ( https://github.com/swarley/trie-cr/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [swarley](https://github.com/swarley) Matt - creator, maintainer
