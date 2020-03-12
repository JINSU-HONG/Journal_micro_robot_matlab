clc
clear
A = [0.8740    0.9609    0.0434    0.9026    0.8398
    0.1978    0.1566    0.9733    0.1582    0.9969
    0.4463    0.2505    0.5429    0.2142    0.5569];

[m n] = size(A);

max_val = 0;
max_v = 0;
max_inf = 0;



for i=1:100000
    B = randn(3,1);
    B = B/norm(B);
    
    c = cadzow(A,B);
    
    
    temp = max(abs(c));
    
   if(max_val<temp)
       max_v = B;
       max_val= temp;
       max_inf = c;
   end
end

cube_len = 9
v = zeros(3,cube_len^2);
num = 0;
center = (cube_len - 1)/2;
for i = 1:cube_len
    for j = 1:cube_len
        for k = 1:cube_len
            num = num+1;
            v(:,num) = [i-center j-center k-center]';
        end
    end
end



[B_mag, max_vect] = max_B_field_inff_calc(A,10,v);

dot(max_v,max_vect)

u = zeros(3,factorial(n)/factorial(n-(m-1))/factorial(m-1));
num = 1;
for i = 1:n-1
    for j = i+1:n
        A_prime=[A(:,i) A(:,j)]';
        u_temp = null(A_prime);
        u(:,num) = u_temp/norm(A'*u_temp,1);
        num = num+1; 
        

    end
end

max_mag = max(sum(u.^2));

max_vect = u(:,find(max_mag == sum(u.^2)));
max_vect = max_vect/norm(max_vect);

dot(max_v,u(:,5)/norm(u(:,5)))

