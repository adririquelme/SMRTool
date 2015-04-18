function [ coeff1 ] = f_coeff1( alphas, alphaj )
% [ coeff1 ] = f_coeff1( alphas, alphaj )
%   Detailed explanation goes here
aux = f_Acoeff1(alphas, alphaj);
if aux >= 30 
    coeff1 = 0.15;
end
if aux >= 20 && aux < 30 
    coeff1 = 0.4;
end
if aux >= 10 && aux < 20 
    coeff1 = 0.7;
end
if aux >= 5 && aux < 10 
    coeff1 = 0.85;
end
if aux < 5 
    coeff1 = 1;
end

end

