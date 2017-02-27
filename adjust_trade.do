*********************************************************************************************************
*
* This is the file that will take the world trade flow data for a given year here (2004) and output 
* a .txt file that them the matlab code construct_tradematrix.m takes in an creates
* a the matrix of trade flows. 

* Before running, besure to change the directory in the appropriate way. 

*********************************************************************************************************
clear all

use "C:\Users\mwaugh.NYC-STERN\Dropbox\Github Code\Construct Trade Matrix JIE SW (2014)\Complete\wtf_2004.dta"

* Note that the world trade flows bilateral data set can be downloaded here:
* http://cid.econ.ucdavis.edu/Html/WTF_bilateral.html
* and everything should be in a stata format

*********************************************************************************************************
* Drop some stuff we do not need 

drop cty1 cty2 exporter importer year

*********************************************************************************************************
* Kill the stuff with the sitc codes so the machine can read them  */

destring sitc, ignore("S-") replace

replace sitc = sitc - 20000

*********************************************************************************************************
* Record what kind of flow that we see 

gen iecode = 0 if ( trade_flow == "Import")

replace iecode = 1 if ( trade_flow == "Export")

* At some point in the past this was relavent...given the ``standard'' data set 
* this does not appear to be an issue of relavence...

*********************************************************************************************************
* Drop more stuff 

drop desc trade_flow unit

*********************************************************************************************************
* These files inorder, put in a new code number for each importing country, each exporting country  */
* Then convert the sitc code numbers into isic code numbers, speaperate do files achive this */

run "C:\Users\mwaugh.NYC-STERN\Dropbox\Github Code\Construct Trade Matrix JIE SW (2014)\Complete\gen_imp_code.do"

run "C:\Users\mwaugh.NYC-STERN\Dropbox\Github Code\Construct Trade Matrix JIE SW (2014)\Complete\gen_exp_code.do"

run "C:\Users\mwaugh.NYC-STERN\Dropbox\Github Code\Construct Trade Matrix JIE SW (2014)\Complete\gen_isic_code.do"

*********************************************************************************************************
* Just some stuff to clean up  

replace niccode = 777 if missing(niccode)

replace neccode = 777 if missing(neccode)

replace isic = 9999 if missing(isic)

/* This produces the outfile on my computer */

outfile isic value iecode neccode niccode using "C:\Users\mwaugh.NYC-STERN\Dropbox\Github Code\Construct Trade Matrix JIE SW (2014)\Complete\wtf_04mat.txt", replace noquote comma wide

clear

exit, STATA
