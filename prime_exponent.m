function list = prime_exponent(n)

    a = factor(n);
    
    count = 1;
    idx   = 1;
    
    for i = 2:size(a, 2)
        if a(i) > a(i-1)
            count = count + 1;
        end
    end
    
    list = ones(count, 2);
    list(1, 1) = a(1);
    for i = 2:size(a, 2)
        if a(i) == a(i-1)
            list(idx, 2) = list(idx, 2) + 1;
        else
            idx = idx + 1;
            list(idx, 1) = a(i);
        end
    end
    
end