# Create-Trade-Share-Matrix-JIE-SW-2014
Code to Create the Trade Share matrix used in:

[1] [**The Elasticity of Trade: Estimates and Evidence**](http://www.waugheconomics.com/uploads/2/2/5/6/22563786/estimate_theta_paper.pdf), with Ina Simonovska.<br>
Journal of International Economics, 92(1): 34-50. January 2014.
2015 Winner of The Bhagwati Award (selected by the JIE Editorial Board as the best article published in the
JIE during 2013 and 2014).

[2] [**Trade models, trade elasticities, and the gains from trade**](http://www.waugheconomics.com/uploads/2/2/5/6/22563786/trade_elasticities.pdf), with Ina Simonovska.<br>
No. w20495. National Bureau of Economic Research, 2014.

The main driver file is make_tradeshare.m 

It calls a STATA file adjust_trade.do wihch downloads data from the world trade flows database:
 
Feenstra, R. C., R. E. Lipsey, H. Deng, A. C. Ma, and H. Mo (2005): “World trade flows: 1962-2000,” Tech. rep., National Bureau of Economic Research.
 
We obtain trade flows for year 2004 at the SITC-4-digit level for each country-pair in the dataset from an update to Feenstra et al. (2005) using UN Comtrade data.

We then converted the trade flows to ISIC codes and then construct_tradematrix.m aggregates the data to the only the manufacturing sector. This stores aggregate trade flows in the following way, each column is an importer, a row is an exporter.
 
The file impute_output_data.m then constructs an imputation of gross output for the countries we did not have data for. The details are in that file.
 
Then the file aggregate_drop.m makes some adjustments (either dropping or aggregating (e.g. China and Hong Kong) countries). This is also setup to take different cuts, e.g. only the top 30 countries.
 
The file construct_tradeshare.m constructs the trade share matrix. Again this is organized so that each column is an importer, a row is an exporter. The sum down a column should (and does) equall one.

The file output_data.xlsx has the country names, identifiers, and the output data used. 

Finallly, the file creates gravity variables and then outputs a data set that is usable in my companion code repository on [**Gravity Estimation**](https://github.com/mwaugh0328/Gravity-Estimation). It reads in the set of distance, border from the file dist_cepii.dta and then after adjustment the gravity data set is a N^2 by 5 (where N is the number of countries) in the following order, importer code, exporter code, normalized bilateral trade share, bilateral distance, and a contignuity dummy.

