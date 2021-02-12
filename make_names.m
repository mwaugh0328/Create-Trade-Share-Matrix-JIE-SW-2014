function [country_names, data] = make_names(top_30)

N_og_cntry = 134;

drop = [20,54,73,75,76,78,82,87,92,109,134];

test = importdata('output_data.xlsx');

country_names = test.textdata(2:end,[2:3]);

data = test.data;

data(drop,:) = [];
country_names(drop,:) = [];

data(~top_30,:) = [];
country_names(~top_30,:) = [];

data = data(:,[4:6])

for xxx = 1:30
    country_names{xxx,3} = xxx;
end

save('names.mat', 'data', 'country_names')


