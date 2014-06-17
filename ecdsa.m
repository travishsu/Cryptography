clc

a=2; b=2; p=17; q=19;

d=10;

A = [5, 1]
B = elliptic_curve_multi(A, d, a, b, p)

% Key generation
h=9;
ke=8;

% Signature
R = elliptic_curve_multi(A, ke, a, b, p)
r = R(1)
s = mod((h+d*r)*inverse_mod(ke, q), q)

% Verification
w = inverse_mod(s, q)
u1 = mod(w*h, q)
u2 = mod(w*r, q)

tmp_A = elliptic_curve_multi(A, u1, a, b, p);
tmp_B = elliptic_curve_multi(B, u2, a, b, p);
P = elliptic_curve(tmp_A, tmp_B, a, b, p)

P(1)
