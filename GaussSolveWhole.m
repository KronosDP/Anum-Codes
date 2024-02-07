function x = GaussSolveWhole(A, b)
  %gauss only
  n = length(b);
  C = [A b];
  for j=1:n-1
    for i=j+1:n
      m = C(i, j)/C(j,j);
      C(i,:) = C(i,:)-m*C(j,:);
    end
  end
  U = C(:,1:n);
  b1 = C(:,n+1);

  %atas
  n = length(b1);
  x = zeros(n,1);
  for i=n:-1:1
    x(i) = (b1(i) - U(i,i+1:n) * x(i+1:n)) / U(i,i);
  end
end
