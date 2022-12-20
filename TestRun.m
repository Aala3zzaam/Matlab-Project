% Input the lower bound
a = str2double(input('Enter the lower bound = '));
% Input the upper bound
b = str2double(input('Enter the upper bound = '));
% Input the integral function
f = input('Enter the integral function = ');
% Input the number of spaces
n = str2double(input('Enter the number of spaces = '));
% Input the name of the method to run
method = input('Enter the name of the method to run (Trap, Simp, MPoint, or IAnalyze): ');

try
    % Evaluate the chosen method using the feval function
    arg = {f, a, b, n};
    result = feval(method, arg);
    disp(result);
catch ME
    % If an error or exception occurs, print an error message
    fprintf('The method you typed does not exist');
end
