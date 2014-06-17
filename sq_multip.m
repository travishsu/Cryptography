function a = sq_multip(root, expo_bin, module)

    N = size(expo_bin, 1)-1;
    a = root;
    
    expo_bin = expo_bin(end:-1:1);
    
    for i = 1:N
        a = mod(a*a, module);
        if expo_bin(i+1)
            a = mod(a*root, module);
        end
        fprintf('[%d]\t%d\n', i, a)
        
        if i < N
            expo_bin(i+2:end)'
        end
    end
    