f = input('Enter the integral function = ');
% Input the lower bound
a = str2double(input('Enter the lower bound = '));
% Input the upper bound
b = str2double(input('Enter the upper bound = '));
% Input the number of spaces
n = str2double(input('Enter the number of spaces = '));
% input the method the user wants to use
disp('Select a function: ');
disp('(1) Trap');
disp('(2) Simp');
disp('(3) MPoint');
disp('(4) IAnalyze');
method = input('Enter the name of the method');
% Checking if the method the user chooses does exist
if ~strcmpi(method, 'Trap') && ~strcmpi(method, 'Simp') && ~strcmpi(method, 'MPoint') && ~strcmpi(method, 'IAnalyze')
    disp('Error, the method you typed doesnt exist')
else
% running the inputs into the chosen function through the feval function
arg = {f,a,b,n};
result = feval(method,arg);
disp(result);
% end
end
