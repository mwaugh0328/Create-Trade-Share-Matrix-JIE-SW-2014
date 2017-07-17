/* This is the main driver file that will make a .txt file of distance data to use in matlab that works with my code */
/* Everything should be done just by running this code */

clear

cd "C:\Users\mwaugh.NYC-STERN\Dropbox\Github Code\Construct Trade Matrix JIE SW (2014)\Complete"

use dist_cepii.dta

run gen_imp_code_dist.do

run gen_exp_code_dist.do

sort neccode niccode

outfile contig colony dist neccode niccode using "dist_mat.txt", replace noquote comma wide

clear

exit, STATA

