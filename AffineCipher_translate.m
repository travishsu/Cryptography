function AffineCipher_translate(y)

    for i = 1:size(y, 2)
        AffineCipher_nTe(y(i));
    end
    
end