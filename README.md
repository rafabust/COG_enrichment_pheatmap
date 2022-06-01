# COG_enrichment_pheatmap
Obtain the number of genes of each COG category for a file generated with eggNOG mapper and then plot a heatmap

After obtaining the results of eggNOG mapper an awk/Perl script is used to obtain the count table of number of genes present for each category, then using R and the ´pheatmap´library you can plot a heatmap in which you can see clusterized COG categories.

