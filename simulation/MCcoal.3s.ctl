
          seed = -123

       seqfile = mydatafile.txt   * comment out this line if you don't want seqs
      treefile = mytree.tre   * comment out this line if you don't want trees
      Imapfile = myImap.txt
*    concatfile = concatenatedfile.txt  * comment out this line if you don't want concatenated alignment

  species&tree = 3  A  B  C
                    1  1  1
 ((A #0.01, B #0.01) :0.02 #0.01, C #0.01) :0.03 #0.01;
* ((A #0.04, B #0.04) :0.02 #0.04, C #0.04) :0.03 #0.04;
* ((A #0.01, B #0.01) :0.02 #0.01, C #0.01) :0.03 #0.01;

   loci&length = 1000 500 * number of loci & number of sites at each locus
*     locusrate = 0.5     * alpha for gamma for locus rate
