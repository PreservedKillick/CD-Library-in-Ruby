class Model
attr_reader :value

  def initialize(value)
    @value = value
  end
end

class Artist < Model
end

class Album < Model
end
