class Trie(T)
  def initialize(data : T? = nil)
    @data = data
    @children = Hash(Char, Trie(T)).new
  end

  def insert(str : String, data : T)
    if str.empty?
      @data = data
    else
      @children[str[0]] = Trie(T).new unless @children.has_key? str[0]
      @children[str[0]].insert(str[1..-1], data)
    end
    return nil
  end

  def get(str : String)
    return @data if str.empty?

    if @children.has_key? str[0]
      return @children[str[0]].get(str[1..-1])
    else
      raise Exception.new("Non-existant key")
    end
  end
end
