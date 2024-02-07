function [L, U, p] = LU_decomposition(A)
    % keep track of p karena kita belum bekerja dengan matriks augmentasi [A | b]

    % LU Decomposition with partial pivoting
    % Input: A (non-singular square matrix)
    % Outputs: L (lower triangular matrix), U (upper triangular matrix), and pivot vector p

    % Initialize variables
    n = size(A, 1);
    L = eye(n); % Initialize L as the identity matrix
    p = 1:n; % Initialize pivot vector

    for k = 1:n-1
        % Find the maximum absolute value in the column
        [~, t] = max(abs(A(k:n, k)));
        t = t + k - 1; % Adjust index to account for submatrix
        % Swap rows k and t in matrix A
        A([k, t], :) = A([t, k], :);
        % Swap rows k and t in matrix L (up to column k-1)
        L([k, t], 1:k-1) = L([t, k], 1:k-1);
        % Update pivot vector
        p([t, k]) = p([k, t]);

        % Elimination process
        for i = k+1:n
            L(i, k) = A(i, k) / A(k, k);
            A(i, :) = A(i, :) - L(i, k) * A(k, :);
        end
    end

    % Final result: U is the modified A
    U = A;
end

