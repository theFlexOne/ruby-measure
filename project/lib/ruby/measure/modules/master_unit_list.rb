require "pry"

module Master_Unit_List

  MASTER_UNIT_LIST = [
    { symbol: "mm", multiplier: 1000, name: "millimeter", measurement: "length", system: ["metric", "SI"] },
    { symbol: "cm", multiplier: 100, name: "centimeter", measurement: "length", system: ["metric", "SI"] },
    { symbol: "m", multiplier: 1, name: "meter", measurement: "length", system: ["metric", "SI"] },
    { symbol: "km", multiplier: 0.001, name: "kilometer", measurement: "length", system: ["metric", "SI"] },
    { symbol: "in", multiplier: 39.3701, name: "inches", measurement: "length", system: ["imperial", "standard"] },
    { symbol: "ft", multiplier: 3.28084, name: "feet", measurement: "length", system: ["imperial", "standard"] },
    { symbol: "yd", multiplier: 1.09361, name: "yard", measurement: "length", system: ["imperial", "standard"] },
    { symbol: "mi", multiplier: 0.000621371, name: "miles", measurement: "length", system: ["imperial", "standard"] },
    { symbol: "au", multiplier: 6.68459e-12, name: "astronomical unit", measurement: "length", system: ["astronomical", "SI"] },
    { symbol: "s", multiplier: 1, name: "second", measurement: "time", system: ["SI"] },

  ]

  base_units_list = MASTER_UNIT_LIST.select { |unit| unit[:multiplier] == 1}
                                    .map { |unit| [unit[:symbol], unit]}
                                    .to_h

  # base_units = base_units_list.map { |unit| }

  binding.pry

end