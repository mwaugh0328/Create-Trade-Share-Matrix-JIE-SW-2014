function [yyyy] = impute_output_data(zzz)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This function takes gross output data and value added from the world bank
% and then it using data on the ratio of value added to gross output and
% coutnry characteristics, it projects the observed ratio on these
% characteristics. Then the fitted values are used to impute the ratio of
% value added to gross output for the countries we do not have data on.
%
% Given the imputed ratio, we can use value added data and gross it up and
% arrive at an imputed gross output value. 
% 
% The imputed gross output data is then used in the construction of the
% tradeshare matrix. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load output_data.mat

[new_output_data ,~] = xlsread('output_data.xlsx');

ratio = new_output_data(:,end);
xxx = isnan(ratio);
xxx(76) = 1; % Not being used, ignore it...
xxx = logical(xxx);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The data we use to impute gross output are real gdp, size, and then value
% added in manufacturing and agriculture...

rgdpk = new_output_data(~xxx,5);
size  = new_output_data(~xxx,6);
wb_value_added = new_output_data(~xxx,7);
ag_value_added = new_output_data(~xxx,8);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Do cubic functions of the log of this...

cube_rgdp = [log(rgdpk), log(rgdpk).^2, log(rgdpk).^3];

cube_size = [log(size), log(size).^2, log(size).^3];

cube_wb_value_added = [log(wb_value_added), log(wb_value_added).^2, log(wb_value_added).^3];

cube_ag_value_added = [log(ag_value_added),log(ag_value_added).^2, log(ag_value_added).^3];

[b,~,~,~,stats] = regress(log(ratio(~xxx)), [ones(sum(~xxx),1), cube_rgdp, cube_size, cube_wb_value_added, cube_ag_value_added ]);

disp('Statistics from Regresion to Impute')
disp(stats)

yhat = [ones(sum(~xxx),1), cube_rgdp, cube_size, cube_wb_value_added cube_ag_value_added ]*b;

plot(exp(yhat),ratio(~xxx),'b*')
% This plots the imputed ra

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Now impute Gross Output Data

gross_output = new_output_data(:,10);
is_not_2004_data = (new_output_data(:,9)~=2004);

rgdpk_m = new_output_data(is_not_2004_data,5);
size_m  = new_output_data(is_not_2004_data,6);
wb_value_added_m = new_output_data(is_not_2004_data,7);
ag_value_added_m = new_output_data(is_not_2004_data,8);

cube_rgdp_m = [log(rgdpk_m), log(rgdpk_m).^2, log(rgdpk_m).^3];

cube_size_m = [log(size_m), log(size_m).^2, log(size_m).^3];

cube_wb_value_added_m = [log(wb_value_added_m), log(wb_value_added_m).^2, log(wb_value_added_m).^3];

cube_ag_value_added_m = [log(ag_value_added_m),log(ag_value_added_m).^2, log(ag_value_added_m).^3];

miss_ratio = [ones(sum(is_not_2004_data),1), cube_rgdp_m, cube_size_m, cube_wb_value_added_m cube_ag_value_added_m ]*b;

impute_gross_output = gross_output;

impute_gross_output(is_not_2004_data) = (exp(miss_ratio)).^-1.*wb_value_added_m;

yyyy = impute_gross_output;
