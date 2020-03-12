clc;
clear;

init

lim_I = 10;


%%

x_lim_L = 0;
x_lim_H = 0.02;
y_lim_L = 0;
y_lim_H = 0.02;




grid = [0 0.020;0 0.020;0 0.020];

%%
v = [30,0,0]';

position = [10 10 10]*0.001';

upt_act_m;

I_mcl = act_m'*(act_m*act_m')^-1*v

I_inff = cadzow(act_m,v)

[max_mag_mcl max_v_mcl] = max_B_field_calc(act_m,lim_I);
[max_mag_inff max_v_inff] = max_B_field_inff_calc(act_m,lim_I);


%         cap_curv(i,j) = lim_I/max(abs(I_mcl));
%         capability_inff_curve(i,j) = lim_I/max(abs(I_inff));


%%
















