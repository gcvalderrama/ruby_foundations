# sources:
# https://www.mathblog.dk/project-euler-113-googol-not-bouncy/
# https://www.programming-idioms.org/idiom/67/binomial-coefficient-n-choose-k/1656/ruby

def total_inc_dec(x)
    choose(x + 10, 10) + choose(x + 9, 9) - 10 * x - 1
end

def factorial(n=0)
    (1..n).inject(:*)
end
def choose(n, k)
    return factorial(n) / (factorial(k) * factorial(n-k))
end


print choose(9, 2)
