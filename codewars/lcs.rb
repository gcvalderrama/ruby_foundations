def lcs(x, y, state = nil)
  
  
    if !state 
      #puts "===="
      #puts x
      #puts y
      state = {}
    end  
    if state[x+y]         
      return state[x+y]
    end
    
    result = ""
    if x.size == 0 or y.size == 0
      return result    
    elsif x[-1] == y[-1]  
      result = lcs(x[0...-1], y[0...-1], state) + x[-1]
    elsif x[-1] != y[-1]    
      tmp1 = lcs(x[0...-1], y, state)
      tmp2 = lcs(x, y[0...-1], state)    
      result = tmp1.size > tmp2.size ? tmp1 : tmp2    
      
    end
    
    state[x+y] = result
    
    
    #puts result
    
    return result 
    
  end