
          seed = 1

      treefile = mytree.tre   * comment out this line if you don't want trees
      Imapfile = myImap.txt
       seqfile = mydatafile.txt   * comment out this line if you don't want seqs
*    concatfile = concatenatedfile.txt  * comment out this line if you don't want concatenated alignment
  modelparafile = modelparas.txt   * comment out this line if you don't want seqs

       diploid = 0        * 0: phased sequences, 1: unphased diploid sequences
  species&tree = 4  A  B  C  D
                    5  5  5  5
   ((A #0.01, B #0.01) :0.01 #0.01, (C #0.01, D #0.01) :0.012 #0.01) :0.015 #0.01;

   loci&length = 10000 200 * number of loci & number of sites at each locus
alpha_locusrate = 50.0     * alpha for gamma for locus rate

   model = 7       * model: 0:JC69, 7:REV (GTR)
  Qrates = 1  2 1 1 1 1 2   *  1: fixed; 0: dirichlet, for TC TA TG CA CG AG
 basefreqs = 1 0.15 0.35 0.15 0.35    * 1: fixed; 10: dirichlet alpha.  Base frequencies are for T C A G.
* alpha_siterate = 1  5.6 5              * 1: alpha fixed at 5.6 K = 5 discrete categories
    clock = 1   * 1: global clock; 2: independent rates;

// end of file
