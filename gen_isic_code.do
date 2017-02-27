*********************************************************************************************************
*********************************************************************************************************
*
* This generates an ISIC code given the SITC code in the trade data, (I belive) that 
* this concordance comes from Mark Muendler's work at the following adress
* http://econweb.ucsd.edu/~muendler/docs/conc/sitc2isic.pdf
*
*********************************************************************************************************
*********************************************************************************************************

gen isic = 111 if sitc == 0011       
                                     
replace isic= 111 if sitc == 0012    
                                     
replace isic= 111 if sitc == 0013    
                                     
replace isic= 111 if sitc == 0014    
                                     
replace isic= 111 if sitc == 0015    
                                     
replace isic= 311 if sitc ==  0111   
                                     
replace isic= 311 if sitc ==  0112   
                                     
replace isic= 311 if sitc ==  0113   
                                     
replace isic= 311 if sitc ==  0114   
                                     
replace isic= 311 if sitc ==  0115   
                                     
replace isic= 311 if sitc ==  0116   
                                     
replace isic= 311 if sitc ==  0118   
                                     
replace isic= 311 if sitc ==  0121   
                                     
replace isic= 311 if sitc ==  0129   
                                     
replace isic= 311 if sitc ==  0141   
                                     
replace isic= 311 if sitc ==  0142   
                                     
replace isic= 311 if sitc ==  0149   
                                     
replace isic= 311 if sitc ==  0223   
                                     
replace isic= 311 if sitc ==  0224   
                                     
replace isic= 311 if sitc ==  0230   
                                     
replace isic= 311 if sitc ==  0240   
                                     
replace isic= 111 if sitc ==   0251  
                                     
replace isic= 311 if sitc ==   0252  
                                     
replace isic= 130 if sitc ==   0341  
                                     
replace isic= 130 if sitc ==   0342  
                                     
replace isic= 130 if sitc ==   0343  
                                     
replace isic= 130 if sitc ==   0344  
                                     
replace isic= 130 if sitc ==   0350  
                                     
replace isic= 130 if sitc ==   0360  
                                     
replace isic= 311 if sitc ==   0371  
                                     
replace isic= 311 if sitc ==   0372  
                                     
replace isic= 111 if sitc ==   0411  
                                     
replace isic= 111 if sitc ==   0412  
                                     
replace isic= 111 if sitc ==   0421  
                                     
replace isic= 311 if sitc ==   0422  
                                     
replace isic= 111 if sitc ==   0430  
                                     
replace isic= 111 if sitc ==   0440  
                                     
replace isic= 111 if sitc ==   0451  
                                     
replace isic= 111 if sitc ==   0452  
                                     
replace isic= 111 if sitc ==   0459  
                                     
replace isic= 311 if sitc ==   0460  
                                     
replace isic= 311 if sitc ==   0470  
                                     
replace isic= 311 if sitc ==   0481  
                                     
replace isic= 313 if sitc ==   0482  
                                     
replace isic= 311 if sitc ==   0483  
                                     
replace isic= 311 if sitc ==   0484  
                                     
replace isic= 311 if sitc ==   0488  
                                     
replace isic= 111 if sitc ==   0541  
                                     
replace isic= 111 if sitc ==   0542  
                                     
replace isic= 111 if sitc ==   0544  
                                     
replace isic= 111 if sitc ==   0545  
                                     
replace isic= 311 if sitc ==   0546  
                                     
replace isic= 111 if sitc ==   0548  
                                     
replace isic= 311 if sitc ==   0561  
                                     
replace isic= 311 if sitc ==   0564  
                                     
replace isic= 311 if sitc ==   0565  
                                     
replace isic= 111 if sitc ==   0571  
                                     
replace isic= 111 if sitc ==   0572  
                                     
replace isic= 111 if sitc ==   0573  
                                     
replace isic= 111 if sitc ==   0574  
                                     
replace isic= 111 if sitc ==   0575  
                                     
replace isic= 111 if sitc ==   0576  
                                     
replace isic= 111 if sitc ==   0577  
                                     
replace isic= 111 if sitc ==   0579  
                                     
replace isic= 311 if sitc ==   0582  
                                     
replace isic= 311 if sitc ==   0583  
                                     
replace isic= 311 if sitc ==   0585  
                                     
replace isic= 311 if sitc ==   0586  
                                     
replace isic= 311 if sitc ==   0589  
                                     
replace isic= 311 if sitc ==   0611  
                                     
replace isic= 311 if sitc ==   0612  
                                     
replace isic= 311 if sitc ==   0615  
                                     
replace isic= 111 if sitc ==   0616  
                                     
replace isic= 311 if sitc ==   0619  
                                     
replace isic= 311 if sitc ==   0620  
                                     
replace isic= 111 if sitc ==   0711  
                                     
replace isic= 312 if sitc ==   0712  
                                     
replace isic= 111 if sitc ==   0721  
                                     
replace isic= 311 if sitc ==   0722  
                                     
replace isic= 311 if sitc ==   0723  
                                     
replace isic= 311 if sitc ==   0730  
                                     
replace isic= 111 if sitc ==   0741  
                                     
replace isic= 111 if sitc ==   0742  
                                     
replace isic= 111 if sitc ==   0751  
                                     
replace isic= 111 if sitc ==   0752  
                                     
replace isic= 111 if sitc ==   0811  
                                     
replace isic= 311 if sitc ==   0812  
                                     
replace isic= 311 if sitc ==   0813  
                                     
replace isic= 311 if sitc ==   0814  
                                     
replace isic= 312 if sitc ==   0819  
                                     
