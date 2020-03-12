x = 2:2:18;

B_ideal_mcl = [25	0	0
25	0	0
25	0	0
25	0	0
25	0	0
23.20425691	0	0
21.46864377	0	0
20.02666258	0	0
18.86279685	0	0];


B_exp_mcl = [25.02	-0.33	0.46
26.1	-0.19	0.06
26.14	-0.28	0.34
26.04	-0.15	0.22
25.7	0.04	0.01
24.34	0.25	-0.4
22.8	0.38	-0.6
21.2	0.61	-0.9
19.75	0.67	-0.86];


B_ideal_inff = [25	0	0
25	0	0
25	0	0
25	0	0
25	0	0
25	0	0
25	0	0
25	0	0
25	0	0];



B_exp_inff = [25.54	0.28	-0.28
25.76	0.3	-0.25
25.84	0.23	-0.1
25.68	0.08	0.05
25.28	-0.08	0.07
25.88	-0.18	0.13
26.02	-0.5	0.93
25.97	-0.71	1.13
26.79	-0.9	0.94];



Bmag_ideal_mcl = sqrt(sum(B_ideal_mcl'.^2));
Bmag_exp_mcl = sqrt(sum(B_exp_mcl'.^2));

Bmag_ideal_inff = sqrt(sum(B_ideal_inff'.^2));
Bmag_exp_inff = sqrt(sum(B_exp_inff'.^2));

point_size1 = 12;
point_size2 = 8;

figure(1)
plot(x,B_ideal_mcl(:,1),'-o','MarkerSize',point_size1)
hold on 
plot(x,B_exp_mcl(:,1),'x','MarkerSize',point_size1)
plot(x,B_ideal_mcl(:,2),'-o','MarkerSize',point_size1)
plot(x,B_exp_mcl(:,2),'x','MarkerSize',point_size1)
plot(x,B_ideal_mcl(:,3),'-o','MarkerSize',point_size1)
plot(x,B_exp_mcl(:,3),'x','MarkerSize',point_size1)
xlim([0 20]);
ylim([-10 30]);

figure(2)
plot(x,B_ideal_mcl(:,1),'o','MarkerSize',point_size1)
hold on 
plot(x,B_exp_mcl(:,1),'x','MarkerSize',point_size1)
plot(x,B_ideal_mcl(:,2),'o','MarkerSize',point_size1)
plot(x,B_exp_mcl(:,2),'x','MarkerSize',point_size1)
plot(x,B_ideal_mcl(:,3),'o','MarkerSize',point_size1)
plot(x,B_exp_mcl(:,3),'x','MarkerSize',point_size1)
hold off
xlim([0 20]);
ylim([-20 20]);


figure(5)
subplot(3,1,1)
plot(x,B_ideal_mcl(:,1),'o','MarkerSize',point_size2)
hold on 
plot(x,B_exp_mcl(:,1),'x','MarkerSize',point_size2)
hold off
xlim([0 20]);
ylim([-20 20]);
subplot(3,1,2)
plot(x,B_ideal_mcl(:,2),'o','MarkerSize',point_size2)
hold on 
plot(x,B_exp_mcl(:,2),'x','MarkerSize',point_size2)
hold off
xlim([0 20]);
ylim([-20 20]);
subplot(3,1,3)
plot(x,B_ideal_mcl(:,3),'o','MarkerSize',point_size2)
hold on 
plot(x,B_exp_mcl(:,3),'x','MarkerSize',point_size2)
hold off
xlim([0 20]);
ylim([-20 20]);


figure(6)
plot(x,B_ideal_inff(:,1),'o','MarkerSize',point_size1)
hold on 
plot(x,B_exp_inff(:,1),'x','MarkerSize',point_size1)
plot(x,B_ideal_inff(:,2),'o','MarkerSize',point_size1)
plot(x,B_exp_inff(:,2),'x','MarkerSize',point_size1)
plot(x,B_ideal_inff(:,3),'o','MarkerSize',point_size1)
plot(x,B_exp_inff(:,3),'x','MarkerSize',point_size1)
hold off
xlim([0 20]);
ylim([-20 20]);

figure(7)
plot(x,B_ideal_inff(:,1),'-o','MarkerSize',point_size1)
hold on 
plot(x,B_exp_inff(:,1),'x','MarkerSize',point_size1)
plot(x,B_ideal_inff(:,2),'-o','MarkerSize',point_size1)
plot(x,B_exp_inff(:,2),'x','MarkerSize',point_size1)
plot(x,B_ideal_inff(:,3),'-o','MarkerSize',point_size1)
plot(x,B_exp_inff(:,3),'x','MarkerSize',point_size1)
hold off
hold off
xlim([0 20]);
ylim([-10 30]);
figure(5)
subplot(3,1,1)
plot(x,B_ideal_inff(:,1),'o','MarkerSize',point_size2)
hold on 
plot(x,B_exp_inff(:,1),'x','MarkerSize',point_size2)
hold off
xlim([0 20]);
ylim([-20 20]);
subplot(3,1,2)
plot(x,B_ideal_inff(:,2),'o','MarkerSize',point_size2)
hold on 
plot(x,B_exp_inff(:,2),'x','MarkerSize',point_size2)
xlim([0 20]);
ylim([-20 20]);
subplot(3,1,3)
plot(x,B_ideal_inff(:,2),'o','MarkerSize',point_size2)
hold on 
plot(x,B_exp_inff(:,2),'x','MarkerSize',point_size2)
xlim([0 20]);
ylim([-20 20]);


