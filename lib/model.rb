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



# class Artist(input)
#   def initialize
#     @input = input
#     @cds = []
#   end


#   def input
#     @input
#   end
# end
