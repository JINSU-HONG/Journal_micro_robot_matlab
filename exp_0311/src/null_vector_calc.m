function [I_min_des,I_min,I_ans,ratio,inj_ratio,mode, ref_I_max_num,pro_norm] = null_vector_calc(act_m,ref_B,lim_I)
%NULL_VECTOR_CALC 이 함수의 요약 설명 위치
%   자세한 설명 위치

mode = 0;


null_v = null(act_m);

v1 = null_v(:,1);
v2 = null_v(:,2);
v3 = null_v(:,3);
v4 = null_v(:,4);
v5 = null_v(:,5);

I_min_des = act_m'*(act_m*act_m')^-1*ref_B;

ref_Iabs_max = max(abs(I_min_des));
ref_I_max_num = find(ref_Iabs_max==abs(I_min_des));
ratio = 1;



if(ref_Iabs_max>lim_I)
    des_v = zeros(8,1);
    ratio = lim_I/ref_Iabs_max;
    I_min = I_min_des*ratio;
    if(I_min_des(ref_I_max_num)>0)
        des_v(ref_I_max_num) = 1;
    else
        des_v(ref_I_max_num) = -1;
    end
    
    pro1 = dot(des_v, v1)*v1;
    pro2 = dot(des_v, v2)*v2;
    pro3 = dot(des_v, v3)*v3;
    pro4 = dot(des_v, v4)*v4;
    pro5 = dot(des_v, v5)*v5;
    
    pro = pro1+pro2+pro3+pro4+pro4+pro5;
    pro_norm = pro/norm(pro);
    
    ninj_k =  pro_norm(ref_I_max_num);
    Imcl_k =  I_min_des(ref_I_max_num);
    
    qa = (I_min_des+Imcl_k)./(ninj_k+pro_norm);
    qb = (I_min_des-Imcl_k)./(pro_norm-ninj_k);
    
    for i=1:length(qa)
        if(qa(i) <= 0)
            qa(i) = 10000;
        end
        
        if(qb(i) <= 0)
            qb(i) = 10000;
        end
    end
    
    
    q = min([qa' qb']);
    
    des_q = (ref_Iabs_max - lim_I)/abs(pro_norm(ref_I_max_num));
    
    if(q>des_q)
        inj_ratio = 1;
        I_ans = I_min_des - des_q * pro_norm;
        mode = 2;
    else
        I_ans_des = I_min_des - q * pro_norm;
        inj_ratio = lim_I/max(abs(I_ans_des));
        I_ans = I_ans_des*inj_ratio;
        mode = 3;
    end
    
else
    I_min = I_min_des;
    pro_norm = ones(8,1);
    I_ans = I_min_des;
    inj_ratio = 1;
    mode = 1;
end



end

