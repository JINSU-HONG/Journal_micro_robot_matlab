function [B_mag max_v] = max_B_field_calc(act_m,Ilim)
%MAX_B_FIELD_CALC 이 함수의 요약 설명 위치
%   자세한 설명 위치

inv_m = act_m'*(act_m*act_m')^-1;

inv_m_sq = inv_m.^2;

sum_inv_m_sq = sum(inv_m_sq');

max_sum_inv_m_sq = max(sum_inv_m_sq);

Imax = sqrt(max_sum_inv_m_sq);

B_mag = Ilim/Imax;

max_vect_u = inv_m(find(max_sum_inv_m_sq == sum_inv_m_sq),:)';

max_v = max_vect_u/norm(max_vect_u);


end

