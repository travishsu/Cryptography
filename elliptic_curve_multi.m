function multi_P = elliptic_curve_multi(P, m, a, b, p)

multi_P = P;

for i = 2:m
    multi_P = elliptic_curve(multi_P, P, a, b, p);
end
end