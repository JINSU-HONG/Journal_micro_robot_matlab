clc;
clear;

init

lim_I = 10;


%%

x_lim_L = 0;
x_lim_H = 0.02;
y_lim_L = 0;
y_lim_H = 0.02;

Pz = 0.010;
%Pz = 0.0001;
% Pz = 0.0199;
% Pz =  0.0199;


grid = [0 0.020;0 0.020;0 0.020];


B_des = [25 0 0]';

cur_P = zeros(3,9);
I_mcl = zeros(8,9);
I_inff = zeros(8,9);

act_B_mcl = zeros(1,9);
act_B_mcl_xyz = zeros(3,9);
reduced_mcl = zeros(1,9);

act_B_inff = zeros(1,9);
act_B_inff_xyz = zeros(3,9);
reduced_inff = zeros(1,9);

x = 0.002:0.002:0.018;

for i=1:9
    cur_P(:,i) = [x(i) 0.01 0.01]';
end



%%

for i=1:9
    position = cur_P(:,i)';
    
    upt_act_m;
    
    
    temp_I_mcl = act_m'*(act_m*act_m')^-1*B_des;
    
    temp_I_inff = cadzow(act_m,B_des);
    
    
    if(lim_I>norm(temp_I_mcl,inf))
        I_mcl(:,i) = temp_I_mcl;
        act_B_mcl_xyz(:,i) = B_des;
    else
        I_mcl(:,i) = temp_I_mcl/norm(temp_I_mcl,inf)*lim_I;
        act_B_mcl_xyz(:,i) = B_des/norm(temp_I_mcl,inf)*lim_I;
    end
    
    if(lim_I>norm(temp_I_inff,inf))
        I_inff(:,i) = temp_I_inff;
        act_B_inff_xyz(:,i) = B_des;
    else
        I_inff(:,i) = temp_I_inff/norm(temp_I_inff,inf)*lim_I;
        act_B_inff_xyz(:,i) = B_des/norm(temp_I_inff,inf)*lim_I;
    end
end

figure(1)
plot(x,act_B_mcl_xyz(1,:) ,'x')
hold on
plot(x,act_B_mcl_xyz(2,:) ,'o')
plot(x,act_B_mcl_xyz(3,:) ,'*')
xlim([0,0.02])
ylim([-25 25])
hold off

figure(2)
plot(x,act_B_inff_xyz(1,:) ,'x')
hold on
plot(x,act_B_inff_xyz(2,:) ,'o')
plot(x,act_B_inff_xyz(3,:) ,'*')
xlim([0,0.02])
ylim([-25 25])
hold off












