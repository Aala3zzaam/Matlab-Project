function result = IAnalyze(f, a, b)
exactvalue = input('Please Enter the exact value');
% compute all methods for n = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
n = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
y1 = zeros(1,10);
for i=1:10
  x = exactvalue;
  y1(i) = Trap(f, a, b, i*10);
  y2(i) = Simp(f, a, b, i*10);
  y3(i) = MPoint(f, a, b, i*10);
  end
  plot(n, y1, 'r--',n ,y2, 'b:', n, y3, 'y*')
  title('Graph of the methods')
  xlabel('Number of Spaces')
  ylabel('Approximate value')
  legend('Trapezoidal', 'Simpson', 'Midpoint')

end
