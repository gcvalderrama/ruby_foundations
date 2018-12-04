def is_polydivisible(s, b)
    s.each_char.with_index do |digit, index|
      return false if to_int(s[0..index], b) % (index + 1) != 0
    end
    return true
end

def get_polydivisible(n, b)
    numbers = [0]
    number = 1
    until numbers.length == n
        numbers << number if is_polydivisible(to_str(number, b), b)
        number += 1
    end
    to_str(numbers[-1], b)
end

def to_str(n, b)
    return '0' if n == 0
    s = ''
    until n == 0
        s = CHARS[n % b] + s
        n /= b
    end
    s
end

def to_int(s, b)
    s.reverse.each_char.with_index.reduce(0){|sum, (c, i)| sum + CHARS.index(c) * b ** i}
end