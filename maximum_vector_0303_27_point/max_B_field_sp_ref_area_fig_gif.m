clc;
clear;

init

lim_I = 10;


%%

x_lim_L = 0;
x_lim_H = 0.02;
y_lim_L = 0;
y_lim_H = 0.02;

x_index = x_lim_L:0.0001:x_lim_H;
y_index = y_lim_L:0.0001:y_lim_H;
Pz = 0.010;
% Pz = 0.0001;
% Pz = 0.01999;

x_length = length(x_index);
y_length = length(y_index);
cap_curv = zeros(x_length,x_length);
cap_modi_curv = zeros(x_length,x_length);
capability_inff_curve = zeros(x_length,x_length);
current_max_num_curve = zeros(x_length,x_length);


grid = [0 0.020;0 0.020;0 0.020];

%%
v = [1,0,0]';


step = 1;

for k=16:step:25

%%
for i=1:x_length
    for j=1:y_length
        position = [x_index(j) y_index(i) Pz]';
        
        upt_act_m;
        
        I_mcl = act_m'*(act_m*act_m')^-1*v;
        
        I_inff = cadzow(act_m,v);
        
        [I_min_des,I_min,I_ans,ratio,inj_ratio,mode, ref_I_max_num,pro_norm] = null_vector_calc(act_m,v*k,lim_I);
        
        
        cap_curv(i,j) = ratio*k;
        cap_modi_curv(i,j) = inj_ratio*k;
        
        capability_inff_curve(i,j) = lim_I/max(abs(I_inff));
        
        if cap_curv(i,j)>=k
            cap_curv(i,j) = k;
        end
        
        if capability_inff_curve(i,j)>=k
            capability_inff_curve(i,j) = k;
        end
        
    end
end

%%



% figure(1)
% contourf(x_index*1000,y_index*1000,cap_curv,'ShowText','on')
% 
% % figure(2)
% % contourf(x_index*1000,y_index*1000,cap_modi_curv,'ShowText','on')
% 
% 
% figure(3)
% contourf(x_index*1000,y_index*1000,capability_inff_curve,'ShowText','on')

a=[16:step:25];
cap_curv(x_length,x_length)=15;
cap_curv(x_length-1,x_length)=16.5;
cap_curv(x_length,x_length-1)=16.5;
cap_curv(1,1)=100;
cap_curv(2,1)=100;
cap_curv(1,2)=100;

cap_modi_curv(x_length,x_length)=15;
cap_modi_curv(x_length-1,x_length)=16.5;
cap_modi_curv(x_length,x_length-1)=16.5;
cap_modi_curv(1,1)=100;
cap_modi_curv(2,1)=100;
cap_modi_curv(1,2)=100;

capability_inff_curve(x_length,x_length)=15;
capability_inff_curve(x_length-1,x_length)=16.5;
capability_inff_curve(x_length,x_length-1)=16.5;
capability_inff_curve(1,1)=100;
capability_inff_curve(2,1)=100;
capability_inff_curve(1,2)=100;

figure(5)
contourf(x_index*1000,y_index*1000,cap_curv,a,'ShowText','on')
ylabel('y(mm)')
xlabel('x(mm)')
title('Minimizing 2-norm of vector')
set(gca,'Xtick',[0:10:20])       
set(gca,'Ytick',[0:10:20])
set(gca,'FontSize',20);

figure(6)
contourf(x_index*1000,y_index*1000,cap_modi_curv,a,'ShowText','on')
ylabel('y(mm)','FontSize',17)
xlabel('x(mm)','FontSize',17)
title('Null space vector injection','FontSize',20)

figure(7)
contourf(x_index*1000,y_index*1000,capability_inff_curve,a,'ShowText','on')
ylabel('y(mm)','FontSize',17)
xlabel('x(mm)','FontSize',17)
title('Minimizing infinity-norm of vector','FontSize',20)

figure(1)
contourf(x_index*1000,y_index*1000,cap_curv,'ShowText','on')



end













