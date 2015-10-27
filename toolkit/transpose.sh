#!/bin/bash

awkopt='
{ 
	for (i=1; i<=NF; i++)  
	{
		a[NR,i] = $i
	}
}
NF>p { p = NF }
END {    
	for(j=1; j<=p; j++) 
	{
		str=a[1,j]
		for(i=2; i<=NR; i++)
		{
			str=str"\t"a[i,j];
		}
		print str
	}
}'

awk -F"\t" -v OFS="\t" "$awkopt" $1