replace isic= 311 if sitc ==   0913  
                                     
replace isic= 311 if sitc ==   0914  
                                     
replace isic= 312 if sitc ==   0980  
                                     
replace isic= 313 if sitc ==   1110  
                                     
replace isic= 313 if sitc ==   1121  
                                     
replace isic= 313 if sitc ==   1122  
                                     
replace isic= 313 if sitc ==   1123  
                                     
replace isic= 313 if sitc ==   1124  
                                     
replace isic= 111 if sitc ==   1211  
                                     
replace isic= 111 if sitc ==   1212  
                                     
replace isic= 111 if sitc ==   1213  
                                     
replace isic= 314 if sitc ==   1221  
                                     
replace isic= 314 if sitc ==   1222  
                                     
replace isic= 314 if sitc ==   1223  
                                     
replace isic= 311 if sitc ==   2111  
                                     
replace isic= 311 if sitc ==   2112  
                                     
replace isic= 111 if sitc ==   2114  
                                     
replace isic= 311 if sitc ==   2116  
                                     
replace isic= 311 if sitc ==   2117  
                                     
replace isic= 322 if sitc ==   2119  
                                     
replace isic= 113 if sitc ==   2120  
                                     
replace isic= 111 if sitc ==   2221  
                                     
replace isic= 111 if sitc ==   2222  
                                     
replace isic= 321 if sitc ==   2223  
                                     
replace isic= 111 if sitc ==   2224  
                                     
replace isic= 111 if sitc ==   2225  
                                     
replace isic= 111 if sitc ==   2226  
                                     
replace isic= 111 if sitc ==   2231  
                                     
replace isic= 111 if sitc ==   2232  
                                     
replace isic= 111 if sitc ==   2234  
                                     
replace isic= 111 if sitc ==   2235  
                                     
replace isic= 111 if sitc ==   2238  
                                     
replace isic= 311 if sitc ==   2239  
                                     
replace isic= 111 if sitc ==   2320  
                                     
replace isic= 351 if sitc ==   2331  
                                     
replace isic= 355 if sitc ==   2332  
                                     
replace isic= 121 if sitc ==   2440  
                                     
replace isic= 121 if sitc ==   2450  
                                     
replace isic= 122 if sitc ==   2460  
                                     
replace isic= 122 if sitc ==   2471  
                                     
replace isic= 122 if sitc ==   2472  
                                     
replace isic= 331 if sitc ==   2481  
                                     
replace isic= 331 if sitc ==   2482  
                                     
replace isic= 331 if sitc ==   2483  
                                     
replace isic= 341 if sitc ==   2511  
                                     
replace isic= 341 if sitc ==   2512  
                                     
replace isic= 341 if sitc ==   2516  
                                     
replace isic= 341 if sitc ==   2517  
                                     
replace isic= 341 if sitc ==   2518  
                                     
replace isic= 341 if sitc ==   2519  
                                     
replace isic= 111 if sitc ==   2613  
                                     
replace isic= 321 if sitc ==   2614  
                                     
replace isic= 111 if sitc ==   2631  
                                     
replace isic= 321 if sitc ==   2632  
                                     
replace isic= 321 if sitc ==   2633  
                                     
replace isic= 321 if sitc ==   2634  
                                     
replace isic= 111 if sitc ==   2640  
                                     
replace isic= 111 if sitc ==   2651  
                                     
replace isic= 111 if sitc ==   2652  
                                     
replace isic= 111 if sitc ==   2654  
                                     
replace isic= 111 if sitc ==   2655  
                                     
replace isic= 111 if sitc ==   2659  
                                     
replace isic= 351 if sitc ==   2665  
                                     
replace isic= 351 if sitc ==   2666  
                                     
replace isic= 351 if sitc ==   2667  
                                     
replace isic= 351 if sitc ==   2671  
                                     
replace isic= 321 if sitc ==   2672  
                                     
replace isic= 111 if sitc ==   2681  
                                     
replace isic= 321 if sitc ==   2682  
                                     
replace isic= 111 if sitc ==   2683  
                                     
replace isic= 321 if sitc ==   2685  
                                     
replace isic= 321 if sitc ==   2686  
                                     
replace isic= 321 if sitc ==   2687  
                                     
replace isic= 321 if sitc ==   2690  
                                     
replace isic= 290 if sitc ==   2711  
                                     
replace isic= 290 if sitc ==    2712 
                                     
replace isic= 290 if sitc ==    2713 
                                     
replace isic= 290 if sitc ==    2714 
                                     
replace isic= 290 if sitc ==    2731 
                                     
replace isic= 290 if sitc ==    2732 
                                     
replace isic= 290 if sitc ==    2733 
                                     
replace isic= 290 if sitc ==    2734 
                                     
replace isic= 290 if sitc ==    2741 
                                     
replace isic= 290 if sitc ==    2742 
                                     
replace isic= 290 if sitc ==    2771 
                                     
replace isic= 290 if sitc ==    2772 
                                     
replace isic= 290 if sitc ==    2782 
                                     
replace isic= 290 if sitc ==    2783 
                                     
replace isic= 290 if sitc ==    2784 
                                     
replace isic= 290 if sitc ==    2785 
                                     
replace isic= 371 if sitc ==    2786 
                                     
replace isic= 290 if sitc ==    2789 
                                     
replace isic= 351 if sitc ==    2814 
                                     
replace isic= 230 if sitc ==    2815 
                                     
replace isic= 230 if sitc ==    2816 
                                     
replace isic= 999 if sitc ==    2820 
                                     
replace isic= 230 if sitc ==    2860 
                                     
