% Gaussian Elimination Method
% for square and nonsingular matrices.
% Input:
%   A : coefficient matrix 
%   b : right vector
% Output:
%   x : vector solution
function [x] = GaussianElimination(A, b)
    [m,n] = size(A); 
    if m ~= n
        error('The matrix is ​​not square')
    end
    if abs( det(A) ) <= 1e-10
       error('The matrix is ​​singular')
    end
    % Define the augmented matrix
    A = [A, b]; % n x (n+1)
    % Apply the reduction to an upper triangular
    for j = 1 : n-1 % Record the columns of A
        % get the pivot
        m = A(j,j);
        % Verify that it is different from zero
        if abs(m) <= 1e-10
            % The pivot is zero, so we must
            % exchanging rows
            i = j+1; % Find from next row
            while abs( A(i,j) ) <= 1e-10
                % Since the matrix is ​​not singular, this
                % is finite
                i = i + 1;
            end
            % Swap row j for row i
            A([j,i],:) = A([i,j],:);%[] are the rows, : says that all the columns
            % change pivot
            m = A(j,j);
        end
        % pivot==1
        A(j,:) = A(j,:) / m;
        % Make zeros below the pivot
        for i = j+1 : n
            m = -A(i,j);
            A(i,:) = m*A(j,:) + A(i,:); 
        end
    end
    % Make a one at the pivot of the last row
    A(n,:) = A(n,:) / A(n,n);
    % Apply backward substitution
    for j = n : -1 : 2
        % Make zeros above the diagonal
        for i = j-1 : -1 : 1
            m = -A(i,j);
            A(i,:) = m*A(j,:) + A(i,:); 
        end
    end
    % Extract the last column of the augmented matrix
    x = A(:,n+1);
end
