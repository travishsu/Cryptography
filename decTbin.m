function bin = decTbin(dec)

    buff = zeros(1, 20);
    count = 1;
    
    while dec > 0
        buff(count) = mod(dec, 2);
        dec         = floor(dec/2);
        count       = count + 1;
    end
    
    bin = (buff(1:count-1))';
    