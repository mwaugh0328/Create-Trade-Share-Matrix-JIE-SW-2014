% This code generates the tradeshare matrix that is used in SW(2014) JIE.
% It first loads the trade matrix that is constructed from the world trade
% flows data base,...
%
% Feenstra, R. C., R. E. Lipsey, H. Deng, A. C. Ma, and H. Mo (2005):
% “World trade flows: 1962-2000,” Tech. rep., National Bureau of Economic Research.
%
% We obtain trade flows for year 2004 at the SITC-4-digit level for each
% country-pair in the dataset from an update to Feenstra et al. (2005) using UN Comtrade data.
% 
% Data can be downloaded here...
% http://cid.econ.ucdavis.edu/Html/WTF_bilateral.html
%
% We then converted the trade flows to ISIC codes and aggregated to only the
% manufacturing sector. This is all performed in the stata file
% adjust_trade.do which is called from this matlab file...
%
% The file construct_tradematrix.m create an aggregate,
% bilateral trade flow matrix. The codes to work from are given by those 
% input_isic file...
%
% The file ``impute_output_data.m'' then constructs an imputation of gross
% output for the countries we did not have data for. The details are inthat
% file.
%
% Then the file ``aggregate_drop.m'' we make some
% adjustments (either dropping or aggregating (e.g. China and Hong Kong).
%
% Finally the file ``construct_tradeshare.m'' constructs the trade share
% matrix. Again this is organized so that each column is an
% importer, a row is an exporter. The sum down a column should equally one.
%
% The file output_data.xlsx has the country names, identifiers, and the
% output data used. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear

% This calls the sata .do file which reads in the trade flow data, then
% adjusts it per the description above... this takes some time...

dos('"C:\Program Files (x86)\Stata13\StataSE-64" do adjust_trade.do')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Now aggregate accross codes and construct a N by N martix of bilateral
% trade flows...
input_wtf = load('wtf_04mat.txt', '-ascii');
input_isic = load('isic_3digit_manuf.txt', '-ascii');

% Now these then aggregates accross industry codes to create an aggregate,
% bilateral trade flow matrix. The codes to work from are given by those 
% input_isic file...

trademat = construct_tradematrix(input_wtf, input_isic);

total_output= impute_output_data(1);

[new_trade_mat, new_output] = aggregate_drop(trademat, total_output);

tradeshare = construct_tradeshare(new_trade_mat, new_output);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

dos('"C:\Program Files (x86)\Stata13\StataSE-64" do adjust_gravity_var.do')

dist_mat = load('dist_mat.txt', '-ascii');

load not_top_30.mat

[d_mat, b_mat, e_code, i_code] = construct_gravity_var(dist_mat, top_30);
% This constructs the gravity variables


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Then this will be setup to run gravity regressions on...
home_share = diag(tradeshare);
grav_trade = tradeshare./repmat(home_share',30,1);

grav_data_set = [i_code(:), e_code(:), grav_trade(:), d_mat(:)/1.6, b_mat(:)];

csvwrite('grav_data.csv',grav_data_set);