replace isic= 230 if sitc ==    2871 
                                     
replace isic= 230 if sitc ==    2872 
                                     
replace isic= 230 if sitc ==    2873 
                                     
replace isic= 230 if sitc ==    2874 
                                     
replace isic= 230 if sitc ==    2875 
                                     
replace isic= 230 if sitc ==    2876 
                                     
replace isic= 230 if sitc ==    2877 
                                     
replace isic= 230 if sitc ==    2879 
                                     
replace isic= 372 if sitc ==    2881 
                                     
replace isic= 372 if sitc ==    2882 
                                     
replace isic= 230 if sitc ==    2890 
                                     
replace isic= 130 if sitc ==    2911 
                                     
replace isic= 130 if sitc ==    2919 
                                     
replace isic= 111 if sitc ==    2922 
                                     
replace isic= 111 if sitc ==    2923 
                                     
replace isic= 121 if sitc ==    2924 
                                     
replace isic= 111 if sitc ==    2925 
                                     
replace isic= 111 if sitc ==    2926 
                                     
replace isic= 111 if sitc ==    2927 
                                     
replace isic= 121 if sitc ==    2929 
                                     
replace isic= 210 if sitc ==    3221 
                                     
replace isic= 210 if sitc ==    3222 
                                     
replace isic= 210 if sitc ==    3223 
                                     
replace isic= 290 if sitc ==    3224 
                                     
replace isic= 210 if sitc ==    3231 
                                     
replace isic= 354 if sitc ==    3232 
                                     
replace isic= 220 if sitc ==    3330 
                                     
replace isic= 353 if sitc ==    3341 
                                     
replace isic= 353 if sitc ==    3342 
                                     
replace isic= 353 if sitc ==    3343 
                                     
replace isic= 353 if sitc ==    3344 
                                     
replace isic= 353 if sitc ==    3345 
                                     
replace isic= 353 if sitc ==    3351 
                                     
replace isic= 353 if sitc ==    3352 
                                     
replace isic= 354 if sitc ==    3353 
                                     
replace isic= 353 if sitc ==    3354 
                                     
replace isic= 220 if sitc ==    3413 
                                     
replace isic= 220 if sitc ==    3414 
                                     
replace isic= 999 if sitc ==    3415 
                                     
replace isic= 410 if sitc ==    3510 
                                     
replace isic= 311 if sitc ==    4111 
                                     
replace isic= 311 if sitc ==    4113 
                                     
replace isic= 311 if sitc ==    4232 
                                     
replace isic= 311 if sitc ==    4233 
                                     
replace isic= 311 if sitc ==    4234 
                                     
replace isic= 311 if sitc ==    4235 
                                     
replace isic= 311 if sitc ==    4236 
                                     
replace isic= 311 if sitc ==    4239 
                                     
replace isic= 311 if sitc ==    4241 
                                     
replace isic= 311 if sitc ==    4242 
                                     
replace isic= 311 if sitc ==    4243 
                                     
replace isic= 311 if sitc ==    4244 
                                     
replace isic= 311 if sitc ==    4245 
                                     
replace isic= 311 if sitc ==    4249 
                                     
replace isic= 311 if sitc ==    4311 
                                     
replace isic= 311 if sitc ==    4312 
                                     
replace isic= 311 if sitc ==    4313 
                                     
replace isic= 311 if sitc ==    4314 
                                     
replace isic= 351 if sitc ==    5111 
                                     
replace isic= 351 if sitc ==    5112 
                                     
replace isic= 351 if sitc ==    5113 
                                     
replace isic= 351 if sitc ==    5114 
                                     
replace isic= 351 if sitc ==    5121 
                                     
replace isic= 351 if sitc ==    5122 
                                     
replace isic= 351 if sitc ==    5123 
                                     
replace isic= 351 if sitc ==    5137 
                                     
replace isic= 351 if sitc ==    5138 
                                     
replace isic= 351 if sitc ==    5139 
                                     
replace isic= 351 if sitc ==    5145 
                                     
replace isic= 351 if sitc ==    5146 
                                     
replace isic= 351 if sitc ==    5147 
                                     
replace isic= 351 if sitc ==    5148 
                                     
replace isic= 351 if sitc ==    5154 
                                     
replace isic= 351 if sitc ==    5155 
                                     
replace isic= 351 if sitc ==    5156 
                                     
replace isic= 351 if sitc ==    5157 
                                     
replace isic= 351 if sitc ==    5161 
                                     
replace isic= 351 if sitc ==    5162 
                                     
replace isic= 351 if sitc ==    5163 
                                     
replace isic= 351 if sitc ==    5169 
                                     
replace isic= 351 if sitc ==    5221 
                                     
replace isic= 351 if sitc ==    5222 
                                     
replace isic= 351 if sitc ==    5223 
                                     
replace isic= 351 if sitc ==    5224 
                                     
replace isic= 351 if sitc ==    5225 
                                     
replace isic= 351 if sitc ==    5231 
                                     
replace isic= 351 if sitc ==    5232 
                                     
replace isic= 351 if sitc ==    5233 
                                     
replace isic= 351 if sitc ==    5239 
                                     
replace isic= 351 if sitc ==    5241 
                                     
replace isic= 351 if sitc ==    5249 
                                     
replace isic= 351 if sitc ==    5311 
                                     
replace isic= 351 if sitc ==    5312 
                                     
replace isic= 351 if sitc ==    5322 
                                     
replace isic= 351 if sitc ==    5323 
                                     
replace isic= 351 if sitc ==    5331 
                                     
replace isic= 352 if sitc ==    5332 
                                     
