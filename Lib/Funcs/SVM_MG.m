function [predict_label, prob_estimates]= SVM_MG(X, train_data, train_label, gt, c, g)
%% Adding Paths LIBSVM Matlab
%addpath '..\libsvm-3.17';
%addpath '..\libsvm-3.17\matlab';
%addpath '..\libsvm-3.17\windows';

option = sprintf('-q -t 2 -b 1 -c %d -g %d',c,g);

model = svmtrain(train_label, train_data, option);

[predict_label ,~ , prob_estimates] = svmpredict(gt, X, model,'-b 1');