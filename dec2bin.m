function bin = dec2bin(dec)

    buff = zeros(1, 20);
    count = 1;
    
    while dec > 0
        buff(count) = mod(dec, 2);
        dec         = floor(dec/2);
        count       = count + 1;
    end
    
    bin = (buff(count-1:-1:1));
    
end
    