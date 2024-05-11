% FUGACITY PROBLEM
% DATE : 19-01-21
% NAME : SANTOSH M. ZOL


T = 345; % in kelvin
V = 0.0001; % in cubic meter
R = 8.314; % in joule.mol^(-1).K^(-1)

% RANDOM VALUES
y = rand(1,2);
a = rand(1,2);

n = length(a);
y_mol= y./sum(y);

% CALCULATING a_mix
a_mix = 0;
for i=1:n
    a_mix = a_mix + y_mol(1,i)*a(1,i);
end

% CALCULATING TOTAL PRESSURE 
P = (R*T/V) - (a_mix/((V)^(1.5)*T^(0.5)));

% CALCULATING VALUES OF FUGACITY AND FUGACITY COEFFICIENT

phi1 = exp(-(2*a(1,1)+a_mix)/(R*T*(sqrt(T*V))));
f1 = y_mol(1,1)*P*phi1;
phi2 = exp(-(2*a(1,2)+a_mix)/(R*T*(sqrt(T*V))));
f2 = y_mol(1,2)*P*phi2; 


fprintf('fugacity coefficient for first gas componant is  %f\n',phi1); % unitless
fprintf('fugacity coefficient for second gas componant is  %f\n',phi2); % unitless
fprintf('fugacity for first gas componant is  %f\n',f1); % in pascals
fprintf('fugacity for second gas componant is  %f\n',f2); % in pascals