class Trie(T)
  def initialize(data : T? = nil)
    @data = data
    @children = Hash(Char, Trie(T)).new
  end

  def insert(str : String, data : T)
    if str.empty?
      @data = data
      return self
    else
      @children[str[0]] = Trie(T).new unless @children.has_key? str[0]
      return @children[str[0]].insert(str[1..-1], data)
    end
  end

  def get(str : String)
    if str.empty?
      if @data.nil?
        raise "Valueless node"
      else
        return @data
      end
    end

    if @children.has_key? str[0]
      return @children[str[0]].get(str[1..-1])
    else
      raise "Non-existant key"
    end
  end
end
