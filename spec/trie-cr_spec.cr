require "./spec_helper"

describe Trie do
  # TODO: Write tests

  it "stores data" do
    trie = Trie(String).new
    trie.insert("foo", "bar")
  end

  it "can read data" do
    trie = Trie(String).new
    trie.insert("foo", "bar")
    trie.insert("foo-bar", "bar")

    unless trie.get("foo") == "bar"
      fail "Incorrect value"
    end
  end

  it "overwrites data" do
    trie = Trie(String).new
    trie.insert("foo", "bar")
    trie.insert("foo", "baz")

    unless trie.get("foo") == "baz"
      fail "Value was not overwritten"
    end
  end
end
