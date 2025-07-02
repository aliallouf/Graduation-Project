%% These codes belong to me for discussion. Contact me via my private email
%% ali1allouf@gmail.com
function phi = phi(n)
% This function calculates the Euler's totient function of a given number n.

phi = n; % initialize phi to be n
p = 2; % start with the smallest prime factor
while p^2 <= n
    if mod(n,p) == 0 % p is a prime factor of n
        phi = phi * (1 - 1/p); % apply the formula for phi
        while mod(n,p) == 0 % remove all factors of p from n
            n = n / p;
        end
    end
    p = p + 1; % move on to the next prime factor
end
if n > 1 % if n has a prime factor greater than sqrt(n)
    phi = phi * (1 - 1/n); % apply the formula for phi again
end

end

