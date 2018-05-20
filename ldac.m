function [mean_0, mean_1, sigma, priori_0, priori_1 ] = ldac(X, y)
% Linear Discriminant Analysis

first_class = find(y == 1);
second_class = find(y == 0);

N = size(X, 1);

% priori probabilities of two classes
priori_1 = size(X(first_class, :), 1) / N;
priori_0 = size(X(second_class, :), 1) / N;

% centroids of two classes
mean_1 = mean(X(first_class, :), 1);
mean_0 = mean(X(second_class, :), 1);

sigma = zeros(size(X, 2));

% Covariance Matrix
for i = 1:size(first_class, 1)
    Xi = X(first_class(i), :);
    sigma = sigma + (Xi - mean_1)' * (Xi - mean_1);
end

for i = 1:size(second_class, 1)
    Xi = X(second_class(i), :);
    sigma = sigma + (Xi - mean_0)' * (Xi - mean_0);
end

sigma = sigma / N;

end

