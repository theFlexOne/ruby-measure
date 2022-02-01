require "pry"

module Unit_Validator
  def self.valid?(message = {})
    binding.pry
    true
  end
end

class Unit
  include Unit_Validator
  attr_reader :symbol, :multiplier

  def initialize(symbol, multiplier, type = "undefined", options = { name: "", system: "" })
    binding.pry
    @symbol = symbol
    @multiplier = multiplier
    @type = type
    @name, @system = options.fetch_values(:name, :system)
    @system = options[:system]
    Unit_Validator.valid?(self)
  end
end

binding.pry
