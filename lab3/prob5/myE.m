function [ e, n ] = myE( err )

% 0 < en < 1/(n + 1)
% en = 1 - en-1 n = 2, 3 ..

n = 1;
eroare = realmax();
while eroare > err
    n = n + 1;
    % aproximam cu n termeni
    
    % aproximam pe e dupa en
    en = 1 / (2*(n+1)); % alegem o aproximare care respecta conditiile ; 0 < en < 1 / (n + 1)
    naux = n; % calculam e1
    while naux > 1
       en = (1 - en) / naux;
       naux = naux - 1;
    end
    e1 = 1 / en; % il calculam pe e
    
    % aproximam pe e dupa en+1
    enp = 1 / (2*(n + 2));
    naux = n;
    while naux > 1
       enp = (1 - enp) / naux;
       naux = naux - 1;
    end
    e2 = 1 / enp;
    
    eroare = abs(e2 - e1) / e2;
end
e = e2;
end

