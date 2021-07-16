          seed = -1

       seqfile = mydatafile.txt   * comment out this line if you don't want seqs
      treefile = mytree.tre   * comment out this line if you don't want trees
      Imapfile = Imap.txt

  species&tree = 4  A  B  C  D
                    2  2  2  2
   (((A #0.01, B #0.01) :0.01 #0.01, C #0.02) :0.02 #0.01, D #0.01) :0.03 #0.01;

   loci&length = 100 10000   * number of loci & number of sites at each locus
*     locusrate = 2            * alpha for gamma for locus rate

// end of file
