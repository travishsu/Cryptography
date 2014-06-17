function d = inverse_mod(e, p)

    
    if e == 5
        o = p;
        while mod(o+1, 5) ~=0
            o = o + p;
        end
        
        d = (o+1)/5;
        return;
    end
    
    if e == 10
        o = p;
        while mod(o+1, 10) ~=0
            o = o + p;
        end
        
        d = (o+1)/10;
        return;
    end
    
    d = e;
    for i = 2:p-2
        d = mod(d*e, p);
    end
    %d = mod(e^(p-2), p);
end