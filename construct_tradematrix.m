function trademat = construct_tradematrix(input_wtf, input_isic)
% This adjusts the trade data that comes out of the stata adjust_trade.do
% Also needs isic as imputs as well. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cntries = 1:134; % This is hardwired from the wtf country codes have been setup...
Ncntry = length(cntries);

Ncode = length(input_isic);

trademat = zeros(Ncntry,Ncntry);

for importer = 1:Ncntry
    % Fix and importing country, below take only the flows associated with
    % that importer
    
    yyy = (input_wtf(:,5) == cntries(importer));
    
    trade_flows = input_wtf(yyy,:);
    % This takes those trade flows.... Now we want to pull them out
    % by...exporter and only take the manufacturing ones
        
    for exporter = 1:Ncntry
        
        % Given and importing country, take only the flows associated with
        % a specific exporter. Be sure to name a new varible to store the
        % stuff, i.e. trade_flow_new
        
        www = (trade_flows(:,4)==cntries(exporter));
        trade_flow_new = trade_flows(www,:);
        
        if (isempty(trade_flow_new)~=1 )
        
            for isicode = 1:Ncode
            
                % Now work through each product code. Below take only the flows
                % associated with the specific product code. In future
                % versions with only selected catagories we can compute a
                % simmilar matrix.
            
            zzz = (trade_flow_new(:,1)==input_isic(isicode));
            
                if sum(zzz) == 0
                % This one first checks to see if there are any of those codes
                % traded at all, if not then just advance to the next
                % itteration
                 continue
                end
            
                % Now record the trade flows associated with the product code
            
                trade_flow_newc = trade_flow_new(zzz,:);
            
                % These flows should either be comming from the export side or
                % import side seaperate them out.
                        
                trademat(exporter,importer) =  sum(trade_flow_newc(:,2)) + trademat(exporter,importer);
    
            end
        end
    end
end

zeross = sum(sum((trademat==0))) - Ncntry;
disp('Percent Zeros')
disp(zeross./(134.^2 - 134))
            
            
            



