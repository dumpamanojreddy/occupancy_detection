function a = fdac(X, y)
% Linear Discriminant Analysis

first_class = find(y == 1);
second_class = find(y == 0);

N = size(X, 1);

mu_1 = mean(X(first_class, :), 1);
mu_0 = mean(X(second_class, :), 1);
M = [mu_1; mu_0];

w = zeros(size(X, 2));

for i = 1:size(first_class, 1)
    Xi = X(first_class(i), :);
    w = w + (Xi - mu_1)' * (Xi - mu_1);
end

for i = 1:size(second_class, 1)
    Xi = X(second_class(i), :);
    w = w + (Xi - mu_0)' * (Xi - mu_0);
end

w = w / N;

[Vw, Dw, Vw] = svd(w);
whalf = Vw * Dw ^ (1/2) * Vw';

wminushalf = inv(whalf);
Mstar = M * wminushalf;

for i=1:size(M,1)
    Mstar(i,:) = Mstar(i,:) - mean(Mstar);
end

Bstar = Mstar' * Mstar;
[Vstar, Db, Vstar] = svd(Bstar);

a = wminushalf * Vstar;

end

