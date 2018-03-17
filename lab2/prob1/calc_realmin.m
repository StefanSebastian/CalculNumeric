function y = calc_realmin()
% pornim de la cel mai mic numar denormalizat
% il inmultim cu baza (2) pana cand obtinem cel mai mic nr normalizat
% cand numarul adunat cu eps0 nu se modifica inseamna ca e normalizat
eps0 = calc_eps0();
nr = eps0;
while nr + eps0 ~= nr
    nr = nr * 2;
end
y = nr / 2;
end

