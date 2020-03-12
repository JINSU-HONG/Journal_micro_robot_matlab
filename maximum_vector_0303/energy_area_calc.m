clc;
clear;

init

lim_I = 10;


%%

x_lim_L = 0;
x_lim_H = 0.02;
y_lim_L = 0;
y_lim_H = 0.02;

x_index = x_lim_L:0.0001:x_lim_H;
y_index = y_lim_L:0.0001:y_lim_H;
Pz = 0.010;
% Pz = 0.0001;
% Pz = 0.01999;

x_length = length(x_index);
y_length = length(y_index);
cap_curv = zeros(x_length,x_length);
cap_modi_curv = zeros(x_length,x_length);
capability_inff_curve = zeros(x_length,x_length);
current_max_num_curve = zeros(x_length,x_length);

I_min_sq_curv = zeros(x_length,x_length);
I_inff_sq_curv = zeros(x_length,x_length);

grid = [0 0.020;0 0.020;0 0.020];

%%
B = [15,0,0]';
R = 0.2;





%%
for i=1:x_length
    for j=1:y_length
        position = [x_index(j) y_index(i) Pz]';
        
        upt_act_m;
        
        I_mcl = act_m'*(act_m*act_m')^-1*B;
        
        I_inff = cadzow(act_m,B);
        
        
        I_min_sq_curv(i,j) = sum(I_mcl.^2)*R;
        I_inff_sq_curv(i,j) = sum(I_inff.^2)*R;
    end
end


%%
min_z = 30;
max_z = 70;

a=[min_z:5:max_z];
I_min_sq_curv(x_length,x_length)=min_z;
I_min_sq_curv(1,1)=100;

I_inff_sq_curv(x_length,x_length)=min_z;
I_inff_sq_curv(1,1)=100;

figure(1)
[c h] = contourf(x_index*1000,y_index*1000,I_min_sq_curv,a,'ShowText','on')
ylabel('y(mm)','FontSize',17)
xlabel('x(mm)','FontSize',17)
title('Minimizing 2-norm of vector')
set(gca,'Xtick',[0:10:20])       
set(gca,'Ytick',[0:10:20])
set(gca,'FontSize',20);
clabel(c,h,'FontSize',15);
% figure(2)
% contourf(x_index*1000,y_index*1000,cap_modi_curv,'ShowText','on')


figure(3)
[c h] = contourf(x_index*1000,y_index*1000,I_inff_sq_curv,a,'ShowText','on')
ylabel('y(mm)','FontSize',17)
xlabel('x(mm)','FontSize',17)
title('Minimizing 2-norm of vector')
set(gca,'Xtick',[0:10:20])       
set(gca,'Ytick',[0:10:20])
set(gca,'FontSize',20);
clabel(c,h,'FontSize',15);

figure(4)
contourf(x_index*1000,y_index*1000,I_inff_sq_curv./I_min_sq_curv,'ShowText','on')




%%
