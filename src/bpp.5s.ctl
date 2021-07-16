          seed = -1

       seqfile = 5shet.txt
      Imapfile = Imap.5s.txt
       outfile = out.txt
      mcmcfile = mcmc.txt

*    breakpoint = 0        * 0: nothing;  1 : save;  2: read

 speciesdelimitation = 0 * fixed species tree
* speciesdelimitation = 1 0 2    * speciesdelimitation algorithm0(e)
* speciesdelimitation = 1 1 4 1 * speciesdelimitation algorithm1(a m)
*    speciestree = 0 * species tree fixed
*    speciestree = 1  0.4 0.2 0.1   * speciestree pSlider ExpandRatio ShrinkRatio

speciesmodelprior = 1  * 0: uniform LH; 1:uniform rooted trees; 2: uniformSLH; 3: uniformSRooted

  species&tree = 5  A  B  C  D  E
                    2  1  2  2  2
                 (((A, B), C), (D, E));
*                 (((A, D), C), (B, E));
         phase = 1  1  1  0  0      * 0: phased sequences, 1: diploid sequences

       usedata = 1 * 0: no data(prior); 1:seq Like
         nloci = 2 * number of data sets in seqfile

     cleandata = 0    * remove sites with ambiguity data (1:yes, 0:no)?

    thetaprior = 3 0.02   # invgamma(a, b) for theta
      tauprior = 3 0.05    # invgamma(a, b) for root tau & Dirichlet(a) for other tau's

*     locusrate = 0 2.0   # (0: No variation, 1: estimate, 2: from file) & a_Dirichlet (if 1)
*      heredity = 0 4 4   # (0: No variation, 1: estimate, 2: from file) & a_gamma b_gamma (if 1)
* sequenceerror = 0 0 0 0 0 : 0.05 1   # sequencing errors: gamma(a, b) prior

       finetune = 1: 0.1 0.1 0.1 0.1 0.1 0.1 0.1  # finetune for GBtj, GBspr, theta, tau, mix, locusrate, seqerr

         print = 1 0 0 0   * MCMC samples, locusrate, heredityscalars Genetrees
        burnin = 8000
      sampfreq = 2
       nsample = 100000