replace isic= 352 if sitc ==    5334 
                                     
replace isic= 352 if sitc ==    5335 
                                     
replace isic= 352 if sitc ==    5411 
                                     
replace isic= 352 if sitc ==    5413 
                                     
replace isic= 352 if sitc ==    5414 
                                     
replace isic= 352 if sitc ==    5415 
                                     
replace isic= 352 if sitc ==    5416 
                                     
replace isic= 352 if sitc ==    5417 
                                     
replace isic= 385 if sitc ==    5419 
                                     
replace isic= 352 if sitc ==    5513 
                                     
replace isic= 352 if sitc ==    5514 
                                     
replace isic= 352 if sitc ==    5530 
                                     
replace isic= 352 if sitc ==    5541 
                                     
replace isic= 352 if sitc ==    5542 
                                     
replace isic= 352 if sitc ==    5543 
                                     
replace isic= 351 if sitc ==    5621 
                                     
replace isic= 351 if sitc ==    5622 
                                     
replace isic= 351 if sitc ==    5623 
                                     
replace isic= 351 if sitc ==    5629 
                                     
replace isic= 352 if sitc ==    5721 
                                     
replace isic= 352 if sitc ==    5722 
                                     
replace isic= 352 if sitc ==    5723 
                                     
replace isic= 351 if sitc ==    5821 
                                     
replace isic= 351 if sitc ==    5822 
                                     
replace isic= 351 if sitc ==    5823 
                                     
replace isic= 351 if sitc ==    5824 
                                     
replace isic= 351 if sitc ==    5825 
                                     
replace isic= 351 if sitc ==    5826 
                                     
replace isic= 351 if sitc ==    5827 
                                     
replace isic= 351 if sitc ==    5829 
                                     
replace isic= 351 if sitc ==    5831 
                                     
replace isic= 351 if sitc ==    5832 
                                     
replace isic= 351 if sitc ==    5833 
                                     
replace isic= 351 if sitc ==    5834 
                                     
replace isic= 351 if sitc ==    5835 
                                     
replace isic= 351 if sitc ==    5836 
                                     
replace isic= 351 if sitc ==    5837 
                                     
replace isic= 351 if sitc ==    5838 
                                     
replace isic= 351 if sitc ==    5839 
                                     
replace isic= 351 if sitc ==    5841 
                                     
replace isic= 351 if sitc ==    5842 
                                     
replace isic= 351 if sitc ==    5843 
                                     
replace isic= 351 if sitc ==    5849 
                                     
replace isic= 351 if sitc ==    5852 
                                     
replace isic= 351 if sitc ==    5911 
                                     
replace isic= 351 if sitc ==    5912 
                                     
replace isic= 351 if sitc ==    5913 
                                     
replace isic= 351 if sitc ==    5914 
                                     
replace isic= 312 if sitc ==    5921 
                                     
replace isic= 352 if sitc ==    5922 
                                     
replace isic= 351 if sitc ==    5981 
                                     
replace isic= 352 if sitc ==    5982 
                                     
replace isic= 352 if sitc ==    5983 
                                     
replace isic= 352 if sitc ==    5989 
                                     
replace isic= 323 if sitc ==    6112 
                                     
replace isic= 323 if sitc ==    6113 
                                     
replace isic= 323 if sitc ==    6114 
                                     
replace isic= 323 if sitc ==    6115 
                                     
replace isic= 323 if sitc ==    6116 
                                     
replace isic= 323 if sitc ==    6118 
                                     
replace isic= 323 if sitc ==    6121 
                                     
replace isic= 323 if sitc ==    6122 
                                     
replace isic= 324 if sitc ==    6123 
                                     
replace isic= 323 if sitc ==    6129 
                                     
replace isic= 323 if sitc ==    6130 
                                     
replace isic= 355 if sitc ==    6210 
                                     
replace isic= 355 if sitc ==    6251 
                                     
replace isic= 355 if sitc ==    6252 
                                     
replace isic= 355 if sitc ==    6253 
                                     
replace isic= 355 if sitc ==    6254 
                                     
replace isic= 355 if sitc ==    6259 
                                     
replace isic= 355 if sitc ==    6281 
                                     
replace isic= 355 if sitc ==    6282 
                                     
replace isic= 355 if sitc ==    6289 
                                     
replace isic= 331 if sitc ==    6330 
                                     
replace isic= 331 if sitc ==    6341 
                                     
replace isic= 331 if sitc ==    6342 
                                     
replace isic= 331 if sitc ==    6343 
                                     
replace isic= 331 if sitc ==    6349 
                                     
replace isic= 331 if sitc ==    6351 
                                     
replace isic= 331 if sitc ==    6352 
                                     
replace isic= 331 if sitc ==    6353 
                                     
replace isic= 331 if sitc ==    6354 
                                     
replace isic= 331 if sitc ==    6359 
                                     
replace isic= 341 if sitc ==    6411 
                                     
replace isic= 341 if sitc ==    6412 
                                     
replace isic= 341 if sitc ==    6413 
                                     
replace isic= 341 if sitc ==    6415 
                                     
replace isic= 341 if sitc ==    6416 
                                     
replace isic= 341 if sitc ==    6417 
                                     
replace isic= 341 if sitc ==    6418 
                                     
replace isic= 341 if sitc ==    6419 
                                     
replace isic= 341 if sitc ==    6421 
                                     
replace isic= 341 if sitc ==    6422 
                                     
replace isic= 342 if sitc ==    6423 
                                     
replace isic= 341 if sitc ==    6424 
                                     
replace isic= 341 if sitc ==    6428 
                                     
