function [U, b1] = GaussOnly(A, b)
  n = length(b);
  C = [A b];
  %kolom (paling kiri sampai sebelum habis)
  for j=1:n-1
    %baris (kedua paling atas sampai bawah)
    for i=j+1:n
      %ratio (kiri (dia menurun) / paling atas kiri)
      %notice bahwa dia dibagi elemen diagonal ( C(j,j) )
      m = C(i, j)/C(j,j);
      %update
      C(i,:) = C(i,:)-m*C(j,:);
    end
  end
  U = C(:,1:n)
  b1 = C(:,n+1)
end
