class InvalidAmericanError < StandardError
end

class American
  attr_accessor :thing
  VALID_CHOICES = %w[tounchdown field\ goal safety].freeze

  def initialize(thing)
    @thing = validate(thing)
  end

  def validate(thing)
    return thing if VALID_CHOICES.include?(thing)

    raise InvalidAmericanError
  end

  def points
    if @thing == "tounchdown"
      "number you won seven points"
    elsif @thing == "field goal"
      "number you won two points"
    elsif @thing == "safety"
      "number you won three points"
    end
  end
end
