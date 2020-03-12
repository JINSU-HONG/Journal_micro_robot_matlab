clc;
clear;

init

lim_I = 10;


%%

x_lim_L = 0;
x_lim_H = 0.02;
y_lim_L = 0;
y_lim_H = 0.02;
z_lim_L = 0;
z_lim_H = 0.02;

x_step = 0.0005;
y_step = 0.0005;

x_index = x_lim_L:x_step:x_lim_H;
y_index = y_lim_L:y_step:y_lim_H;
z_index = z_lim_L:0.0005:z_lim_H;


x_length = length(x_index);
y_length = length(y_index);
z_length = length(z_index);

z_surf_mcl1 = zeros(x_length,x_length);
z_surf_inff1 = zeros(x_length,x_length);

z_surf_mcl2 = zeros(x_length,x_length);
z_surf_inff2 = zeros(x_length,x_length);

z_surf_mcl3 = zeros(x_length,x_length);
z_surf_inff3 = zeros(x_length,x_length);

grid = [0 0.020;0 0.020;0 0.020];

B_lim1 = 20;
B_lim2 = 17.5;
B_lim3 = 15;









%%
for i=1:x_length
    i
    for j=1:y_length
        flag_mcl= 0;
        flag_inff = 0;
        z_surf_mcl1(i,j) = NaN;
        z_surf_inff1(i,j) =NaN;
        z_surf_mcl2(i,j) = NaN;
        z_surf_inff2(i,j) =NaN;
        z_surf_mcl3(i,j) =NaN;
        z_surf_inff3(i,j) = NaN;
        
        for k=1:z_length
            position = [x_index(j) y_index(i) z_index(k)]';
            
            upt_act_m;
            
            
            if(flag_mcl==0)
                temp_B_mcl = max_B_field_calc(act_m,lim_I);
                if(temp_B_mcl>B_lim1)
                    z_surf_mcl1(i,j) = z_index(k);
                end
                if(temp_B_mcl>B_lim2)
                    z_surf_mcl2(i,j) = z_index(k);
                end
                if(temp_B_mcl>B_lim3)
                    z_surf_mcl3(i,j) = z_index(k);
                else
                    flag_mcl= 1;
                end
            end
            
            if(flag_inff == 0)
                temp_B_inf = max_B_field_inff_calc(act_m,lim_I);
                if(temp_B_inf>B_lim1)
                    z_surf_inff1(i,j) = z_index(k);
                end
                if(temp_B_inf>B_lim2)
                    z_surf_inff2(i,j) = z_index(k);
                end
                if(temp_B_inf>B_lim3)
                    z_surf_inff3(i,j) = z_index(k);
                else
                    flag_inff = 1;
                end
            end
            
        end
    end
end

%%

a = [0:2:20];

% z_surf_mcl1(x_length,x_length)=0;
% z_surf_mcl1(x_length-1,x_length)=0;
% z_surf_mcl1(x_length,x_length-1)=0;
% z_surf_mcl1(1,1)=0.02;
% z_surf_mcl1(2,1)=0.02;
% z_surf_mcl1(1,2)=0.02;
% 
% 
% z_surf_mcl2(x_length,x_length)=0;
% z_surf_mcl2(x_length-1,x_length)=0;
% z_surf_mcl2(x_length,x_length-1)=0;
% z_surf_mcl2(1,1)=0.02;
% z_surf_mcl2(2,1)=0.02;
% z_surf_mcl2(1,2)=0.02;
% 
% z_surf_mcl3(x_length,x_length)=0;
% z_surf_mcl3(x_length-1,x_length)=0;
% z_surf_mcl3(x_length,x_length-1)=0;
% z_surf_mcl3(1,1)=0.02;
% z_surf_mcl3(2,1)=0.02;
% z_surf_mcl3(1,2)=0.02;
% 
% z_surf_inff1(x_length,x_length)=0;
% z_surf_inff1(x_length-1,x_length)=0;
% z_surf_inff1(x_length,x_length-1)=0;
% z_surf_inff1(1,1)=0.02;
% z_surf_inff1(2,1)=0.02;
% z_surf_inff1(1,2)=0.02;
% 
% z_surf_inff2(x_length,x_length)=0;
% z_surf_inff2(x_length-1,x_length)=0;
% z_surf_inff2(x_length,x_length-1)=0;
% z_surf_inff2(1,1)=0.02;
% z_surf_inff2(2,1)=0.02;
% z_surf_inff2(1,2)=0.02;
% 
% z_surf_inff3(x_length,x_length)=0;
% z_surf_inff3(x_length-1,x_length)=0;
% z_surf_inff3(x_length,x_length-1)=0;
% z_surf_inff3(1,1)=0.02;
% z_surf_inff3(2,1)=0.02;
% z_surf_inff3(1,2)=0.02;

