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
% We then converted the trade flows to ISIC codes and aggregated to only the
% manufacturing sector. The matrix trademat_manuf, stored in manuf.mat is
% the end result. This stores aggregate trade flows in the following way,
% each column is an importer, a row is an exporter.
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

load manuf

total_output= impute_output_data(1);

[new_trade_mat, new_output] = aggregate_drop(trademat_manuf, total_output);

tradeshare = construct_tradeshare(new_trade_mat, new_output);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
