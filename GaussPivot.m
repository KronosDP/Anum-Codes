function [U, bt] = GaussPivot(A, b)
  % A non singular juga bisa
  % Complexity sama (tapi agak lama dikit)

    % Augment b in A
    A = [A, b];
    n = size(A, 1);

    for k = 1:n-1
        % Find the row index where the maximum absolute value resides
        [~, t] = max(abs(A(k:n, k)));
        t = t + k - 1; % Index adjustment as the column decreases

        % Swap rows k and t
        A([k, t], :) = A([t, k], :);

        for i = k+1:n
            m = A(i, k) / A(k, k);
            % Elimination of the i-th row
            A(i, :) = A(i, :) - m * A(k, :);
        end
    end

    % Extract U (upper triangular matrix) and bt (augmented b)
    U = A(1:n, 1:n);
    bt = A(:, n+1);
end

