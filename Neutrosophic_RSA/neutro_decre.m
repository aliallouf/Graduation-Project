%% These codes belong to me for discussion. Contact me via my private email
%% ali1allouf@gmail.com
% Define The Cipher Text
C = [12, -6];

% Define The Secret Key
d = [5, 6];
% Define Value Of n
n = [21, 34];

% Decrypts The Message As Follows
M(1) = power(C(1), d(1));
M(1) = mod(M(1),n(1));

t = power((C(1)+C(2)), (d(1) + d(2)));
 
M(2) = mod(t,(n(1)+n(2)))- M(1) ;

disp('Decrypted message: ');
disp(M);
