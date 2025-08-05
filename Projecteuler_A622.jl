function ProjectEuler_A622(s)
    #korrekt aber schlechte Laufzeit
    sum = 0
    for x= 2:2^s
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
            end
        end
    end
    return sum
end

#ProjectEuler_A622(8)


function test(s)
    L=[]
    for x= 2:2^s
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
                L = push!(L, x)
            end
        end
    end
    return L
end

test(8)