figure(1)
[c h] = contourf(x_index*1000,y_index*1000,z_surf_mcl1*1000,a,'ShowText','on')
ylabel('y(mm)','FontSize',25)
xlabel('x(mm)','FontSize',25)
set(gca,'Xtick',[0:10:20])       
set(gca,'Ytick',[0:10:20])
set(gca,'FontSize',20);
set(gca,'FontName','Times New Roman');
clabel(c,h,'FontSize',20);


figure(2)
[c h] = contourf(x_index*1000,y_index*1000,z_surf_mcl2*1000,a,'ShowText','on')
ylabel('y(mm)','FontSize',25)
xlabel('x(mm)','FontSize',25)
set(gca,'Xtick',[0:10:20])       
set(gca,'Ytick',[0:10:20])
set(gca,'FontSize',20);
set(gca,'FontName','Times New Roman');
clabel(c,h,'FontSize',20);

figure(3)
[c h] = contourf(x_index*1000,y_index*1000,z_surf_mcl3*1000,a,'ShowText','on')
ylabel('y(mm)','FontSize',25)
xlabel('x(mm)','FontSize',25)
set(gca,'Xtick',[0:10:20])       
set(gca,'Ytick',[0:10:20])
set(gca,'FontSize',20);
set(gca,'FontName','Times New Roman');
clabel(c,h,'FontSize',20);

figure(4)
[c h] = contourf(x_index*1000,y_index*1000,z_surf_inff1*1000,a,'ShowText','on')
ylabel('y(mm)','FontSize',25)
xlabel('x(mm)','FontSize',25)
set(gca,'Xtick',[0:10:20])       
set(gca,'Ytick',[0:10:20])
set(gca,'FontSize',20);
set(gca,'FontName','Times New Roman');
clabel(c,h,'FontSize',20);


figure(5)
[c h] = contourf(x_index*1000,y_index*1000,z_surf_inff2*1000,a,'ShowText','on')
ylabel('y(mm)','FontSize',25)
xlabel('x(mm)','FontSize',25)
set(gca,'Xtick',[0:10:20])       
set(gca,'Ytick',[0:10:20])
set(gca,'FontSize',20);
set(gca,'FontName','Times New Roman');
clabel(c,h,'FontSize',20);

figure(6)
[c h] = contourf(x_index*1000,y_index*1000,z_surf_inff3*1000,a,'ShowText','on')
ylabel('y(mm)','FontSize',25)
xlabel('x(mm)','FontSize',25)
set(gca,'Xtick',[0:10:20])       
set(gca,'Ytick',[0:10:20])
set(gca,'FontSize',20);
set(gca,'FontName','Times New Roman');
clabel(c,h,'FontSize',20);




for i=1:x_length
    for j=1:y_length

        if(isnan( z_surf_mcl1(i,j)))
            z_surf_mcl1(i,j)=0;
        end
        
        if(isnan( z_surf_mcl2(i,j)))
            z_surf_mcl2(i,j)=0;
        end
        
        if(isnan( z_surf_mcl3(i,j)))
            z_surf_mcl3(i,j)=0;
        end
        
        if(isnan( z_surf_inff1(i,j)))
            z_surf_inff1(i,j)=0;
        end
        
        if(isnan( z_surf_inff2(i,j)))
            z_surf_inff2(i,j)=0;
        end
        
        if(isnan( z_surf_inff3(i,j)))
            z_surf_inff3(i,j)=0;
        end

    end
end

sum(sum(z_surf_mcl1))*x_step*y_step*1000^3*(x_length-1)^2/x_length^2
sum(sum(z_surf_mcl2))*x_step*y_step*1000^3*(x_length-1)^2/x_length^2
sum(sum(z_surf_mcl3))*x_step*y_step*1000^3*(x_length-1)^2/x_length^2
sum(sum(z_surf_inff1))*x_step*y_step*1000^3*(x_length-1)^2/x_length^2
sum(sum(z_surf_inff2))*x_step*y_step*1000^3*(x_length-1)^2/x_length^2
sum(sum(z_surf_inff3))*x_step*y_step*1000^3*(x_length-1)^2/x_length^2





