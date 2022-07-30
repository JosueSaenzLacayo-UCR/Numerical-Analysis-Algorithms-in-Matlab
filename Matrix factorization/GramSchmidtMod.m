function [Q, R]=GramSchmidtMod(A)
[m n]=size(A); 
if (m<n)
error("The dimension of the matrix does not meet the required conditions")
end
Q=zeros(m,n);
R=zeros(n,n);
for j = 1 : n
    Q(:,j)= A(:, j);

    for i = 1 : j-1
        R(i,j)=Q(:,i)'*Q(:,j);
        Q(:,j)= Q(:,j)-R(i,j)*Q(:,i);
    end
R(j,j)=norm(Q(:,j),2);
Q(:,j)=Q(:,j)/R(j,j);
end
end
