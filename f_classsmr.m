function [ classsmr, description, stability, failures, support ] = f_classsmr( smr)
% [ classsmr, description, stability, failures, support ] = f_classsmr( smr)
% provides information of the SMR from its value
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
if smr <= 20 
    classsmr = 'V';
    description = 'Very bad';
    stability = 'Completely unstable ';
    failures = 'Big planar or soil-like ';
    support = 'Reexcavation ';    
end
if smr > 20 && smr <= 40
    classsmr = 'IV';
    description = 'Bad';
    stability = 'Unstable';
    failures = 'Planar or big wedges';
    support = 'Important/corrective';    
end
if smr > 40 && smr <= 60
    classsmr = 'III';
    description = 'Normal';
    stability = 'Partially stable';
    failures = 'Some joints or many wedges';
    support = 'Systematic';    

end
if smr > 60 && smr <= 80 
    classsmr = 'II';
    description = 'Good';
    stability = 'Stable';
    failures = 'Some blocks';
    support = 'Occasional';    
end
if smr > 80 && smr <= 100
    classsmr = 'I';
    description = 'Very good';
    stability = 'Completely stable';
    failures = 'None';
    support = 'None';
end

end

