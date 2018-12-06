

a = [1,3,1,3,2,3]


state = Hash.new{  |hash, key| hash[key] = 0 }

most_frequent = 0
repetitions = 0

for i in a
    state[i] += 1
    if state[i] > repetitions
        repetitions = state[i]
        most_frequent = i
    end
end
print most_frequent
