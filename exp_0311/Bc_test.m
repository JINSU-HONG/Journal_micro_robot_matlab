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


B_des = 20;

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
    cur_P(:,i) = [x(i) 0.005 0.01]';
end



%%

for i=1:9
    position = cur_P(:,i)';
    
    upt_act_m;
    
    [cap_mcl_curv max_v_mcl] = max_B_field_calc(act_m,lim_I);
    [cap_inff_curve max_v_inff] = max_B_field_inff_calc(act_m,lim_I);
    
    
    temp_I_mcl = act_m'*(act_m*act_m')^-1*max_v_mcl*B_des;
    
    temp_I_inff = cadzow(act_m,max_v_inff)*B_des;
    
    
    if(cap_mcl_curv>B_des)
        I_mcl(:,i) = temp_I_mcl;
        act_B_mcl(:,i) = B_des;
        act_B_mcl_xyz(:,i) = max_v_mcl*B_des;
    else
        I_mcl(:,i) = temp_I_mcl/B_des*cap_mcl_curv;
        act_B_mcl(:,i) = cap_mcl_curv;
        act_B_mcl_xyz(:,i) = max_v_mcl*cap_mcl_curv;
    end
    
    if(cap_inff_curve>B_des)
        I_inff(:,i) = temp_I_inff;
        act_B_inff(:,i) = B_des;
        act_B_inff_xyz(:,i) = max_v_inff*B_des;
    else
        I_inff(:,i) = temp_I_inff/B_des*cap_inff_curve;
        act_B_inff(:,i) = cap_inff_curve;
        act_B_inff_xyz(:,i) = max_v_inff*cap_inff_curve;
    end
end

figure(1)
plot(x,act_B_mcl_xyz(1,:) ,'x')
hold on
plot(x,act_B_mcl_xyz(2,:) ,'o')
plot(x,act_B_mcl_xyz(3,:) ,'*')
xlim([0,0.02])
ylim([-20 20])
hold off

figure(2)
plot(x,act_B_inff_xyz(1,:) ,'x')
hold on
plot(x,act_B_inff_xyz(2,:) ,'o')
plot(x,act_B_inff_xyz(3,:) ,'*')
xlim([0,0.02])
ylim([-20 20])
hold off












