
          seed = 1

      treefile = mytree.tre   * comment out this line if you don't want trees
      Imapfile = myImap.txt
       seqfile = mydatafile.txt   * comment out this line if you don't want seqs
*    concatfile = concatenatedfile.txt  * comment out this line if you don't want concatenated alignment
  modelparafile = modelparas.txt   * comment out this line if you don't want this

       diploid = 0        * 0: phased sequences, 1: unphased diploid sequences
  species&tree = 4  A  B  C  D
                    5  5  5  5
   ((A #0.01, B #0.01) :0.01 #0.01, (C #0.01, D #0.01) :0.012 #0.01) :0.015 #0.01;

   loci&length = 10000 200 * number of loci & number of sites at each locus
alpha_locusrate = 50.0     * alpha for gamma for locus rate

   model = 7       * model: 0:JC69, 7:REV (GTR)
  Qrates = 0  10 5 5 5 5 10   *  1: fixed; 0: dirichlet, for TC TA TG CA CG AG
basefreqs = 0  10  10  10  10    * 0: random, Dirichlet(aT, aC, aA, aG), for base frequencies
 alpha_siterate = 0  100  20  5       * G(a, b) for alpha for sites & K for discrete gamma
    clock = 2 20   * 1: global clock; 2: independent gamma rates; 3:autocorrelated gamma rates

// end of file
