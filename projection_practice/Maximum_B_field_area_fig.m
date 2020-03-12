 clc;
 clear;

init

ref_B = [0;00;0];%mT
lim_I = 10;



 %%   

x_lim_L = 0;
x_lim_H = 0.02;
y_lim_L = 0;
y_lim_H = 0.02;

x_index = x_lim_L:0.0001:x_lim_H;
y_index = y_lim_L:0.0001:y_lim_H;
Pz = 0.010;

x_length = length(x_index);
y_length = length(y_index);
capability_curve = zeros(x_length,x_length);
capability_modified_curve = zeros(x_length,x_length);
current_max_num_curve = zeros(x_length,x_length);

grid = [0 0.020;0 0.020;0 0.020];
%%
for i=1:x_length
    for j=1:y_length
        position = [x_index(j) y_index(i) Pz]';
        
        upt_act_m;
        [I_min_des, I_min, I_ans, ratio, inj_ratio,mode, ref_I_max_num, pro_norm] = null_vector_calc(act_m, ref_B, lim_I);
        
        capability_curve(i,j) = ratio;
        capability_modified_curve(i,j) = inj_ratio;
        current_max_num_curve(i,j) = ref_I_max_num;
    end
end

%%
figure(1)
contourf(x_index*1000,y_index*1000,capability_curve,'ShowText','on')

figure(2)
contourf(x_index*1000,y_index*1000,capability_modified_curve,'ShowText','on')

figure(3)
imagesc(x_index,y_index,current_max_num_curve)
set(gca,'YDir','normal')
caxis([1,8])
colorbar;
cmap = colormap;
colormap(figure(3),flipud(cmap))
xlim([x_lim_L x_lim_H])
ylim([y_lim_L y_lim_H])
title('control mode','FontSize',15)













