 clc;
 clear;

init


position = [0.0059 0.0004 0.010];
upt_act_m


ref_B = [0;1;0];%mT
lim_I = 10;
time1 = tic;

[I_min_des, I_min, I_ans, ratio, inj_ratio,mode, ref_I_max_num, pro_norm] = null_vector_calc(act_m, ref_B, lim_I);
time2 = tic;
[I_inff,ratio_inff] = min_infinity_norm(act_m,ref_B,lim_I);
time3 = tic;
I_min_des
I_inff


time2-time1
time3-time2

act_m*I_ans
act_m*I_inff
