function [mean_0, mean_1, sigma_0, sigma_1, priori_0, priori_1 ] = qdac(X, y)

first_class = find(y == 1);
second_class = find(y == 0);

N = size(X, 1);

priori_1 = size(X(first_class, :), 1) / N;
priori_0 = size(X(second_class, :), 1) / N;

mean_1 = mean(X(first_class, :), 1);
mean_0 = mean(X(second_class, :), 1);

sigma_1 = zeros(size(X, 2));
for i = 1:size(first_class, 1)
    Xi = X(first_class(i), :);
    sigma_1 = sigma_1 + (Xi - mean_1)' * (Xi - mean_1);
end
sigma_1 = sigma_1 / (size(first_class, 1));

sigma_0 = zeros(size(X, 2));
for i = 1:size(second_class, 1)
    Xi = X(second_class(i), :);
    sigma_0 = sigma_0 + (Xi - mean_0)' * (Xi - mean_0);
end
sigma_0 = sigma_0 / (size(second_class, 1));

end

