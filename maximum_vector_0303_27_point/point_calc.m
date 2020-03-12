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
v = [40,0,0]';


%%
position = [10 10 10]/1000';

upt_act_m;

I_mcl = act_m'*(act_m*act_m')^-1*v;

I_inff = cadzow(act_m,v);


cap_curv = lim_I/max(abs(I_mcl));
capability_inff_curve = lim_I/max(abs(I_inff));
