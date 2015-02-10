%%runcorr: plots the linear regression and gives both the pearson and
%%spearman correlations

clear
file = './Results/stats.csv';

data = csvread(file);
id= data(1:end,1);
passes = data(1:end,2);
fails = data(1:end,3);
tarantula = data(1:end,4);
cumul_comple = data(1:end,5);

[Spear_cor, Spear_p]= corr(tarantula, cumul_comple, 'type','Spearman')
[Pear_cor, Pear_p]= corr(tarantula, cumul_comple)

plotregression(tarantula',cumul_comple'/(max(cumul_comple)));

