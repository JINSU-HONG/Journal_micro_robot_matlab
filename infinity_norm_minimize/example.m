m=4;
n=5;

A = 2/5*[1 cos(2/5*pi) cos(4*pi/5) cos(-2/5*pi) cos(-4*pi/5)
    0 sin(2/5*pi) sin(4*pi/5) sin(-2/5*pi) sin(-4*pi/5)
    1 cos(4/5*pi) cos(-2*pi/5) cos(2/5*pi) cos(-4*pi/5)
    0 sin(4/5*pi) sin(-2*pi/5) sin(2/5*pi) sin(-4*pi/5)]

A1 = A(:,1:3);
A2 = A(:,4:5);

v = null(A1')
y = [1 2 -1 4.1]'

A1y_inv = [A1 y]^-1;

u = sign(y'*v)/(norm((A2'*v),1))*v;
x2 = y'*u*sign(A2'*u);
x1 = A1y_inv*(y-A2*x2);
x1_red = [x1(1); x1(2); x1(3)];
x1 = x1_red;
ans_v = [x1_red ; x2];


calc_num = 1;
track_index = [1,2,3,4,5];
while(~(max(abs(x1_red))<y'*u))
    p = find(max(abs(x1))==(abs(x1)));
    ep = zeros(m,1);
    ep(p) = 1;
    g = sign(x1(p))*A1y_inv'*ep
    
    esp = -(A2'*u)./(A2'*g);
    
     q = find(max(abs(1./esp))==(abs(1./esp)));
     esp_a = esp(q);
     
     temp_v1 = A1(:,p);
     temp_v2 = A2(:,q);
     A1(:,p) = temp_v2;
     A2(:,q) = temp_v1;
     
     temp = track_index(p);
     track_index(p) = track_index(q+m-1);
     track_index(q+m-1) = temp;
     
     A_upt = [A1 A2];
     
     A1y_inv = [A1 y]^-1;
     
     u = sign(esp_a)/(norm((A2'*(u+esp_a*g)),1))*(u+esp_a*g);
     x2 = y'*u*sign(A2'*u);
     x1 = A1y_inv*(y-A2*x2);
     x1_red = [x1(1); x1(2); x1(3)];
     
     ans_v2 = [x1_red ; x2];
     calc_num = calc_num+1;
end
calc_num

ans_f = zeros(5,1);
ans_f(track_index(1)) = ans_v2(1);
ans_f(track_index(2)) = ans_v2(2);
ans_f(track_index(3)) = ans_v2(3);
ans_f(track_index(4)) = ans_v2(4);
ans_f(track_index(5)) = ans_v2(5);


A*ans_v
A*ans_f

ans_v
ans_f

cadzow(A,y)
