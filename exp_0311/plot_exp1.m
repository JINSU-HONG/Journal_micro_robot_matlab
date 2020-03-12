x = 2:2:18;

B_ideal_mcl = [-14.62553297	-12.20046033	6.102667712
    -14.26354479	-12.45678891	6.432705502
    -13.95527015	-12.65659383	6.71275411
    -9.120657363	16.2758495	7.204882543
    -9.164644285	16.00114976	6.966272506
    -9.232320507	15.32153959	7.148661424
    -9.328427173	14.70042275	7.335287105
    -9.444782054	14.12856502	7.514638528
    -9.576189749	13.59885266	7.679146419];

B_exp_mcl = [-14.78	-12.33	5.96
    -14.5	-12.51	6.24
    -14.26	-12.7	6.58
    -9.35	16.42	7
    -9.17	16.19	6.68
    -9.38	15.5	6.94
    -9.55	14.84	7.1
    -9.59	14.25	7.31
    -9.73	13.64	7.3];

B_ideal_inff = [1.457032806	6.8941959	18.71756176
2.063468059	7.038314477	18.60656413
9.121071952	-0.250441121	17.79728422
10.03113685	-0.320696435	17.29952159
10.85175099	-0.405887285	16.7950813
12.12839878	-0.408788092	15.89763615
13.32423377	-0.433460991	14.90895388
14.42145496	-0.475372219	13.84903094
15.40778862	-0.530361778	12.74043823];


B_exp_inff = [1.29	6.91	18.8
1.88	7.02	18.74
9.02	-0.23	18.05
9.89	-0.27	17.58
10.62	-0.33	17.08
12	-0.29	16.3
13.28	-0.24	15.37
14.35	-0.2	14.38
15.31	-0.2	13.44];


Bmag_ideal_mcl = sqrt(sum(B_ideal_mcl'.^2));
Bmag_exp_mcl = sqrt(sum(B_exp_mcl'.^2));

Bmag_ideal_inff = sqrt(sum(B_ideal_inff'.^2));
Bmag_exp_inff = sqrt(sum(B_exp_inff'.^2));

point_size1 = 12;
point_size2 = 8;

figure(1)
plot(x,Bmag_ideal_mcl,'-o','MarkerSize',point_size1)
hold on 
plot(x,Bmag_exp_mcl,'x','MarkerSize',point_size1)
hold off
xlim([0 20]);
ylim([15 25]);

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
plot(x,Bmag_ideal_inff,'-o','MarkerSize',point_size1)
hold on 
plot(x,Bmag_exp_inff,'x','MarkerSize',point_size1)
hold off
xlim([0 20]);
ylim([15 25]);
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


