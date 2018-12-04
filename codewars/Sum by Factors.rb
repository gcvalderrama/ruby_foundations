def is_prime(n, memory)
  
    memory.each do |item|
      if n % item == 0  
        return false
      end
    end
    return true
    
  end
  def sumOfDivided(lst)
    # ...
    
    if lst.empty?
      return lst
    end
    
    memory = []
    primes = Hash.new(){ |h, k| h[k] = [] }
    
    for i in 2...lst.max
      if is_prime(i, memory)      
        memory.push(i)
        lst.each do |item|
          if item % i == 0          
            primes[i].push(item)          
          end
        end    
      end
    end
    result = []
    
    for k in primes.keys.sort  
      result.push([k, primes[k].inject(0,:+)])
    end
    return result
  end