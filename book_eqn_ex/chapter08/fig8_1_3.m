clc
clear
close all

% s = b / a;
syms D__22 b 
s = linspace(0.001, 12, 1000);

for m = 1:4
    N0 = pi^2 * D__22 / b^2 .* ( 10 * m^2 * s.^2 + 2 + 1 ./ (s.^2 * m^2));
    plot(1 ./ s, N0 * b^2 / (pi^2 * D__22))
    hold on
end

grid on
grid minor
axis([0 12 0 24])

