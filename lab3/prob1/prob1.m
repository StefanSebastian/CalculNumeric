A = [10 7 8 7; 7 5 6 5; 8 6 10 9; 7 5 9 10];
B = [32; 23; 33; 31];
X = A \ B;

% subpct a

% perturbam B
Bp = [32.1 ; 22.9; 33.1; 30.9];
% calculam eroare de intrare
err_in = norm(B - Bp)

% rezolvam ecuatia
Xp = A \ Bp;
% calculam eroare de iesire
err_out = norm(X - Xp)

% raportul erorilor
fact_amplif = err_out / err_in

% deci erorile s-au amplificat de ~80 de ori

% subpct b
Ap = [10 7 8.1 7.2; 7.8 5.04 6 5; 8 5.98 9.89 9; 6.99 4.99 9 9.98];
err_in = norm(A - Ap)

Xp = Ap \ B;
err_out = norm(X - Xp)
fact_amplif = err_out / err_in
% erorile s-au amplif de ~2 ori

