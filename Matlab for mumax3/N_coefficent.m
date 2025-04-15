%calculate nonlinearity coefficient
%define constants
Ku = (-5:0.01:5)*10^4; %J/m^3
muMs = 0.0942;%G
mu = 4*pi*10^(-7);
% disp(mu);
Ms = muMs/mu; %A/m
Hk = 2*Ku/muMs;%PMA field
Meff = Ms-Hk;
muHext = 0.08; %T
Hext = muHext/mu;
gamma = 180/(2*pi); %gyromagnetic ratio

theta = pi/2+asin(Hext./(Meff));
index = round((6563 - Ku(1))/(Ku(end)-Ku(1)) * numel(theta));
theta(1:index) = 0; % for Ku1 < 6563, the solution for asin is undefined, so here define them as 0
% plot(Ku, theta);
% disp(theta);
Hm = sqrt(Meff.^2 .* (sin(theta)).^2 + Hext.^2);% effective internal magnetic field
% plot(Ku, Hm);

A = gamma*mu*(Hm-0.5*Meff.*(cos(theta)).^2);
B = -0.5*gamma*mu*Meff.*(cos(theta)).^2;
% disp(B);
V = -gamma*mu*(Meff).*cos(theta).* sin(theta);
U1 = gamma*mu*(Meff).*(3/2.*(cos(theta)).^2-1);
U2 = -0.5*B;
omega = sqrt(A.^2-abs(B).^2);
% plot(Ku,omega);

%Bogoliubov transformation coeffcients
u = sign(A) .* sqrt((A + omega) ./ (2 .* omega));
% disp(u);
v = conj(B)./abs(B) .* sqrt((A - omega) ./ (2 .* omega));
disp(v);

T = (3*(u.^2+abs(v).^2).^2 - 1) .* U1/2 - 3 * u.*(u.^2 + abs(v).^2).*(v.* U2 + conj(v).*conj(U2));
W1 = 3*(u.^2+abs(v).^2).*(u.*V-conj(v).* conj(V))/2 - (u.*V+conj(v).*conj(V))/2;
W2 = - u .* conj(v) .* (u .* V - conj(v) .* conj(V));

% N-coefficient
N =  (2 * omega./A) .* (T - 3*((abs(W1).^2 + abs(W2).^2)./omega));
hold on;
plot(Ku, N, '-', 'color', 'black');
plot(Ku, zeros(size(Ku)), '--','color', 'black', 'LineWidth', 1); 
xlabel('K_{u1} (J/m^3)');
ylabel('N coefficient');


