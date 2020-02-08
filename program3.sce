A=input("Enter elements of matrix A:")
disp(A,"The coefficients of matrix A are:")
n=length(A(1,:))
augm=[A,eye(n,n)]

for y=1:n-1
    for x=y+1:n
        augm(x,y:2*n)=augm(x,y:2*n)-augm(x,y)/augm(y,y)*augm(y,y:2*n)
    end 
end

for y=n:-1:2
    augm(1:y-1,:)=augm(1:y-1,:)-augm(1:y-1,y)/augm(y,y)*augm(y,:)
end

for y=1:n
    augm(y,:)=augm(y,:)/augm(y,y)
end
B=augm(:,n+1:2*n)
disp(B,"The inverse of A")
