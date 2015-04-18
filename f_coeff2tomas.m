function [ coeff2tomas ] = f_coeff2tomas( alphas, alphaj, betaj )
%UNTITLED4 Summary of this function goes here
% ' Cálculo del factor F2 para el SMR de Romana según las funciones contínuas de Roberto Tomás et al 2007
% ' Adrián Riquelme, Enero 2014
% ' alphas: azimuth of dip vector of slope, in degrees
% ' alphaj: azimith of dip vector of discontinuity in degrees
% ' betas: value of dip vector of the discontinuity, in degrees

aux = abs(alphas - alphaj);
if aux > 180 
    aux = 360 - aux;
end
if aux >= 90 
    % rotura vuelco
    coeff2tomas = 1;
    else
    % rotura Cuña/Plana
    coeff2tomas = 9 / 16 + 1 / 195 * atan(17 / 100 * betaj - 5) * 180 / pi;
end

end

