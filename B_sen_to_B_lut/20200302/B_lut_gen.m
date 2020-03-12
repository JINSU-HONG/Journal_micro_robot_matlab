clear;
clc;
%1초에 데이터 100개 받음
%2초씩 1번코일~ 전류제어 10A
%Y Z 값은 부호가 반대로 되어있음

cont_I = 10; %A

P_C0 = load('00_00_00_(X_Y_Z).csv')/cont_I;
P_C1 = load('00_00_20_(X_Y_Z).csv')/cont_I;
P_C2 = load('00_20_00_(X_Y_Z).csv')/cont_I;
P_C3 = load('00_20_20_(X_Y_Z).csv')/cont_I;
P_C4 = load('20_00_00_(X_Y_Z).csv')/cont_I;
P_C5 = load('20_00_20_(X_Y_Z).csv')/cont_I;
P_C6 = load('20_20_00_(X_Y_Z).csv')/cont_I;
P_C7 = load('20_20_20_(X_Y_Z).csv')/cont_I;

B_act_temp = zeros(3,8);

P_temp = P_C0;

for i=1:8
    B_act_temp(:,i) = [mean(P_temp(-125+200*i:-75+200*i,2)); -mean(P_temp(-125+200*i:-75+200*i,3)); -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_act0 = B_act_temp;

P_temp = P_C1;

for i=1:8
    B_act_temp(:,i) = [mean(P_temp(-125+200*i:-75+200*i,2)); -mean(P_temp(-125+200*i:-75+200*i,3)); -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_act1 = B_act_temp;

P_temp = P_C2;

for i=1:8
    B_act_temp(:,i) = [mean(P_temp(-125+200*i:-75+200*i,2)); -mean(P_temp(-125+200*i:-75+200*i,3)); -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_act2 = B_act_temp;

P_temp = P_C3;

for i=1:8
    B_act_temp(:,i) = [mean(P_temp(-125+200*i:-75+200*i,2)); -mean(P_temp(-125+200*i:-75+200*i,3)); -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_act3 = B_act_temp;

P_temp = P_C4;

for i=1:8
    B_act_temp(:,i) = [mean(P_temp(-125+200*i:-75+200*i,2)); -mean(P_temp(-125+200*i:-75+200*i,3)); -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_act4 = B_act_temp;

P_temp = P_C5;

for i=1:8
    B_act_temp(:,i) = [mean(P_temp(-125+200*i:-75+200*i,2)); -mean(P_temp(-125+200*i:-75+200*i,3)); -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_act5 = B_act_temp;

P_temp = P_C6;

for i=1:8
    B_act_temp(:,i) = [mean(P_temp(-125+200*i:-75+200*i,2)); -mean(P_temp(-125+200*i:-75+200*i,3)); -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_act6 = B_act_temp;

P_temp = P_C7;

for i=1:8
    B_act_temp(:,i) = [mean(P_temp(-125+200*i:-75+200*i,2)); -mean(P_temp(-125+200*i:-75+200*i,3)); -mean(P_temp(-125+200*i:-75+200*i,4))];
end

B_act7 = B_act_temp;



B_act = B_act0;
save('B_act_00_00_00.mat','B_act');
B_act = B_act1;
save('B_act_00_00_20.mat','B_act');
B_act = B_act2;
save('B_act_00_20_00.mat','B_act');
B_act = B_act3;
save('B_act_00_20_20.mat','B_act');
B_act = B_act4;
save('B_act_20_00_00.mat','B_act');
B_act = B_act5;
save('B_act_20_00_20.mat','B_act');
B_act = B_act6;
save('B_act_20_20_00.mat','B_act');
B_act = B_act7;
save('B_act_20_20_20.mat','B_act');