replace isic= 321 if sitc ==    6511 
                                     
replace isic= 321 if sitc ==    6512 
                                     
replace isic= 321 if sitc ==    6513 
                                     
replace isic= 321 if sitc ==    6514 
                                     
replace isic= 321 if sitc ==    6515 
                                     
replace isic= 321 if sitc ==    6516 
                                     
replace isic= 321 if sitc ==    6517 
                                     
replace isic= 321 if sitc ==    6519 
                                     
replace isic= 321 if sitc ==    6521 
                                     
replace isic= 321 if sitc ==    6522 
                                     
replace isic= 321 if sitc ==    6531 
                                     
replace isic= 321 if sitc ==    6532 
                                     
replace isic= 321 if sitc ==    6534 
                                     
replace isic= 321 if sitc ==    6535 
                                     
replace isic= 321 if sitc ==    6536 
                                     
replace isic= 321 if sitc ==    6538 
                                     
replace isic= 321 if sitc ==    6539 
                                     
replace isic= 321 if sitc ==    6541 
                                     
replace isic= 321 if sitc ==    6542 
                                     
replace isic= 321 if sitc ==    6543 
                                     
replace isic= 321 if sitc ==    6544 
                                     
replace isic= 321 if sitc ==    6545 
                                     
replace isic= 321 if sitc ==    6546 
                                     
replace isic= 321 if sitc ==    6549 
                                     
replace isic= 321 if sitc ==    6552 
                                     
replace isic= 321 if sitc ==    6560 
                                     
replace isic= 321 if sitc ==    6571 
                                     
replace isic= 321 if sitc ==    6572 
                                     
replace isic= 321 if sitc ==    6573 
                                     
replace isic= 321 if sitc ==    6575 
                                     
replace isic= 322 if sitc ==    6576 
                                     
replace isic= 321 if sitc ==    6577 
                                     
replace isic= 321 if sitc ==    6579 
                                     
replace isic= 321 if sitc ==    6581 
                                     
replace isic= 321 if sitc ==    6582 
                                     
replace isic= 321 if sitc ==    6583 
                                     
replace isic= 321 if sitc ==    6584 
                                     
replace isic= 321 if sitc ==    6589 
                                     
replace isic= 321 if sitc ==    6591 
                                     
replace isic= 321 if sitc ==    6592 
                                     
replace isic= 321 if sitc ==    6593 
                                     
replace isic= 321 if sitc ==    6594 
                                     
replace isic= 321 if sitc ==    6595 
                                     
replace isic= 321 if sitc ==    6596 
                                     
replace isic= 321 if sitc ==    6597 
                                     
replace isic= 369 if sitc ==    6611 
                                     
replace isic= 369 if sitc ==    6612 
                                     
replace isic= 369 if sitc ==    6613 
                                     
replace isic= 369 if sitc ==    6618 
                                     
replace isic= 369 if sitc ==    6623 
                                     
replace isic= 369 if sitc ==    6624 
                                     
replace isic= 369 if sitc ==    6631 
                                     
replace isic= 369 if sitc ==    6632 
                                     
replace isic= 369 if sitc ==    6633 
                                     
replace isic= 369 if sitc ==    6635 
                                     
replace isic= 369 if sitc ==    6637 
                                     
replace isic= 369 if sitc ==    6638 
                                     
replace isic= 361 if sitc ==    6639 
                                     
replace isic= 362 if sitc ==    6641 
                                     
replace isic= 362 if sitc ==    6642 
                                     
replace isic= 362 if sitc ==    6643 
                                     
replace isic= 362 if sitc ==    6644 
                                     
replace isic= 362 if sitc ==    6645 
                                     
replace isic= 362 if sitc ==    6647 
                                     
replace isic= 362 if sitc ==    6648 
                                     
replace isic= 362 if sitc ==    6649 
                                     
replace isic= 362 if sitc ==    6651 
                                     
replace isic= 362 if sitc ==    6652 
                                     
replace isic= 362 if sitc ==    6658 
                                     
replace isic= 361 if sitc ==    6664 
                                     
replace isic= 361 if sitc ==    6665 
                                     
replace isic= 361 if sitc ==    6666 
                                     
replace isic= 130 if sitc ==    6671 
                                     
replace isic= 290 if sitc ==    6672 
                                     
replace isic= 390 if sitc ==    6673 
                                     
replace isic= 351 if sitc ==    6674 
                                     
replace isic= 371 if sitc ==    6712 
                                     
replace isic= 371 if sitc ==    6713 
                                     
replace isic= 371 if sitc ==    6716 
                                     
replace isic= 371 if sitc ==    6724 
                                     
replace isic= 371 if sitc ==    6725 
                                     
replace isic= 371 if sitc ==    6727 
                                     
replace isic= 371 if sitc ==    6731 
                                     
replace isic= 371 if sitc ==    6732 
                                     
replace isic= 371 if sitc ==    6733 
                                     
replace isic= 371 if sitc ==    6744 
                                     
replace isic= 371 if sitc ==    6745 
                                     
replace isic= 371 if sitc ==    6746 
                                     
replace isic= 371 if sitc ==    6747 
                                     
replace isic= 371 if sitc ==    6749 
                                     
replace isic= 371 if sitc ==    6760 
                                     
replace isic= 371 if sitc ==    6770 
                                     
replace isic= 371 if sitc ==    6781 
                                     
replace isic= 371 if sitc ==    6782 
                                     
replace isic= 371 if sitc ==    6783 
                                     
replace isic= 371 if sitc ==    6785 
                                     
