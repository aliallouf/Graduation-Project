%% These codes belong to me for discussion. Contact me via my private email
%% ali1allouf@gmail.com
% Define The Plain text
M = [3, 3];

%picks two neutrosophic positive integers: p, q
p = [3, 2]; %3+2I
q = [7, 4]; %7+4I

%compute n
n = [p(1)*q(1), p(1)* q(2) + p(2) * q(1) + p(2) *q(2) ];
disp('Computed value of (n):');
disp(n)

%computes phi(n) = phi(p).phi(q)
%phi_p = p - 1;
%phi_q = q - 1;

phi_n = [phi(n(1)),phi(n(2)+n(1)) - phi(n(1))];

disp('Computed value (phi_n):');
disp(phi_n)

%picks an arbitrary neutrosophic positive integer 
e = [5, 6];

%encrypts the text M by the formula
C(1) = power(M(1), e(1));
C(1) = mod(C(1),n(1));

t = power((M(1)+M(2)), (e(1) + e(2)));

C(2) = mod(t,( n(1)+n(2)))- C(1) ;

disp('Encrypted message: ');
disp(C);

% Plot the results
stem(C);
title('Stem Plot of Encrypted Message');
xlabel('Index');
ylabel('Value');