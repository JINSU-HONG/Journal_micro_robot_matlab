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

x_length = length(x_index);
y_length = length(y_index);
cap_curv = zeros(x_length,x_length);
cap_modi_curv = zeros(x_length,x_length);
capability_inff_curve = zeros(x_length,x_length);
current_max_num_curve = zeros(x_length,x_length);

grid = [0 0.020;0 0.020;0 0.020];
%%
for i=1:x_length
    for j=1:y_length
        position = [x_index(j) y_index(i) Pz]';
        
        upt_act_m;
        
        cap_curv(i,j) = max_B_field_calc(act_m,lim_I);
    end
end

%%


figure(1)
contourf(x_index*1000,y_index*1000,cap_curv,'ShowText','on')

% figure(2)
% contourf(x_index*1000,y_index*1000,cap_modi_curv,conf,'ShowText','on')
% 
% figure(3)
% contourf(x_index*1000,y_index*1000,capability_inff_curve,conf,'ShowText','on')















