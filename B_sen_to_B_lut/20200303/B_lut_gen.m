clear;
clc;
%1초에 데이터 100개 받음
%2초씩 1번코일~ 전류제어 10A
%Y Z 값은 부호가 반대로 되어있음

cont_I = 10; %A

P_C01 = load('00_00_00_(X_Y_Z).csv')/cont_I;
P_C02 = load('00_00_10_(X_Y_Z).csv')/cont_I;
P_C03 = load('00_00_20_(X_Y_Z).csv')/cont_I;
P_C04 = load('00_10_00_(X_Y_Z).csv')/cont_I;
P_C05 = load('00_10_10_(X_Y_Z).csv')/cont_I;
P_C06 = load('00_10_20_(X_Y_Z).csv')/cont_I;
P_C07 = load('00_20_00_(X_Y_Z).csv')/cont_I;
P_C08 = load('00_20_10_(X_Y_Z).csv')/cont_I;
P_C09 = load('00_20_20_(X_Y_Z).csv')/cont_I;

P_C10 = load('10_00_00_(X_Y_Z).csv')/cont_I;
P_C11 = load('10_00_10_(X_Y_Z).csv')/cont_I;
P_C12 = load('10_00_20_(X_Y_Z).csv')/cont_I;
P_C13 = load('10_10_00_(X_Y_Z).csv')/cont_I;
P_C14 = load('10_10_10_(X_Y_Z).csv')/cont_I;
P_C15 = load('10_10_20_(X_Y_Z).csv')/cont_I;
P_C16 = load('10_20_00_(X_Y_Z).csv')/cont_I;
P_C17 = load('10_20_10_(X_Y_Z).csv')/cont_I;
P_C18 = load('10_20_20_(X_Y_Z).csv')/cont_I;

P_C19 = load('20_00_00_(X_Y_Z).csv')/cont_I;
P_C20 = load('20_00_10_(X_Y_Z).csv')/cont_I;
P_C21 = load('20_00_20_(X_Y_Z).csv')/cont_I;
P_C22 = load('20_10_00_(X_Y_Z).csv')/cont_I;
P_C23 = load('20_10_10_(X_Y_Z).csv')/cont_I;
P_C24 = load('20_10_20_(X_Y_Z).csv')/cont_I;
P_C25 = load('20_20_00_(X_Y_Z).csv')/cont_I;
P_C26 = load('20_20_10_(X_Y_Z).csv')/cont_I;
P_C27 = load('20_20_20_(X_Y_Z).csv')/cont_I;



B_coil_1 = zeros(27,3);
B_coil_2 = zeros(27,3);
B_coil_3 = zeros(27,3);
B_coil_4 = zeros(27,3);
B_coil_5 = zeros(27,3);
B_coil_6 = zeros(27,3);
B_coil_7 = zeros(27,3);
B_coil_8 = zeros(27,3);



P_temp = P_C01;
coil_num = 1;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C02;
coil_num = 2;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C03;
coil_num = 3;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C04;
coil_num = 4;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C05;
coil_num = 5;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C06;
coil_num = 6;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C07;
coil_num = 7;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C08;
coil_num = 8;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C09;
coil_num = 9;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);







P_temp = P_C10;
coil_num = 10;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C11;
coil_num = 11;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C12;
coil_num = 12;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C13;
coil_num = 13;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C14;
coil_num = 14;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C15;
coil_num = 15;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C16;
coil_num = 16;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C17;
coil_num = 17;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C18;
coil_num = 18;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);




P_temp = P_C19;
coil_num = 19;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C20;
coil_num = 20;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C21;
coil_num = 21;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C22;
coil_num = 22;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C23;
coil_num = 23;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C24;
coil_num = 24;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C25;
coil_num = 25;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C26;
coil_num = 26;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

P_temp = P_C27;
coil_num = 27;

for i=1:8
    B_temp(i,:) = [mean(P_temp(-125+200*i:-75+200*i,2)), -mean(P_temp(-125+200*i:-75+200*i,3)), -mean(P_temp(-125+200*i:-75+200*i,4))];
end

grid = zeros(27,3);

grid(1,:)=[0 0 0];
grid(2,:)=[0 0 10];
grid(3,:)=[0 0 20];
grid(4,:)=[0 10 0];
grid(5,:)=[0 10 10];
grid(6,:)=[0 10 20];
grid(7,:)=[0 20 0];
grid(8,:)=[0 20 10];
grid(9,:)=[0 20 20];

grid(10,:)=[10 0 0];
grid(11,:)=[10 0 10];
grid(12,:)=[10 0 20];
grid(13,:)=[10 10 0];
grid(14,:)=[10 10 10];
grid(15,:)=[10 10 20];
grid(16,:)=[10 20 0];
grid(17,:)=[10 20 10];
grid(18,:)=[10 20 20];

grid(19,:)=[20 0 0];
grid(20,:)=[20 0 10];
grid(21,:)=[20 0 20];
grid(22,:)=[20 10 0];
grid(23,:)=[20 10 10];
grid(24,:)=[20 10 20];
grid(25,:)=[20 20 0];
grid(26,:)=[20 20 10];
grid(27,:)=[20 20 20];




B_coil_1(coil_num,:) = B_temp(1,:);
B_coil_2(coil_num,:) = B_temp(2,:);
B_coil_3(coil_num,:) = B_temp(3,:);
B_coil_4(coil_num,:) = B_temp(4,:);
B_coil_5(coil_num,:) = B_temp(5,:);
B_coil_6(coil_num,:) = B_temp(6,:);
B_coil_7(coil_num,:) = B_temp(7,:);
B_coil_8(coil_num,:) = B_temp(8,:);

temp = [grid B_coil_1];
writematrix(temp,'coil1_B.csv','Delimiter','comma')
type 'coil1_B.csv'

temp = [grid B_coil_2];
writematrix(temp,'coil2_B.csv','Delimiter','comma')
type 'coil2_B.csv'

temp = [grid B_coil_3];
writematrix(temp,'coil3_B.csv','Delimiter','comma')
type 'coil3_B.csv'

temp = [grid B_coil_4];
writematrix(temp,'coil4_B.csv','Delimiter','comma')
type 'coil4_B.csv'

temp = [grid B_coil_5];
writematrix(temp,'coil5_B.csv','Delimiter','comma')
type 'coil5_B.csv'

temp = [grid B_coil_6];
writematrix(temp,'coil6_B.csv','Delimiter','comma')
type 'coil6_B.csv'

temp = [grid B_coil_7];
writematrix(temp,'coil7_B.csv','Delimiter','comma')
type 'coil7_B.csv'

temp = [grid B_coil_8];
writematrix(temp,'coil8_B.csv','Delimiter','comma')
type 'coil8_B.csv'


