seed = -1

seqfile = mydatafile-2k-a.txt
Imapfile = Imap.3s.txt
outfile = out.txt
mcmcfile = mcmc.txt
speciesdelimitation = 0 * fixed species delimitation
* speciesdelimitation = 1 0 2 * species delimitation rjMCMC algorithm0 and finetune(e)
* speciesdelimitation = 1 1 2 1 * species delimitation rjMCMC algorithm1 finetune (a m) * speciestree = 1 0.4 0.2 0.1 * speciestree pSlider ExpandRatio ShrinkRatio speciestree = 0 * fixed species tree speciesmodelprior = 1 * 0: uniform LH; 1:uniform rooted trees; 2: uniformSLH; 3: uniformSRooted

species&tree = 3  A  B  C
                  1  1  1 
                ((A, B),C);

usedata = 1 * 0: no data (prior); 1:seq like
nloci = 2000 * number of data sets in seqfile

cleandata = 0 * remove sites with ambiguity data (1:yes, 0:no)?
heredity = 2 heredity.txt # (0: No variation, 1: estimate, 2: from file) & a_gamma b_gamma

thetaprior = 3 0.02 e # invgamma(a, b) for theta
tauprior = 3 0.05 # invgamma(a, b) for root tau & Dirichlet(a) for other tau's
finetune = 1: .5 .01 .001 .001 .02 .01 .01 # auto (0 or 1): MCMC step lengths

print = 1 0 0 0 * MCMC samples, locusrate, heredityscalars, Genetrees
burnin = 8000
sampfreq = 1
nsample = 100000
threads = 8 1 1
