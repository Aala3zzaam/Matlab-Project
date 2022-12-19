function result = IAnalyze(exactvalue, f, a, b)
%exactvalue = input('Please Enter the exact value');
% compute all methods for n = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
for i=1:10
  x = exactvalue;
  y1 = Trap(f, a, b, i*10);
  y2 = Simp(f, a, b, i*10);
  y3 = MPoint(f, a, b, i*10);
  plot(x, y1, 'r--', x, y2,'b:', x, y3,'y*')
  title('Graph of the methods')
  xlabel('Exact Value')
  ylabel('Approximate value')
  legend('Trapezoidal', 'Simpson', 'Midpoint')
end
end

