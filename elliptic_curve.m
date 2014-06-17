function R = elliptic_curve(P, Q, a, p)

% R = P + Q in elliptic curve over p with coefficient of x is a.

x1 = P(1); y1 = P(2);
x2 = Q(1); y2 = Q(2);

if norm(P-Q) == 0
    s = (mod(3*x1^2 + a, p))*inverse_mod(2*y1, p);
else
    s = (y2 - y1)*inverse_mod(x2 - x1, p);
end
s = mod(s, p);
inverse_mod(2*y1, p);


x3 = mod(s^2 - x1 - x2, p);
y3 = mod(s*(x1- x3) - y1, p);

R = [x3, y3];