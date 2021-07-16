          seed =  -1

       seqfile = ../examples/ChenLi2001.txt
      Imapfile = ../examples/ChenLi2001.Imap.txt
       outfile = out.txt
      mcmcfile = mcmc.txt

   speciesdelimitation = 0 * fixed species tree
*  speciesdelimitation = 1 0 2    * speciesdelimitation algorithm0 and finetune(e)
*  speciesdelimitation = 1 1 2 1  * speciesdelimitation algorithm1 finetune (a m)
*          speciestree = 1 0.4 0.2 0.1   * speciestree pSlider ExpandRatio ShrinkRatio
*    speciesmodelprior = 1  * 0: uniform LH; 1:uniform rooted trees; 2: uniformSLH; 3: uniformSRooted

  species&tree = 4  H  C  G  O
                    1  1  1  1
                 (((H, C), G), O);
*      diploid =    1  1  1  1    * 0: phased sequences, 1: unphased diploid sequences

       usedata = 1    * 0: no data (prior); 1:seq like
         nloci = 53    * number of data sets in seqfile (there are 53 loci in the data file)

     cleandata = 0    * remove sites with ambiguity data (1:yes, 0:no)?

    thetaprior = 3 0.002 e  # invgamma(a, b) for theta
      tauprior = 3 0.03    # invgamma(a, b) for root tau & Dirichlet(a) for other tau's

*     locusrate = 0 2.0   # (0: No variation, 1: estimate, 2: from file) & a_Dirichlet (if 1)
*      heredity = 0 4 4   # (0: No variation, 1: estimate, 2: from file) & a_gamma b_gamma (if 1)
* sequenceerror = 0 0 0 0 : 0.05 1   # sequencing errors: a_gamma, b_gamma

       finetune = 1: .01 .02 .03 .04 .05 .01 .01  # auto (0 or 1): MCMC step lengths

         print = 1 0 0 0   * MCMC samples, locusrate, heredityscalars Genetrees
        burnin = 8000
      sampfreq = 2
       nsample = 20000
