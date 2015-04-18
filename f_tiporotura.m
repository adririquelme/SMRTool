function [ tiporotura ] = f_tiporotura( alphas, alphaj )
% [ tipo_rotura ] = f_tiporotura( alphas, alphaj )
%   Función que determina el tipo de rotura posible que se puede producir
%   en un talud a partir de las direcciones del buzamiento de la
%   discontinuidad y del talud

aux = abs(alphas - alphaj);
if aux > 180
    aux = 360 - aux;
end
if aux >= 90
    % rotura vuelco
    tiporotura = 'Toppling';
else
    tiporotura = 'Wedge/Planar';
end


end

