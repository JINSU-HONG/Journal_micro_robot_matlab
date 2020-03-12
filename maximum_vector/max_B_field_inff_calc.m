function [B_mag, max_v] = max_B_field_inff_calc(act_m,limI)
%MAX_B_FIELD_INFF_CALC 이 함수의 요약 설명 위치
%   자세한 설명 위치

[m n] = size(act_m);

u = zeros(3,factorial(n)/factorial(n-(m-1))/factorial(m-1));
num = 1;
for i = 1:n-1
    for j = i+1:n
        A_prime=[act_m(:,i) act_m(:,j)]';
        u_temp = null(A_prime);
        u(:,num) = u_temp/norm(act_m'*u_temp,1);
        num = num+1; 
        

    end
end

max_mag = max(sum(u.^2));

max_vect_u = u(:,find(max_mag == sum(u.^2)));

max_v = max_vect_u/norm(max_vect_u);

max_inff = max_vect_u'*max_v;


B_mag = limI/max_inff;





end

