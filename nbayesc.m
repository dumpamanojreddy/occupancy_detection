%% Initialization
clear ; close all; clc

%% Load Data
data = load('datatraining.txt');
X = data(:, [1, 2, 3, 4, 5]); 
y = data(:, 6);

testdata = load('datatest.txt');
testX = testdata(:, [1, 2, 3, 4, 5]); 
testY = testdata(:, 6);

number_of_classes = 2;

likelihoods = zeros(number_of_classes, size(X, 2));
priors = zeros(number_of_classes, 1);
evidence = zeros(size(X,2), 1);
accuracy = 0.0;
k = 0.0;
k_values = [0.1, 0.04, 0.1, 0.3, 1, 3, 10, 30];

for i=1:length(k_values)
    % train with k
    [c_likelihoods, c_priors, c_evidence] = nb_train(X, y, number_of_classes, k_values(i));
    % classify cross-val set
    [crossval_predicted_classes, crossval_posteriors] = nb_classify(testX, c_priors, c_likelihoods, c_evidence);
    % check if k is better
    c_accuracy = sum(crossval_predicted_classes == testY)/length(testY)*100.0;
    printf("%f\n",c_accuracy);
    if c_accuracy>accuracy
        accuracy = c_accuracy;
        k = k_values(i);
        likelihoods = c_likelihoods;
        priors = c_priors;
        evidence = c_evidence;
    endif;
endfor;
printf("Selected k=%2.2f with cross-validation accuracy=%2.2f%%.\n",k, accuracy);

[trainingset_predicted_classes, trainingset_posteriors] = nb_classify(X, priors, likelihoods, evidence);
accuracy = sum(trainingset_predicted_classes == y)/length(y)*100.0;
printf("Accuracy on training-set=%2.2f%%\n", accuracy);
