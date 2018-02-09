class Dictionary
  def initialize
    @newHash = {}
  end

  def add(kv)
    if kv.kind_of?(Hash)
      kv.each do |key, value|
        @newHash[key] = value
      end
    else @newHash.store(kv, nil)
    end
  end

  def entries
    @newHash
  end

  def keywords
    @newHash.keys.sort
  end

  def include?(keys)
    @newHash.key?(keys)
  end

  def find(arg)
    @newHash.select {|key, value| key.scan(arg).join == arg}
  end

  def printable
  sorted_hash = @newHash.sort_by {|key, value| key}
  sorted_hash.map{|key, value| "[#{key}] \"#{value}\"\n" }.join.chop!
  end
end
