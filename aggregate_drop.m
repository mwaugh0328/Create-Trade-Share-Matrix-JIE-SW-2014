function [new_trade_mat, new_gross_output] = aggregate_drop(trade_mat, total_gross_output)
% It aggregates and then drop the countries for which we do not have data

new_trade_mat = trade_mat;
new_gross_output = total_gross_output;

% Aggregate Belgium with Netherlands and Luxembourg

new_trade_mat(:,9) = trade_mat(:,9) + trade_mat(:,75) + trade_mat(:,92);
new_trade_mat(9,:) = trade_mat(9,:) + trade_mat(75,:) + trade_mat(92,:);

new_gross_output(9) =  total_gross_output(9) + total_gross_output(75) + total_gross_output(92);

% Aggregate Singapore with Maylasia

new_trade_mat(:,80) = trade_mat(:,80) + trade_mat(:,109);
new_trade_mat(80,:) = trade_mat(80,:) + trade_mat(109,:);

new_gross_output(80) =  total_gross_output(80) + total_gross_output(109);

% Aggregate China with Hong Kong and Maccao

new_trade_mat(:,27) = trade_mat(:,27) + trade_mat(:,54) + trade_mat(:,76);
new_trade_mat(27,:) = trade_mat(27,:) + trade_mat(54,:) + trade_mat(76,:);

new_gross_output(27) =  total_gross_output(27) + total_gross_output(54) + total_gross_output(76);

% We will drop the same countries we drop last time...

% Now Drop Netherlands, Luxembourg, Maylasia, and Liberia, Madagascar,
% Malta, Mongolia, Singapore, Hong Kong, Maccao, and Zimbabwe (The last 
% because the price data is all messed up

% The old ones plus the new ones droped...

% load not_top_50.mat
% load not_top_30.mat
% load not_top_10.mat

drop = [20,54,73,75,76,78,82,87,92,109,134];
drop = [drop];


new_trade_mat(drop,:) = [];
new_trade_mat(:,drop) = [];

new_gross_output(drop) = [];


