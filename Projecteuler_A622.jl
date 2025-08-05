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

ProjectEuler_A622(16)

