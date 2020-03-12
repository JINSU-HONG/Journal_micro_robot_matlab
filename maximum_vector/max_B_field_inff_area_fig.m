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
%Pz = 0.010;
%Pz = 0.0001;
% Pz = 0.0199;
Pz =  0.0199;

x_length = length(x_index);
y_length = length(y_index);
cap_mcl_curv = zeros(x_length,x_length);
cap_modi_curv = zeros(x_length,x_length);
cap_inff_curve = zeros(x_length,x_length);
current_max_num_curve = zeros(x_length,x_length);

grid = [0 0.020;0 0.020;0 0.020];







%%
for i=1:x_length
    for j=1:y_length
        position = [x_index(j) y_index(i) Pz]';
        
        upt_act_m;
        
        cap_mcl_curv(i,j) = max_B_field_calc(act_m,lim_I);
        cap_inff_curve(i,j) = max_B_field_inff_calc(act_m,lim_I);
    end
end

%%
min_z = 8;
max_z = 16;

a=[min_z:0.5:max_z];
cap_mcl_curv(x_length,x_length)=min_z;
cap_mcl_curv(1,1)=100;

cap_inff_curve(x_length,x_length)=min_z;
cap_inff_curve(1,1)=100;

figure(1)
[c h] = contourf(x_index*1000,y_index*1000,cap_mcl_curv,a,'ShowText','on')
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
[c h] = contourf(x_index*1000,y_index*1000,cap_inff_curve,a,'ShowText','on')
ylabel('y(mm)','FontSize',17)
xlabel('x(mm)','FontSize',17)
title('Minimizing infinity-norm of vector')
set(gca,'Xtick',[0:10:20])       
set(gca,'Ytick',[0:10:20])
set(gca,'FontSize',20);
clabel(c,h,'FontSize',15);














