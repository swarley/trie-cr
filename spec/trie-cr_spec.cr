require "./spec_helper"

describe Trie do
  it "stores data" do
    trie = Trie(String).new
    p trie.insert("foo", "bar")
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

  it "raises an error if you access an valueless node" do
    trie = Trie(String).new
    trie.insert("foo", "bar")

    begin
      trie.get("fo")
      fail "Error was not raised"
    rescue e
    end
  end
  it "raises an error if you access a nonexistant key" do
    trie = Trie(String).new
    trie.insert("foo", "bar")

    begin
      trie.get("bar")
      fail "Did not error"
    rescue e
      fail "Wrong error" unless e.message == "Non-existant key"
    end
  end
end
