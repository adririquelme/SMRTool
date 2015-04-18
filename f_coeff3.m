function [ coeff3 ] = f_coeff3( alphas, alphaj, betas, betaj )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
aux = abs(alphas - alphaj);
if aux > 180 
    aux = 360 - aux;
end
% Calculamos el ángulo C
C = f_Ccoeff3(alphas, alphaj, betas, betaj);
if aux >= 90 
    %rotura vuelco
    if C < 110 
        F3 = 0;
    end
    if C >= 110 && C < 120 
        F3 = -6;
    end
    if C >= 120 
        F3 = -25;
    end
end
if aux < 90 
    % tiporotura = "Wedge/Planar"
    if C > 10 
        F3 = 0;
    end
    if C > 0 && C <= 10 
        F3 = -6;
    end
    if C == 0 
        F3 = -25;
    end
    if C >= -10 && C < 0 
        F3 = -50;
    end
    if C <= -10 
        F3 = -60;
    end
end
coeff3 = F3;

end

