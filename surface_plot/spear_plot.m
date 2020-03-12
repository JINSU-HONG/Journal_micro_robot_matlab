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

length_k = 50;
[X Y Z] = sphere(length_k-1);



position = [10 10 10]'*0.001;
upt_act_m;

T1 = zeros(length_k,length_k);
T2 = zeros(length_k,length_k);



%%
for i=1:length_k
    for j=1:length_k
        v = [X(j,i) Y(j,i) Z(j,i)]';
        
        I_mcl = act_m'*(act_m*act_m')^-1*v;
        
        I_inff = cadzow(act_m,v);
        
        
        T1(j,i) = lim_I/max(abs(I_mcl));
        T2(j,i) = lim_I/max(abs(I_inff));
    end
end

figure(1)
hs1 = surf(X,Y,Z)     ; %// display the sphere and retrieve the handle to the graphic object
axis equal           ; %// set the axis ratio so the sphere appear as a sphere
shading interp       ; %// small refinement to not see the grid, you can comment that

ax = gca; % current axes
ax.FontSize = 15;
colorbar;

figure(2)
hs2 = surf(X,Y,Z)     ; %// display the sphere and retrieve the handle to the graphic object
axis equal           ; %// set the axis ratio so the sphere appear as a sphere
shading interp       ; %// small refinement to not see the grid, you can comment that

set(hs1,'CData',T1) ;  
set(hs2,'CData',T2) ;  

ax = gca; % current axes
ax.FontSize = 15;
colorbar;

