function [index, grid] = lenear_search(position,grid_min,grid_max,gird_size)
%LENEAR_SEARCH 이 함수의 요약 설명 위치
%   자세한 설명 위치

%version update 18_11_19

gird_num = round((grid_max-grid_min)/gird_size)+1;

if(position(1)<=grid_min)
    position(1) = grid_min + 0.00000001;
elseif(position(1)>=grid_max)
    position(1) = grid_max - 0.00000001;
end

if(position(2)<=grid_min)
    position(2) = grid_min + 0.00000001;
elseif(position(1)>=grid_max)
    position(2) = grid_max - 0.00000001;
end

if(position(3)<=grid_min)
    position(3) = grid_min + 0.00000001;
elseif(position(1)>=grid_max)
    position(3) = grid_max - 0.00000001;
end

x_ceil = ceil((position(1) - grid_min)/ gird_size)-1;
y_ceil = ceil((position(2) - grid_min)/ gird_size)-1;
z_ceil = ceil((position(3) - grid_min)/ gird_size)-1;





%z->y->x
x_num = (x_ceil) * (gird_num*gird_num);
y_num = (y_ceil) * (gird_num);
z_num = (z_ceil);

base_index = x_num + y_num + z_num + 1;

index(1) = base_index;
index(2) = index(1) + 1;
index(3) = base_index + gird_num;
index(4) = index(3) + 1;
index(5) = base_index + gird_num^2;
index(6) = index(5) + 1;
index(7) = base_index + gird_num + gird_num^2;
index(8) = index(7) + 1;





%x->y->z
% x_num = (x_ceil);
% y_num = (y_ceil) * (gird_num);
% z_num = (z_ceil) * (gird_num*gird_num);

% base_index = x_num + y_num + z_num + 1;

% index(1) = base_index;
% index(5) = index(1) + 1;
% index(3) = base_index + gird_num;
% index(7) = index(3) + 1;
% index(2) = base_index + gird_num^2;
% index(6) = index(2) + 1;
% index(4) = base_index + gird_num + gird_num^2;
% index(8) = index(4) + 1;



grid = [x_ceil*gird_size + grid_min (x_ceil+1)*gird_size + grid_min;
    y_ceil*gird_size + grid_min (y_ceil+1)*gird_size + grid_min;
    z_ceil*gird_size + grid_min (z_ceil+1)*gird_size + grid_min];

end

