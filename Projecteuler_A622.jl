function ProjectEuler_A622(s)
    #korrekt aber schlechte Laufzeit
    sum = 2^s
    L=[2^s]
    for x= 2:2^(s-1)
        Add = false
        if 2^s % (x-1) == 1
            Add = true
            for n=1:s-1
                if 2^n % (x-1) == 1
                    Add = false
                    break
                end
            end
            if Add
                sum += x
                L=push!(L, x)
            end
        end

    end
    return sum,L
end

println(ProjectEuler_A622(8))




using Primes


function faster_func(s)
    #First we find all the factors as candidates
    #then we check if they are valid candidates
    number = 2^s-1
    factors_list = divisors(number)
    candidates = factors_list .+1
    for i = 1:length(candidates)
        for t= 1:s-1
            if 2^t % (candidates[i]-1) == 1
                candidates[i] = 0
                break
            end
        end
    end
    #eliminate 1/2 from candidates list
    return sum(candidates)-2
end
println(faster_func(60))