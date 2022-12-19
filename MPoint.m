function result = MPoint(f, a, b, n)
%   f: the integral function
%   a: the lower bound of the integral
%   b: the upper bound of the integral
%   n: the number of intervals
%   result: the approximate value of the integral

% Calculate step size
h = (b-a)/n;

% Initialize result to 0
result = 0;

% Approximate the integral using the midpoint rule
for i = 1:n
    x = a + (i-0.5)*h;
    result = result + h*f(x);
end
disp(result);
end