replace isic= 371 if sitc ==    6793 
                                     
replace isic= 371 if sitc ==    6794 
                                     
replace isic= 372 if sitc ==    6811 
                                     
replace isic= 372 if sitc ==    6812 
                                     
replace isic= 372 if sitc ==    6821 
                                     
replace isic= 372 if sitc ==    6822 
                                     
replace isic= 372 if sitc ==    6831 
                                     
replace isic= 372 if sitc ==    6832 
                                     
replace isic= 372 if sitc ==    6841 
                                     
replace isic= 372 if sitc ==    6842 
                                     
replace isic= 372 if sitc ==    6851 
                                     
replace isic= 372 if sitc ==    6852 
                                     
replace isic= 372 if sitc ==    6861 
                                     
replace isic= 372 if sitc ==    6863 
                                     
replace isic= 372 if sitc ==    6871 
                                     
replace isic= 372 if sitc ==    6872 
                                     
replace isic= 372 if sitc ==    6880 
                                     
replace isic= 372 if sitc ==    6891 
                                     
replace isic= 372 if sitc ==    6899 
                                     
replace isic= 381 if sitc ==    6911 
                                     
replace isic= 381 if sitc ==    6912 
                                     
replace isic= 381 if sitc ==    6921 
                                     
replace isic= 381 if sitc ==    6924 
                                     
replace isic= 371 if sitc ==    6931 
                                     
replace isic= 371 if sitc ==    6932 
                                     
replace isic= 381 if sitc ==    6935 
                                     
replace isic= 381 if sitc ==    6940 
                                     
replace isic= 381 if sitc ==    6951 
                                     
replace isic= 381 if sitc ==    6953 
                                     
replace isic= 382 if sitc ==    6954 
                                     
replace isic= 381 if sitc ==    6960 
                                     
replace isic= 381 if sitc ==    6973 
                                     
replace isic= 381 if sitc ==    6974 
                                     
replace isic= 381 if sitc ==    6975 
                                     
replace isic= 381 if sitc ==    6978 
                                     
replace isic= 381 if sitc ==    6991 
                                     
replace isic= 381 if sitc ==    6992 
                                     
replace isic= 390 if sitc ==    6993 
                                     
replace isic= 381 if sitc ==    6994 
                                     
replace isic= 381 if sitc ==    6996 
                                     
replace isic= 381 if sitc ==    6997 
                                     
replace isic= 381 if sitc ==    6998 
                                     
replace isic= 381 if sitc ==    6999 
                                     
replace isic= 381 if sitc ==    7111 
                                     
replace isic= 381 if sitc ==    7112 
                                     
replace isic= 381 if sitc ==    7119 
                                     
replace isic= 382 if sitc ==    7126 
                                     
replace isic= 382 if sitc ==    7129 
                                     
replace isic= 384 if sitc ==    7131 
                                     
replace isic= 384 if sitc ==    7132 
                                     
replace isic= 384 if sitc ==    7133 
                                     
replace isic= 382 if sitc ==    7138 
                                     
replace isic= 382 if sitc ==    7139 
                                     
replace isic= 384 if sitc ==    7144 
                                     
replace isic= 382 if sitc ==    7148 
                                     
replace isic= 384 if sitc ==    7149 
                                     
replace isic= 383 if sitc ==    7161 
                                     
replace isic= 383 if sitc ==    7162 
                                     
replace isic= 383 if sitc ==    7163 
                                     
replace isic= 383 if sitc ==    7169 
                                     
replace isic= 381 if sitc ==    7187 
                                     
replace isic= 382 if sitc ==    7188 
                                     
replace isic= 382 if sitc ==    7211 
                                     
replace isic= 382 if sitc ==    7212 
                                     
replace isic= 382 if sitc ==    7213 
                                     
replace isic= 382 if sitc ==    7219 
                                     
replace isic= 382 if sitc ==    7223 
                                     
replace isic= 382 if sitc ==    7224 
                                     
replace isic= 382 if sitc ==    7233 
                                     
replace isic= 382 if sitc ==    7234 
                                     
replace isic= 382 if sitc ==    7239 
                                     
replace isic= 382 if sitc ==    7243 
                                     
replace isic= 382 if sitc ==    7244 
                                     
replace isic= 382 if sitc ==    7245 
                                     
replace isic= 382 if sitc ==    7246 
                                     
replace isic= 382 if sitc ==    7247 
                                     
replace isic= 382 if sitc ==    7248 
                                     
replace isic= 382 if sitc ==    7251 
                                     
replace isic= 382 if sitc ==    7252 
                                     
replace isic= 382 if sitc ==    7259 
                                     
replace isic= 382 if sitc ==    7263 
                                     
replace isic= 382 if sitc ==    7264 
                                     
replace isic= 382 if sitc ==    7267 
                                     
replace isic= 382 if sitc ==    7268 
                                     
replace isic= 382 if sitc ==    7269 
                                     
replace isic= 382 if sitc ==    7271 
                                     
replace isic= 382 if sitc ==    7272 
                                     
replace isic= 382 if sitc ==    7281 
                                     
replace isic= 382 if sitc ==    7283 
                                     
replace isic= 382 if sitc ==    7284 
                                     
replace isic= 382 if sitc ==    7361 
                                     
replace isic= 382 if sitc ==    7362 
                                     
replace isic= 382 if sitc ==    7367 
                                     
replace isic= 382 if sitc ==    7368 
                                     
replace isic= 382 if sitc ==    7369 
                                     
replace isic= 382 if sitc ==    7371 
                                     
replace isic= 382 if sitc ==    7372 
                                     
