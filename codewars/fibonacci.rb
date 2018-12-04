require 'matrix'

# https://stackoverflow.com/questions/14661633/finding-out-nth-fibonacci-number-for-very-large-n
#https://en.wikipedia.org/wiki/Generalizations_of_Fibonacci_numbers


def fib(n)
  if n == 0 || n.abs == 1
    return n.abs
  end     
  matrix2 = Matrix[ [1,1], [1,0] ]  ** n.abs    
    
  if n > 0 ||  (n.abs + 1) % 2 == 0 
    return matrix2[0,1]
  else 
    return -1 * matrix2[0,1]
  end
  
  
end


def fib3(n)
  
  if n == 0 || n.abs == 1
    return n.abs
  end     
  t = 0
  p = 1  
  k = 0
  puts n
  for i in 1...n.abs
    k = t + p    
    t = p
    p = k    
  end      
  
  if n > 0 ||  (n.abs + 1) % 2 == 0 
    return k
  else 
    return -1 * k
  end
end
