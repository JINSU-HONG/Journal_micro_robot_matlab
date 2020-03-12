function [Binter] = trilinear_3d(position, grid,B)

%grid 3*2 [x1 x0;y1 y0;..
%B 3*8 [Bx000 Bx001...; By000 By001...
xgrid = grid(1,2) - grid(1,1);
ygrid = grid(2,2) - grid(2,1);
zgrid = grid(3,2) - grid(3,1);

x = position(1) - grid(1,1);
y = position(2) - grid(2,1);
z = position(3) - grid(3,1);

xd = grid(1,2) - position(1);
yd = grid(2,2) - position(2);
zd = grid(3,2) - position(3);



% if(xgrid<0||ygrid<0||zgrid<0)
%    error(message('Grid error')) 
% end

C  = zeros(8,1);

C(1) = xd * yd * zd;
C(2) = xd * yd * z;
C(3) = xd * y * zd;
C(4) = xd * y * z;
C(5) = x * yd * zd;
C(6) = x * yd * z;
C(7) = x * y * zd;
C(8) = x * y * z;

Binter = B*C/(xgrid*ygrid*zgrid);





end


