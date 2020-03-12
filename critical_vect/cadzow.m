function [x_ans calc_num] = cadzow(A,b)
[m n] = size(A);

A1 = A(:,1:m-1);
A2 = A(:,m:n);

v = null(A1');

A1b_inv = [A1 b]^-1;

u = sign(b'*v)/(norm((A2'*v),1))*v;
x2 = b'*u*sign(A2'*u);
x1 = A1b_inv*(b-A2*x2);
x = [x1(1:m-1) ; x2];

track_index = 1:n;

calc_num = 0;
while(~(max(abs(x1))<=b'*u))
    p = find(max(abs(x1))==(abs(x1)));
    ep = zeros(m,1);
    ep(p) = 1;
    g = sign(x1(p))*A1b_inv'*ep;
    
    esp = -(A2'*u)./(A2'*g);
    
    q = find(max(1./esp)==(1./esp));
    esp_a = esp(q);
    
    temp_v1 = A1(:,p);
    temp_v2 = A2(:,q);
    A1(:,p) = temp_v2;
    A2(:,q) = temp_v1;
    
    temp = track_index(p);
    track_index(p) = track_index(q+m-1);
    track_index(q+m-1) = temp;
    
    A1b_inv = [A1 b]^-1;
    
    u = sign(esp_a)/(norm((A2'*(u+esp_a*g)),1))*(u+esp_a*g);
    x2 = b'*u*sign(A2'*u);
    x1 = A1b_inv*(b-A2*x2);
    
    x = [x1(1:m-1); x2];
    calc_num = calc_num+1;
end

ATu = [A1 A2]'*u;

x_ans = zeros(5,1);
ATu_ans = zeros(5,1);


for i=1:n
    x_ans(track_index(i)) = x(i);
    ATu_ans(track_index(i)) = ATu(i);
end

calc_num;


end

