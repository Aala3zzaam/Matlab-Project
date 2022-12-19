function result = Trap(f, a, b, n)
%   f: the integral function
%   a: the lower bound of the integral
%   b: the upper bound of the integral
%   n: the number of intervals
%   result: the approximate value of the integral

% Calculate step size
h = (b-a)/n;

% Initialize sum to 0
sum = 0;

% Approximate the integral using the trapezoidal rule
for i = 1:n
    x_left = a + (i-1)*h;
    x_right = a + i*h;
    sum = sum + (f(x_left) + f(x_right))*h/2;
end

% Assign the value of sum to result
result = sum;
disp(result);
end
