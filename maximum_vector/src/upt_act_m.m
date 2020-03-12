[Btemp1 ] = trilinear_3d(position, grid,B1);
[Btemp2 ] = trilinear_3d(position, grid,B2);
[Btemp3 ] = trilinear_3d(position, grid,B3);
[Btemp4 ] = trilinear_3d(position, grid,B4);
[Btemp5 ] = trilinear_3d(position, grid,B5);
[Btemp6 ] = trilinear_3d(position, grid,B6);
[Btemp7 ] = trilinear_3d(position, grid,B7);
[Btemp8 ] = trilinear_3d(position, grid,B8);

Binter = [Btemp1 Btemp2 Btemp3 Btemp4 Btemp5 Btemp6 Btemp7 Btemp8];

act_m = [Binter];