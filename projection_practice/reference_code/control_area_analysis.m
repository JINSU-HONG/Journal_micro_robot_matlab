clear
close all
clc
%%
% load('B_act_-10_10_-10.mat')
% B_act_cen = B_act;
load('B_act_0_0_0.mat')
B_act_0 = B_act;
B_act_0(1,:) = -B_act_0(1,:);
B_act_0(3,:) = -B_act_0(3,:);
load('B_act_0_0_-20.mat')
B_act_1 = B_act;
B_act_1(1,:) = -B_act_1(1,:);
B_act_1(3,:) = -B_act_1(3,:);
load('B_act_0_20_0.mat')
B_act_2 = B_act;
B_act_2(1,:) = -B_act_2(1,:);
B_act_2(3,:) = -B_act_2(3,:);
load('B_act_0_20_-20.mat')
B_act_3 = B_act;
B_act_3(1,:) = -B_act_3(1,:);
B_act_3(3,:) = -B_act_3(3,:);
load('B_act_-20_0_0.mat')
B_act_4 = B_act;
B_act_4(1,:) = -B_act_4(1,:);
B_act_4(3,:) = -B_act_4(3,:);
load('B_act_-20_0_-20.mat')
B_act_5 = B_act;
B_act_5(1,:) = -B_act_5(1,:);
B_act_5(3,:) = -B_act_5(3,:);
load('B_act_-20_20_0.mat')
B_act_6 = B_act;
B_act_6(1,:) = -B_act_6(1,:);
B_act_6(3,:) = -B_act_6(3,:);
load('B_act_-20_20_-20.mat')
B_act_7 = B_act;
B_act_7(1,:) = -B_act_7(1,:);
B_act_7(3,:) = -B_act_7(3,:);

Bmean = (B_act_0+B_act_1+B_act_2+B_act_3+B_act_4+B_act_5+B_act_6+B_act_7)/8;


B1 = [B_act_0(:,1) B_act_1(:,1) B_act_2(:,1) B_act_3(:,1) B_act_4(:,1) B_act_5(:,1) B_act_6(:,1) B_act_7(:,1)];
B2 = [B_act_0(:,2) B_act_1(:,2) B_act_2(:,2) B_act_3(:,2) B_act_4(:,2) B_act_5(:,2) B_act_6(:,2) B_act_7(:,2)];
B3 = [B_act_0(:,3) B_act_1(:,3) B_act_2(:,3) B_act_3(:,3) B_act_4(:,3) B_act_5(:,3) B_act_6(:,3) B_act_7(:,3)];
B4 = [B_act_0(:,4) B_act_1(:,4) B_act_2(:,4) B_act_3(:,4) B_act_4(:,4) B_act_5(:,4) B_act_6(:,4) B_act_7(:,4)];
B5 = [B_act_0(:,5) B_act_1(:,5) B_act_2(:,5) B_act_3(:,5) B_act_4(:,5) B_act_5(:,5) B_act_6(:,5) B_act_7(:,5)];
B6 = [B_act_0(:,6) B_act_1(:,6) B_act_2(:,6) B_act_3(:,6) B_act_4(:,6) B_act_5(:,6) B_act_6(:,6) B_act_7(:,6)];
B7 = [B_act_0(:,7) B_act_1(:,7) B_act_2(:,7) B_act_3(:,7) B_act_4(:,7) B_act_5(:,7) B_act_6(:,7) B_act_7(:,7)];
B8 = [B_act_0(:,8) B_act_1(:,8) B_act_2(:,8) B_act_3(:,8) B_act_4(:,8) B_act_5(:,8) B_act_6(:,8) B_act_7(:,8)];

m = [0 0 1]*4*10^-4;%Am^2


ref_B = [0 5 0];%mT
ref_F = [0 0 8.9*10^-3]*1;%mN 

BF_ref = [ref_B ref_F]';

position = [0.010 0.010 0.010];
grid = [0 0.020;0 0.020;0 0.020];
[Btemp1 dBtemp1] = trilinear_3d(position, grid,B1);
[Btemp2 dBtemp2] = trilinear_3d(position, grid,B2);
[Btemp3 dBtemp3] = trilinear_3d(position, grid,B3);
[Btemp4 dBtemp4] = trilinear_3d(position, grid,B4);
[Btemp5 dBtemp5] = trilinear_3d(position, grid,B5);
[Btemp6 dBtemp6] = trilinear_3d(position, grid,B6);
[Btemp7 dBtemp7] = trilinear_3d(position, grid,B7);
[Btemp8 dBtemp8] = trilinear_3d(position, grid,B8);

