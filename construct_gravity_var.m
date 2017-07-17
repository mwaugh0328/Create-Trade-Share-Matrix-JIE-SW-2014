function [d_mat, b_mat, e_code, i_code] = construct_gravity_var(dist_mat, drop_30)
% This will create the gravity variables for use in gravity estimation....

N_og_cntry = 134;

drop = [20,54,73,75,76,78,82,87,92,109,134];
% These are the countries droped for various problematic reasons...

% This then restricts the sample to a set of countries...

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The distance matrix....

d_mat = dist_mat(:,3);
d_mat = reshape(d_mat,N_og_cntry,N_og_cntry);

d_mat(drop,:) = [];
d_mat(:,drop) = [];

d_mat(~drop_30,:) = [];
d_mat(:,~drop_30) = [];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The distance matrix....

b_mat = dist_mat(:,1);
b_mat = reshape(b_mat,N_og_cntry,N_og_cntry);

b_mat(drop,:) = [];
b_mat(:,drop) = [];

b_mat(~drop_30,:) = [];
b_mat(:,~drop_30) = [];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
n_cntry = sum(drop_30);

e_code = repmat((1:30)',1,n_cntry);
i_code = repmat((1:30),n_cntry,1);
% So given how the trade share matrix works, the importer is fixed for a
% row, then the exporter varies across columns...

test = 1;


