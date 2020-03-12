coil_1_data_load = xlsread('coil1_B.csv');
coil_2_data_load = xlsread('coil2_B.csv');
coil_3_data_load = xlsread('coil3_B.csv');
coil_4_data_load = xlsread('coil4_B.csv');
coil_5_data_load = xlsread('coil5_B.csv');
coil_6_data_load = xlsread('coil6_B.csv');
coil_7_data_load = xlsread('coil7_B.csv');
coil_8_data_load = xlsread('coil8_B.csv');

B_coil_1_data = coil_1_data_load(:,4:6);
B_coil_2_data = coil_2_data_load(:,4:6);
B_coil_3_data = coil_3_data_load(:,4:6);
B_coil_4_data = coil_4_data_load(:,4:6);
B_coil_5_data = coil_5_data_load(:,4:6);
B_coil_6_data = coil_6_data_load(:,4:6);
B_coil_7_data = coil_7_data_load(:,4:6);
B_coil_8_data = coil_8_data_load(:,4:6);




%% CSV 파일정보 설정
grid_min = 0;%m scale
grid_max = 0.02;% scale
gird_size = 0.01;%m scale
