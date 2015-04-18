function [ classsmr, description, stability, failures, support ] = f_classsmr( smr)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
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