replace isic= 382 if sitc ==    7373 
                                     
replace isic= 382 if sitc ==    7411 
                                     
replace isic= 382 if sitc ==    7412 
                                     
replace isic= 382 if sitc ==    7413 
                                     
replace isic= 382 if sitc ==    7414 
                                     
replace isic= 382 if sitc ==    7415 
                                     
replace isic= 382 if sitc ==    7416 
                                     
replace isic= 382 if sitc ==    7421 
                                     
replace isic= 382 if sitc ==    7422 
                                     
replace isic= 382 if sitc ==    7423 
                                     
replace isic= 382 if sitc ==    7428 
                                     
replace isic= 382 if sitc ==    7429 
                                     
replace isic= 382 if sitc ==    7431 
                                     
replace isic= 382 if sitc ==    7434 
                                     
replace isic= 382 if sitc ==    7435 
                                     
replace isic= 382 if sitc ==    7436 
                                     
replace isic= 382 if sitc ==    7439 
                                     
replace isic= 382 if sitc ==    7441 
                                     
replace isic= 382 if sitc ==    7442 
                                     
replace isic= 382 if sitc ==    7449 
                                     
replace isic= 382 if sitc ==    7451 
                                     
replace isic= 382 if sitc ==    7452 
                                     
replace isic= 382 if sitc ==    7491 
                                     
replace isic= 382 if sitc ==    7492 
                                     
replace isic= 382 if sitc ==    7493 
                                     
replace isic= 382 if sitc ==    7499 
                                     
replace isic= 382 if sitc ==    7511 
                                     
replace isic= 382 if sitc ==    7512 
                                     
replace isic= 382 if sitc ==    7518 
                                     
replace isic= 382 if sitc ==    7521 
                                     
replace isic= 382 if sitc ==    7522 
                                     
replace isic= 382 if sitc ==    7523 
                                     
replace isic= 382 if sitc ==    7524 
                                     
replace isic= 382 if sitc ==    7525 
                                     
replace isic= 382 if sitc ==    7528 
                                     
replace isic= 382 if sitc ==    7591 
                                     
replace isic= 382 if sitc ==    7599 
                                     
replace isic= 383 if sitc ==    7611 
                                     
replace isic= 383 if sitc ==    7612 
                                     
replace isic= 383 if sitc ==    7621 
                                     
replace isic= 383 if sitc ==    7622 
                                     
replace isic= 383 if sitc ==    7628 
                                     
replace isic= 383 if sitc ==    7631 
                                     
replace isic= 383 if sitc ==    7638 
                                     
replace isic= 383 if sitc ==    7641 
                                     
replace isic= 383 if sitc ==    7642 
                                     
replace isic= 383 if sitc ==    7643 
                                     
replace isic= 383 if sitc ==    7648 
                                     
replace isic= 383 if sitc ==    7649 
                                     
replace isic= 383 if sitc ==    7711 
                                     
replace isic= 383 if sitc ==    7712 
                                     
replace isic= 383 if sitc ==    7721 
                                     
replace isic= 383 if sitc ==    7722 
                                     
replace isic= 383 if sitc ==    7723 
                                     
replace isic= 383 if sitc ==    7731 
                                     
replace isic= 362 if sitc ==    7732 
                                     
replace isic= 383 if sitc ==    7741 
                                     
replace isic= 383 if sitc ==    7742 
                                     
replace isic= 382 if sitc ==    7751 
                                     
replace isic= 382 if sitc ==    7752 
                                     
replace isic= 383 if sitc ==    7753 
                                     
replace isic= 383 if sitc ==    7754 
                                     
replace isic= 383 if sitc ==    7757 
                                     
replace isic= 383 if sitc ==    7758 
                                     
replace isic= 383 if sitc ==    7761 
                                     
replace isic= 383 if sitc ==    7762 
                                     
replace isic= 383 if sitc ==    7763 
                                     
replace isic= 383 if sitc ==    7764 
                                     
replace isic= 383 if sitc ==    7768 
                                     
replace isic= 383 if sitc ==    7781 
                                     
replace isic= 383 if sitc ==    7782 
                                     
replace isic= 383 if sitc ==    7783 
                                     
replace isic= 382 if sitc ==    7784 
                                     
replace isic= 383 if sitc ==    7788 
                                     
replace isic= 384 if sitc ==    7810 
                                     
replace isic= 384 if sitc ==    7821 
                                     
replace isic= 384 if sitc ==    7822 
                                     
replace isic= 384 if sitc ==    7831 
                                     
replace isic= 384 if sitc ==    7832 
                                     
replace isic= 384 if sitc ==    7841 
                                     
replace isic= 384 if sitc ==    7842 
                                     
replace isic= 384 if sitc ==    7849 
                                     
replace isic= 384 if sitc ==    7851 
                                     
replace isic= 384 if sitc ==    7852 
                                     
replace isic= 384 if sitc ==    7853 
                                     
replace isic= 384 if sitc ==    7861 
                                     
replace isic= 384 if sitc ==    7868 
                                     
replace isic= 384 if sitc ==    7911 
                                     
replace isic= 384 if sitc ==    7912 
                                     
replace isic= 384 if sitc ==    7913 
                                     
replace isic= 384 if sitc ==    7914 
                                     
replace isic= 384 if sitc ==    7915 
                                     
replace isic= 384 if sitc ==    7919 
                                     
replace isic= 384 if sitc ==    7921 
                                     
replace isic= 384 if sitc ==    7922 
                                     
replace isic= 384 if sitc ==    7923 
                                     
replace isic= 384 if sitc ==    7924 
                                     