Binter = [Btemp1 Btemp2 Btemp3 Btemp4 Btemp5 Btemp6 Btemp7 Btemp8];
Finter = [(m*dBtemp1)' (m*dBtemp2)' (m*dBtemp3)' (m*dBtemp4)' (m*dBtemp5)' (m*dBtemp6)' (m*dBtemp7)' (m*dBtemp8)'];
act_m = [Binter;Finter];

I_ref = act_m'*(act_m*act_m')^-1*BF_ref;
I_lim = 10;

ref_Iabs_max = max(abs(I_ref));
ref_I_max_num = find(ref_Iabs_max==abs(I_ref));

null_v = null(act_m);

temp_null_v = null_v;
temp_null_v(ref_I_max_num) = 0;

% a1 = (-I_ref - ref_Iabs_max)./(temp_null_v - 1);%qL
% a2 = (-I_ref + ref_Iabs_max)./(temp_null_v + 1);%qH
 a1 = (-I_ref - I_lim)./(temp_null_v);%qL
 a2 = (-I_ref + I_lim)./(temp_null_v);%qH


a1(ref_I_max_num) = 10000;
a2(ref_I_max_num) = 10000;

% for i = 1:8
%     if a1(i)<0
%         a1(i) = 10000;
%     end
%     if a2(i)<0
%         a2(i) = 10000;
%     end
% end

figure(14)
 x=I_ref + a2(2)*null_v;
 x_plot = [1,2];
y_plot = [I_ref(1,1) x(1,1); I_ref(2,1) x(2,1)];
bar(x_plot,y_plot)
ylim([-20 20])

figure(15)
x=I_ref + a1(2)*null_v;
x_plot = [1,2];
y_plot = [I_ref(1,1) x(1,1); I_ref(2,1) x(2,1)];
bar(x_plot,y_plot)
ylim([-20 20])

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
lim_flag = zeros(x_length,x_length);
lim_flag2 = zeros(x_length,x_length);
lim_flag1 = zeros(x_length,x_length);
I_max = zeros(x_length,x_length);
I_max2 = zeros(x_length,x_length);
capability_curve = zeros(x_length,x_length);
capability_modified_curve = zeros(x_length,x_length);
current_max_num_curve = zeros(x_length,x_length);



grid = [0 0.020;0 0.020;0 0.020];
%%
for i=1:x_length
    for j=1:y_length;
        now_P = [x_index(j) y_index(i) Pz]';
        curM = m';
        
        [Btemp1 dBtemp1] = trilinear_3d(now_P, grid,B1);
        [Btemp2 dBtemp2] = trilinear_3d(now_P, grid,B2);
        [Btemp3 dBtemp3] = trilinear_3d(now_P, grid,B3);
        [Btemp4 dBtemp4] = trilinear_3d(now_P, grid,B4);
        [Btemp5 dBtemp5] = trilinear_3d(now_P, grid,B5);
        [Btemp6 dBtemp6] = trilinear_3d(now_P, grid,B6);
        [Btemp7 dBtemp7] = trilinear_3d(now_P, grid,B7);
        [Btemp8 dBtemp8] = trilinear_3d(now_P, grid,B8);
        
        Binter = [Btemp1 Btemp2 Btemp3 Btemp4 Btemp5 Btemp6 Btemp7 Btemp8];
        Finter = [(m*dBtemp1)' (m*dBtemp2)' (m*dBtemp3)' (m*dBtemp4)' (m*dBtemp5)' (m*dBtemp6)' (m*dBtemp7)' (m*dBtemp8)'];
        act_m_temp = [Binter;Finter];
        
        ref_I = calc_I(ref_B',ref_F',act_m_temp );
        I_max(i,j) = max(abs(ref_I));
        lim_flag(i,j) = (I_max(i,j)>I_lim);
%         [I_modified,null_v, comp_flag, capability,capability_modified,current_max_num] = null_vect_injection(act_m_temp, ref_I, I_lim );
        [I_modified,null_v, comp_flag, capability,capability_modified,current_max_num] = null_vect_injection_modified(act_m_temp, ref_I, I_lim );
        lim_flag1(i,j) = comp_flag;
        capability_curve(i,j) = capability;
        capability_modified_curve(i,j) = capability_modified;
        current_max_num_curve(i,j) = current_max_num;
        
    end
end

figure(1)
% surf(x_index,y_index,lim_flag,'LineStyle','none')
% view(2)
imagesc(x_index,y_index,capability_modified_curve-capability_curve)
set(gca,'YDir','normal')
caxis([0,20])
colorbar;
xlim([x_lim_L x_lim_H])
ylim([y_lim_L y_lim_H])
title('limit flag','FontSize',15)

