function multip_P = elliptic_curve_multi(P, m, a, p)

    multip_P = P;
    m_bin = dec2bin(m);
    
    for i = 2:size(m_bin, 2)
        multip_P = elliptic_curve(multip_P, multip_P, a, p);
        if m_bin(i)
            multip_P = elliptic_curve(multip_P, P, a, p);
        end
    end
end