Notes by Ziheng
1 November 2016, last edited July 2021

On Windows:

cd r1
../../bin/bpp_avx ../A00.bpp.ctl


on MAC os or linux/unix:

cd r1
..\..\bin\bpp_avx ..\A00.bpp.ctl


The files in this folder are for the tutorial of Yang (2015).  That tutorial was writtne for bpp 3, 
which uses gamma priors on theta's and tau_0.  However, the current version of bpp uses the inverse 
gamma priors, and the control files have been edited accordingly.

Some other files are for duplicating the resutls in table 6a in Huang et al. (2021), 
about different strategies for dealing with heterozygote phase.


References

Yang, Z. 2015. The BPP program for species tree estimation and species delimitation. Curr. Zool. 61:854-865.

Zhou, W. W., Y. Wen, J. Fu, Y. B. Xu, J. Q. Jin, L. Ding, M. S. Min, J. Che, and Y. P. Zhang. 2012. 
Speciation in the Rana chensinensis species complex and its relationship to the uplift of the 
Qinghai-Tibetan Plateau. Mol. Ecol. 21:960-973.

Huang J, Bennett J, Flouri T, Yang Z. 2021. Phase resolution of heterozygous sites in diploid 
genomes is important to phylogenomic analysis under the multispecies coalescent model. Syst Biol. 
10.1093/sysbio/syab047


bpp4 --cfile ../A00.ambi.ctl    &> log.A00.ambi.txt   &
bpp4 --cfile ../A00.D.ctl       &> log.A00.D.txt      &
bpp4 --cfile ../A00.phase.ctl   &> log.A00.phase.txt  &
bpp4 --cfile ../A00.random.ctl  &> log.A00.random.txt &

bpp4 --cfile ../A01.ambi.ctl    &> log.A01.ambi.txt   &
bpp4 --cfile ../A01.D.ctl       &> log.A01.D.txt      &
bpp4 --cfile ../A01.phase.ctl   &> log.A01.phase.txt  &
bpp4 --cfile ../A01.random.ctl  &> log.A01.random.txt &