figure(2)
% surf(x_index,y_index,lim_flag,'LineStyle','none')
% view(2)
imagesc(x_index,y_index,lim_flag)
set(gca,'YDir','normal')
caxis([0,1])
colorbar;
cmap = colormap;
colormap(figure(2),flipud(cmap))
xlim([x_lim_L x_lim_H])
ylim([y_lim_L y_lim_H])
title('limit flag','FontSize',15)

figure(3)
% surf(x_index,y_index,lim_flag1,'LineStyle','none')
% view(2)
imagesc(x_index,y_index,lim_flag1)
set(gca,'YDir','normal')
caxis([1,2])
colorbar;
cmap = colormap;
colormap(figure(3),flipud(cmap))
xlim([x_lim_L x_lim_H])
ylim([y_lim_L y_lim_H])
title('control mode','FontSize',15)

figure(4)
% surf(x_index,y_index,100-capability_curve,'LineStyle','none')
% view(2)
imagesc(x_index,y_index,100-capability_curve)
set(gca,'YDir','normal')
xlim([x_lim_L x_lim_H])
ylim([y_lim_L y_lim_H])
caxis([0,40])
colorbar;
cmap = colormap;
colormap(figure(4),flipud(cmap))
colorbar('Ticks',[0,10,20,30,40],...
         'TickLabels',{'0','10','20','30','40'},'direction','reverse')
title('conventional capability with proportional limit','FontSize',15)

figure(5)
% surf(x_index,y_index,100-capability_modified_curve,'LineStyle','none')
% view(2)
imagesc(x_index,y_index,100-capability_modified_curve)
set(gca,'YDir','normal')
xlim([x_lim_L x_lim_H])
ylim([y_lim_L y_lim_H])
caxis([0,40])
colorbar;
cmap = colormap;
colormap(figure(5),flipud(cmap))
colorbar('Ticks',[0,10,20,30,40],...
         'TickLabels',{'0','10','20','30','40'},'direction','reverse')
title('proposed capability with proportional limit','FontSize',15)

load('exp_B_10_10_Mz_5mT_By_5mT_Fz_1g.mat')

figure(6)
tic = 1/100;
t = 1:length(B_exp(:,1));
t=t*tic;

plot(t,B_exp(:,2:4))

hold on
xlim([6,16])
plot([0 20],[5,5])
hold off


load('exp_Iref_sen_10_10_Mz_5mT_By_5mT_Fz_1g.mat')

Iref_exp1 = Iref_sen_exp(:,1);
Iref_exp2 = Iref_sen_exp(:,3);
Iref_exp3 = Iref_sen_exp(:,5);
Iref_exp4 = Iref_sen_exp(:,7);
Iref_exp5 = Iref_sen_exp(:,9);
Iref_exp6 = Iref_sen_exp(:,11);
Iref_exp7 = Iref_sen_exp(:,13);
Iref_exp8 = Iref_sen_exp(:,15);

Iref_sen1 = Iref_sen_exp(:,2);
Iref_sen2 = Iref_sen_exp(:,4);
Iref_sen3 = Iref_sen_exp(:,6);
Iref_sen4 = Iref_sen_exp(:,8);
Iref_sen5 = Iref_sen_exp(:,10);
Iref_sen6 = Iref_sen_exp(:,12);
Iref_sen7 = Iref_sen_exp(:,14);
Iref_sen8 = Iref_sen_exp(:,16);


figure(7)
tic = 1/100;
t = 1:length(Iref_exp1);
t=t*tic;

plot(t,Iref_exp1)
hold on
plot(t,Iref_exp2)
plot(t,Iref_exp3)
plot(t,Iref_exp4)
plot(t,Iref_exp5)
plot(t,Iref_exp6)
plot(t,Iref_exp7)
plot(t,Iref_exp8)
xlim([0,10])
hold off

figure(8)
plot(t,Iref_sen1)
hold on
plot(t,Iref_sen2)
plot(t,Iref_sen3)
plot(t,Iref_sen4)
plot(t,Iref_sen5)
plot(t,Iref_sen6)
plot(t,Iref_sen7)
plot(t,Iref_sen8)
xlim([0,10])
hold off

f = figure(1);
movegui(f,[100,550]);
f = figure(2);
movegui(f,[700,550]);
f = figure(3);
movegui(f,[1300,550]);
f = figure(4);
movegui(f,[100,0]);
f = figure(5);
movegui(f,[700,0]);
f = figure(6);
movegui(f,[1300,0]);
f = figure(7);
movegui(f,[2000,550]);
f = figure(10);
movegui(f,[2000,50]);
f = figure(11);
movegui(f,[2600,550]);



