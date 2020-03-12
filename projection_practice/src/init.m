% load('B_act_-10_10_-10.mat')
% B_act_cen = B_act;
load('b_lut/B_act_0_0_0.mat')
B_act_0 = B_act;
B_act_0(1,:) = -B_act_0(1,:);
B_act_0(3,:) = -B_act_0(3,:);
load('b_lut/B_act_0_0_-20.mat')
B_act_1 = B_act;
B_act_1(1,:) = -B_act_1(1,:);
B_act_1(3,:) = -B_act_1(3,:);
load('b_lut/B_act_0_20_0.mat')
B_act_2 = B_act;
B_act_2(1,:) = -B_act_2(1,:);
B_act_2(3,:) = -B_act_2(3,:);
load('b_lut/B_act_0_20_-20.mat')
B_act_3 = B_act;
B_act_3(1,:) = -B_act_3(1,:);
B_act_3(3,:) = -B_act_3(3,:);
load('b_lut/B_act_-20_0_0.mat')
B_act_4 = B_act;
B_act_4(1,:) = -B_act_4(1,:);
B_act_4(3,:) = -B_act_4(3,:);
load('b_lut/B_act_-20_0_-20.mat')
B_act_5 = B_act;
B_act_5(1,:) = -B_act_5(1,:);
B_act_5(3,:) = -B_act_5(3,:);
load('b_lut/B_act_-20_20_0.mat')
B_act_6 = B_act;
B_act_6(1,:) = -B_act_6(1,:);
B_act_6(3,:) = -B_act_6(3,:);
load('b_lut/B_act_-20_20_-20.mat')
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

grid = [0 0.020;0 0.020;0 0.020];