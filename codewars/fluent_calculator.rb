class Calc
    { zero: 0, one: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7, eight: 8, nine: 9 }.each do |m, n|
      define_method("#{m}") { 
          @proc ? @proc.call(n) : (@number ||= n ; self )
        }
    end
    
    { plus: :+, minus: :-, times: :*, divided_by: :/ }.each do |m, o|
      define_method("#{m}") { 
          @proc ||= lambda { |a| @number.send(o, a) }; self 
        } 
    end
end

print Calc.new.one.plus.three