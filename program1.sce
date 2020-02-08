A=input("Enter elements of matrix A:")
disp(A,"The coefficients of matrix A are:")
B=input("Enter elements of matrix B:")
disp(B,"The coefficients of matrix B are:")

for l=1:3
    L(l,l)=1
end

for x=1:3
    for y=1:3
        s=0
        if y>=x
            for k=1:i-1
                s=s+L(x,k)*U(k,y)
            end
            U(x,y)=A(x,y)-s;
        else
            for k=1:y-1
                s=s+L(x,k)*U(k,y)
            end
            L(x,y)=(A(x,y)-s)/U(y,y)
        end
    end
end

disp(U,"Upper triangular matrix")
disp(L,"Lower triangular matrix")

c=L\B
z=U\c
disp(z,"solution of the equations are")
