function [ Ccoeff3 ] = f_Ccoeff3( alphas, alphaj, betas,betaj )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

aux = abs(alphas - alphaj);
if aux > 180
    aux = 360 - aux;
end
if aux >= 90 
    % rotura vuelco
    Ccoeff3 = betas + betaj;
else
    % Rotura Cuña/Plana
    Ccoeff3 = betaj - betas;
end

end

