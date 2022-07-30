function [Q, R]=GramSchmidt(A) %factorization QR 
[m n]=size(A); 
if (m<n)
error("The dimension of the matrix does not meet the required conditions")
end
R=zeros(n,n);
Q=zeros(m,n);

for j=1:n
Z=zeros(m,1); 
for i=1:j-1
R(i,j)=Q(:,i)'*A(:,j); 
Z=Z+R(i,j)*Q(:,i); 
end

Q(:,j)=A(:,j)-Z; 
R(j,j)=norm(Q(:,j),2);
Q(:,j)=Q(:,j)/R(j,j);
end
end
