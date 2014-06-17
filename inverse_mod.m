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
    p_minus2_bin = dec2bin(p-2);
    for i = 2:size(p_minus2_bin, 2)
        d = mod(d*d, p);
        if p_minus2_bin(i)
            d = mod(d*e, p);
        end
    end
    %d = mod(e^(p-2), p);
end