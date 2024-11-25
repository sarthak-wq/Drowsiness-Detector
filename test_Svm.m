clc;
clear all;
close all;
%%
load fisheriris
xdata = meas(51:end,3:4);
group = species(51:end);
svmStruct = svmtrain(xdata,group,'showplot',true);

species = svmclassify(svmStruct,[5 2]);