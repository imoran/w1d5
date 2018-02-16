class Map
  attr_reader :map

  def initialize
    @map = []
  end

  def assign(key, value)
    if exists?(key)
      map.each do |arr|
        arr[1] = value if arr[0] == key
      end
    else
      map << [key, value]
    end
  end

  def lookup(key)
    map.select { |arr| arr[0] == key }
  end

  def remove(key)
    map.delete_if { |arr| arr[0] == key }
  end

  def show
    map
  end

  def exists?(key)
    exists = false
    map.each do |arr|
      exists = true if arr[0] == key
    end
    exists
  end
end
