def speed_option(input)

  case input

  when 1
    return {type: "standard", cost_mult: 1.23}
  when 2
    return {type: "express", cost_mult: 3.69}
  when 3
    return {type: "lightning", cost_mult: 12.01}
  else
    return homepage
  end

end

def choose_menu_options(input)

    case input

    when 2

        ["1. go to your homepage?", "2. go back to the list of deliveries?", "3. log off?"]
        
    when 3

        ["1. go to your homepage?", "2. go back to the list of deliveries to update another one?", "3. log off?"]
        
    when 4

        ["1. go to your homepage?", "2. go back to the list of past deliveries?", "3. log off?"]

    when 5

        ["1. go to your homepage?", "2. go back to the list of deliveries to cancel another one?", "3. log off?"]
        
    else

        
        
    end
    
end