function [ Acoeff1 ] = f_Acoeff1( alphas, alphaj )
%[ Acoeff1 ] = f_Acoeff1( alphas, alphaj )
%   Cálculo del ángulo auxiliar A del SMR
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

