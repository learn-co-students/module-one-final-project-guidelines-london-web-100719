def speed_option(input)

  case input

  when 1
    return {type: "standard", cost_mult: 1}
  when 2
    return {type: "express", cost_mult: 2}
  else
    return {type: "lightning", cost_mult: 10}
  end

end
