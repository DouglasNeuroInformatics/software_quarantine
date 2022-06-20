mamba search 'r-*' | grep -E -o '^r-\S*' | sort | uniq > all-packages 
mamba search 'bioconductor-*' | grep -E -o '^bioconductor-\S*' | sort | uniq  >> all-packages
