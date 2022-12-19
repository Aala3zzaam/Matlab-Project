function result = Simp(f, a, b, n)
%   f: the integral function
%   a: the lower bound
%   b: the upper bound
%   n: the number of equally spaced intervals to use (must be even)
%   result: the approximate value
% Check that n is even
if mod(n,2) ~= 0
    error('Number of intervals must be even')
else
    % the step size
    h = (b-a)/n;
    % Initialize the result to the value at the first point
    simpsons = 0;
    for i = 1:n
        if mod(i, 2) == 0
            simpsons = simpsons + 2*f(a + (i-1)*h);
        else
            simpsons = simpsons + 4*f(a + (i-1)*h);
        end
    end
    result = (h/3)*(simpsons + f(b));
end
disp(result);
end





