function [tradeshare] = construct_tradeshare(trademat, gross_output)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This function takes the trade matrix and the gross output data and then
% constructs the trade share matrix. That is the value of goods purchased
% bilaterall relative to the total value of goods consumed.
%
% Note that the trade share matrix is setup in the following way, rows are
% exporters and each column is an importer. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Just some housekeeping, then work through country by country...

Ncntry = length(gross_output);

tradeshare = zeros(Ncntry,Ncntry);

denominator = zeros(Ncntry,1);

total_exports = zeros(Ncntry,1);

total_imports = zeros(Ncntry,1);

for cntry = 1:Ncntry
    
    total_exports(cntry,1) = sum(trademat(cntry,:));
    total_imports(cntry,1) = sum(trademat(:,cntry));
    
    denominator(cntry,1) = gross_output(cntry);
    
    tradeshare(:,cntry) = trademat(:,cntry)./(denominator(cntry,1) + total_imports(cntry,1) - total_exports(cntry,1));
    tradeshare(cntry,cntry) = 1 - sum(tradeshare(:,cntry));
    
end


    
   
    
    