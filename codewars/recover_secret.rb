def is_valid(triplets, term)
  is_valid = true
  triplets.each do |vector|        
      for i in 0...vector.size 
        if vector[i] == term && i!=0
          is_valid = false
          break           
        end      
      end        
      if !is_valid
        break
      end
  end   
  return is_valid
end
def recover_secret triplets
# TODO  
result = []  
abc = triplets.flatten.uniq           
while (abc - result).size > 0        

  (abc - result).each do |term|    
  
    if is_valid(triplets, term)
    
      triplets.each do |vector|  
      
        vector.delete(term)                  
        
      end                        
      
      result.push(term)        
    end    
  
  end    
  
end
return result.join
end

secret_1 = "whatisup"

triplets_1 = [
  ['t','u','p'],
  ['w','h','i'],
  ['t','s','u'],
  ['a','t','s'],
  ['h','a','p'],
  ['t','i','s'],
  ['w','h','s']
]

print recover_secret(triplets_1)