replace isic= 384 if sitc ==    7928 
                                     
replace isic= 384 if sitc ==    7929 
                                     
replace isic= 384 if sitc ==    7931 
                                     
replace isic= 384 if sitc ==    7932 
                                     
replace isic= 384 if sitc ==    7933 
                                     
replace isic= 384 if sitc ==    7938 
                                     
replace isic= 381 if sitc ==    8121 
                                     
replace isic= 361 if sitc ==    8122 
                                     
replace isic= 381 if sitc ==    8124 
                                     
replace isic= 332 if sitc ==    8211 
                                     
replace isic= 385 if sitc ==    8212 
                                     
replace isic= 381 if sitc ==    8219 
                                     
replace isic= 323 if sitc ==    8310 
                                     
replace isic= 322 if sitc ==    8421 
                                     
replace isic= 322 if sitc ==    8422 
                                     
replace isic= 322 if sitc ==    8423 
                                     
replace isic= 322 if sitc ==    8424 
                                     
replace isic= 322 if sitc ==    8429 
                                     
replace isic= 322 if sitc ==    8431 
                                     
replace isic= 322 if sitc ==    8432 
                                     
replace isic= 322 if sitc ==    8433 
                                     
replace isic= 322 if sitc ==    8434 
                                     
replace isic= 322 if sitc ==    8435 
                                     
replace isic= 322 if sitc ==    8439 
                                     
replace isic= 322 if sitc ==    8441 
                                     
replace isic= 322 if sitc ==    8442 
                                     
replace isic= 322 if sitc ==    8443 
                                     
replace isic= 322 if sitc ==    8451 
                                     
replace isic= 322 if sitc ==    8452 
                                     
replace isic= 322 if sitc ==    8459 
                                     
replace isic= 322 if sitc ==    8462 
                                     
replace isic= 322 if sitc ==    8463 
                                     
replace isic= 322 if sitc ==    8465 
                                     
replace isic= 322 if sitc ==    8471 
                                     
replace isic= 322 if sitc ==    8472 
                                     
replace isic= 322 if sitc ==    8481 
                                     
replace isic= 322 if sitc ==    8482 
                                     
replace isic= 322 if sitc ==    8483 
                                     
replace isic= 322 if sitc ==    8484 
                                     
replace isic= 324 if sitc ==    8510 
                                     
replace isic= 385 if sitc ==    8710 
                                     
replace isic= 385 if sitc ==    8720 
                                     
replace isic= 385 if sitc ==    8731 
                                     
replace isic= 385 if sitc ==    8732 
                                     
replace isic= 385 if sitc ==    8741 
                                     
replace isic= 385 if sitc ==    8742 
                                     
replace isic= 385 if sitc ==    8743 
                                     
replace isic= 385 if sitc ==    8744 
                                     
replace isic= 385 if sitc ==    8745 
                                     
replace isic= 385 if sitc ==    8748 
                                     
replace isic= 385 if sitc ==    8749 
                                     
replace isic= 385 if sitc ==    8811 
                                     
replace isic= 385 if sitc ==    8812 
                                     
replace isic= 385 if sitc ==    8813 
                                     
replace isic= 352 if sitc ==    8821 
                                     
replace isic= 352 if sitc ==    8822 
                                     
replace isic= 999 if sitc ==    8830 
                                     
replace isic= 385 if sitc ==    8841 
                                     
replace isic= 385 if sitc ==    8842 
                                     
replace isic= 385 if sitc ==    8851 
                                     
replace isic= 385 if sitc ==    8852 
                                     
replace isic= 342 if sitc ==    8921 
                                     
replace isic= 342 if sitc ==    8922 
                                     
replace isic= 342 if sitc ==    8924 
                                     
replace isic= 342 if sitc ==    8928 
                                     
replace isic= 356 if sitc ==    8931 
                                     
replace isic= 356 if sitc ==    8932 
                                     
replace isic= 356 if sitc ==    8933 
                                     
replace isic= 356 if sitc ==    8935 
                                     
replace isic= 356 if sitc ==    8939 
                                     
replace isic= 384 if sitc ==    8941 
                                     
replace isic= 390 if sitc ==    8942 
                                     
replace isic= 382 if sitc ==    8946 
                                     
replace isic= 390 if sitc ==    8947 
                                     
replace isic= 381 if sitc ==    8951 
                                     
replace isic= 390 if sitc ==    8952 
                                     
replace isic= 352 if sitc ==    8959 
                                     
replace isic= 999 if sitc ==    8960 
                                     
replace isic= 390 if sitc ==    8972 
                                     
replace isic= 390 if sitc ==    8973 
                                     
replace isic= 390 if sitc ==    8974 
                                     
replace isic= 390 if sitc ==    8981 
                                     
replace isic= 390 if sitc ==    8982 
                                     
replace isic= 390 if sitc ==    8983 
                                     
replace isic= 390 if sitc ==    8989 
                                     
replace isic= 390 if sitc ==    8991 
                                     
replace isic= 352 if sitc ==    8993 
                                     
replace isic= 390 if sitc ==    8994 
                                     
replace isic= 385 if sitc ==    8996 
                                     
replace isic= 390 if sitc ==    8997 
                                     
replace isic= 390 if sitc ==    8998 
                                     
replace isic= 390 if sitc ==    8999 
                                     
replace isic= 999 if sitc ==    9310 
                                     
replace isic= 113 if sitc ==    9410 
                                     
replace isic= 382 if sitc ==    9510 
                                     
replace isic= 390 if sitc ==    9610 
                                     
replace isic= 372 if sitc ==    9710 
