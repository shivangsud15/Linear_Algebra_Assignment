A=input("Enter elements of matrix A:")
disp(A,"The coefficients of matrix A are:")
B=input("Enter elements of matrix B:")
disp(B,"The coefficients of matrix B are:")
a=[A B]// The augmented matrix
n=3

for x=2:n
    for y=2:n+1
        a(x,y)=a(x,y)-a(1,y)*a(x,1)/a(1,1)
    end
    a(x,1)=0
end

for x=3:n
    for y=3:n+1
        a(x,y)=a(x,y)-a(2,y)*a(x,2)/a(2,2)
    end
    a(x,2)=0
end

z(n)=a(n,n+1)/a(n,n)
for i=n-1:-1:1
    s=0
    for k=i+1:n
        s=s+a(i,k)*z(k)
    end
    z(i)=(a(i,n+1)-s)/a(i,i)
end

disp(z(3),z(2),z(1),"z,y,z are equal to")
disp(a(1,1),a(2,2),a(3,3),"The Pivots")



