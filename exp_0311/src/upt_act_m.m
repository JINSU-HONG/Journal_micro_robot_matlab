[index, grid] = lenear_search(position,grid_min,grid_max,gird_size);

B1 = [B_coil_1_data(index(1),1:3)' B_coil_1_data(index(2),1:3)' B_coil_1_data(index(3),1:3)' B_coil_1_data(index(4),1:3)' B_coil_1_data(index(5),1:3)' B_coil_1_data(index(6),1:3)' B_coil_1_data(index(7),1:3)' B_coil_1_data(index(8),1:3)'];
[Btemp1 ] = trilinear_3d(position, grid,B1);

B2 = [B_coil_2_data(index(1),1:3)' B_coil_2_data(index(2),1:3)' B_coil_2_data(index(3),1:3)' B_coil_2_data(index(4),1:3)' B_coil_2_data(index(5),1:3)' B_coil_2_data(index(6),1:3)' B_coil_2_data(index(7),1:3)' B_coil_2_data(index(8),1:3)'];
[Btemp2 ] = trilinear_3d(position, grid,B2);

B3 = [B_coil_3_data(index(1),1:3)' B_coil_3_data(index(2),1:3)' B_coil_3_data(index(3),1:3)' B_coil_3_data(index(4),1:3)' B_coil_3_data(index(5),1:3)' B_coil_3_data(index(6),1:3)' B_coil_3_data(index(7),1:3)' B_coil_3_data(index(8),1:3)'];
[Btemp3 ] = trilinear_3d(position, grid,B3);

B4 = [B_coil_4_data(index(1),1:3)' B_coil_4_data(index(2),1:3)' B_coil_4_data(index(3),1:3)' B_coil_4_data(index(4),1:3)' B_coil_4_data(index(5),1:3)' B_coil_4_data(index(6),1:3)' B_coil_4_data(index(7),1:3)' B_coil_4_data(index(8),1:3)'];
[Btemp4 ] = trilinear_3d(position, grid,B4);

B5 = [B_coil_5_data(index(1),1:3)' B_coil_5_data(index(2),1:3)' B_coil_5_data(index(3),1:3)' B_coil_5_data(index(4),1:3)' B_coil_5_data(index(5),1:3)' B_coil_5_data(index(6),1:3)' B_coil_5_data(index(7),1:3)' B_coil_5_data(index(8),1:3)'];
[Btemp5 ] = trilinear_3d(position, grid,B5);

B6 = [B_coil_6_data(index(1),1:3)' B_coil_6_data(index(2),1:3)' B_coil_6_data(index(3),1:3)' B_coil_6_data(index(4),1:3)' B_coil_6_data(index(5),1:3)' B_coil_6_data(index(6),1:3)' B_coil_6_data(index(7),1:3)' B_coil_6_data(index(8),1:3)'];
[Btemp6 ] = trilinear_3d(position, grid,B6);

B7 = [B_coil_7_data(index(1),1:3)' B_coil_7_data(index(2),1:3)' B_coil_7_data(index(3),1:3)' B_coil_7_data(index(4),1:3)' B_coil_7_data(index(5),1:3)' B_coil_7_data(index(6),1:3)' B_coil_7_data(index(7),1:3)' B_coil_7_data(index(8),1:3)'];
[Btemp7 ] = trilinear_3d(position, grid,B7);

B8 = [B_coil_8_data(index(1),1:3)' B_coil_8_data(index(2),1:3)' B_coil_8_data(index(3),1:3)' B_coil_8_data(index(4),1:3)' B_coil_8_data(index(5),1:3)' B_coil_8_data(index(6),1:3)' B_coil_8_data(index(7),1:3)' B_coil_8_data(index(8),1:3)'];
[Btemp8 ] = trilinear_3d(position, grid,B8);

Binter = [Btemp1 Btemp2 Btemp3 Btemp4 Btemp5 Btemp6 Btemp7 Btemp8];

act_m = [Binter];