function [ Acoeff1 ] = f_Acoeff1( alphas, alphaj )
%[ Acoeff1 ] = f_Acoeff1( alphas, alphaj )
%   Cálculo del ángulo auxiliar A del SMR
%    Copyright (C) {2015}  {Adrián Riquelme Guill, adririquelme@gmail.com}
%
%    This program is free software; you can redistribute it and/or modify
%    it under the terms of the GNU General Public License as published by
%    the Free Software Foundation; either version 2 of the License, or
%    any later version.
%
%    This program is distributed in the hope that it will be useful,
%    but WITHOUT ANY WARRANTY; without even the implied warranty of
%    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%    GNU General Public License for more details.
%
%    You should have received a copy of the GNU General Public License along
%   with this program; if not, write to the Free Software Foundation, Inc.,
%   51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
%    SMRTool, Copyright (C) 2015 Adrián Riquelme Guill
%    SMRTool comes with ABSOLUTELY NO WARRANTY.
%    This is free software, and you are welcome to redistribute it
%    under certain conditions.
Acoeff1 = abs(alphas - alphaj);
[~,n]=size(Acoeff1);
if n==1 
    % Se homogeneiza el ángulo entre orientaciones de plano
    if Acoeff1 > 90 && Acoeff1 < 270
        if Acoeff1 >= 180 
            Acoeff1 = Acoeff1 - 180;
        else
            Acoeff1 = 180 - Acoeff1;
        end
    end

    if Acoeff1 >= 270 && Acoeff1 <= 360
        Acoeff1 = 360 - Acoeff1;
    end
else
    for i=1:n
        if Acoeff1(i) > 90 && Acoeff1(i) < 270
            if Acoeff1(i) >= 180 
                Acoeff1(i) = Acoeff1(i) - 180;
            else
                Acoeff1(i) = 180 - Acoeff1(i);
            end
        end
        if Acoeff1(i) >= 270 && Acoeff1(i) <= 360
            Acoeff1(i) = 360 - Acoeff1(i);
        end
    end
end

end

