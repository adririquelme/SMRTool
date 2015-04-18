function [ coeff2 ] = f_coeff2( alphas, alphaj, betaj )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

aux = abs(alphas - alphaj);
if aux > 180 
    aux = 360 - aux;
end
if aux >= 90 
    % rotura vuelco
    coeff2 = 1;
else
    % rotura plana o en cuña
    if betaj <= 20 
        coeff2 = 0.15;
    end
    if betaj > 20 && betaj <= 30 
        coeff2 = 0.4;
    end
    if betaj > 30 && betaj <= 35 
        coeff2 = 0.7;
    end
    if betaj > 35 && betaj <= 45 
        coeff2 = 0.85;
    end
    if betaj > 45 
        coeff2 = 1;
    end
end

end

