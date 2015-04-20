function [ w,b, angle, posible ] = f_calculatewedge( alphas, betas, alphaj1, betaj1, alphaj2, betaj2 )
% Cálculo de una cuña a partir de su talud y las dos discontinuidades
% Adrián Riquelme, 19 marzo 2015
% alpha y beta en radianes, ya se convierte sólo dentro del código
% w y b en grados
% angle: diferencia de dirección entre el talud y la quilla de la cuña,
% grados
% posible 1 si si o 0 si no
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
[ A,B,C ] = f_vbuz2vnor( alphas/180*pi,betas/180*pi );
slope=[A,B,C];
[ A,B,C ] = f_vbuz2vnor( alphaj1/180*pi,betaj1/180*pi );
discontinuity1=[A,B,C];
[ A,B,C ] = f_vbuz2vnor( alphaj2/180*pi,betaj2/180*pi );
discontinuity2=[A,B,C];
% la línea es el prod vect de los vn de los planos
line=cross(discontinuity1,discontinuity2);
% hacemos que su componente z sea negativa para saber hacia
% donde buzaría la cuña y compararlo con el slope
if line(3)>0
    line=line*(-1);
end
% calculamos el ángulo que forma la cuña con el slope
angle = acos(slope(1:2)*line(1:2)')*180/pi;
angle = round(angle*100)/100;
if angle <0
    angle = 180 + angle;
end
% calculamos el azimut y buzamiento del vector de la linea
[w,b]=v2vbuz(line(1),line(2),line(3));
w=round(w*180/pi*100)/100;
b=round(b*180/pi*100)/100;
if angle <= 90
    posible=1;
else
    posible=0;
end

end

function [ A,B,C ] = f_vbuz2vnor( w,b )
% f_vbuz2vnor, Adrián Riquelme octubre 2013
% [ A,B,C ] = f_vbuz2vnor( w,b )
%   Función que toma el vector buzamiento de un plano y devuelve las
%   componentes (A,B,C) del vector normal al plano.
A=sin(b).*sin(w);
B=sin(b).*cos(w);
C=cos(b);
% M=[A; B; C];
end

function [w,b]=v2vbuz(ux,uy,uz)
% Función de conversión vector normal a vector buzamiento del plano
% Adrián Riquelme, abril 2013
% [w,b]=v2vbuz(ux,uy,uz)
% Input:
% - componentes del vector normal al plano
% Output:
% - w: ángulo que forma el vector de buzamiento con el eje OY, considerado
% como el norte
% - b: ángulo que forma la línea de máxima pendiente del plano con su
% proyección horizontal.
uxy= (ux^2+uy^2)^(0.5);
bz=uz;
if uxy==0
    bx=0;
    by=0;
else
    bx=ux;
    by=uy;
end
bxy = abs(uxy);
if bx>=0 && by>=0
    w = atan(bx/by);
end
if bx>0 && by<0
    w = pi-atan(abs(bx/by));
end
if bx<=0 && by<=0
    w = pi + atan(abs(bx/by));
end
if bx<0 && by>0
    w = 2*pi - atan(abs(bx/by));
end

b = - atan(bz/bxy);

if bx==0 ||by==0
    w = 0;
end
end
