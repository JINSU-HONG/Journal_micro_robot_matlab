function [I_inff,ratio] = min_infinity_norm(act_m,ref_B,Ilim)
%MIN_INFINITY_NORM �� �Լ��� ��� ���� ��ġ
%   �ڼ��� ���� ��ġ

[I_inff num] = cadzow(act_m,ref_B);

I_max = max(abs(I_inff));

if(I_max > Ilim)
    ratio = Ilim/I_max;
    I_inff= I_inff*ratio;
else
    ratio = 1;
end



end

