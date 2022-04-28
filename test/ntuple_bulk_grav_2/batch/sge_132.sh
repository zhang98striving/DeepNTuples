
#!/bin/sh
#
#(make sure the right shell will be used)
#$ -S /bin/sh
#$ -l site=hh
#$ -l distro=sld6
#
#(the cpu time for this job)
#$ -l h_rt=05:55:00
#
#(the maximum memory usage of this job)
#$ -l h_vmem=4096M
#$ -l cvmfs
#(stderr and stdout are merged together to stdout)
#$ -j y
#$ -m a
#$ -cwd -V
#( -l h_stack=1536M) #try with small stack
#$ -pe local 1 -R y
#$ -P af-cms

export LOGDIR=/afs/cern.ch/work/a/ademoor/CMSSW_10_6_30/src/DeepNTuples/test/ntuple_bulk_grav_2/batch/
export JOB=132
export NTUPLEOUTFILEPATH=/eos/cms/store/group/phys_btag/PHM_tagger/Data_PHM_UL17/Sat_135511_test/ntuple_bulk_grav_2/output/ntuple_bulk_grav_2_132.root

/afs/cern.ch/work/a/ademoor/CMSSW_10_6_30/src/DeepNTuples/test/ntuple_bulk_grav_2/batchscript.sh /afs/cern.ch/work/a/ademoor/CMSSW_10_6_30/src/DeepNTuples/test/DeepNtuplizer.py inputScript=BulkGravitonToHHTo4QMX600to6000MH15to250part2TuneCP513TeVmadgraphpythia8RunIISummer19UL17MiniAODv2multigridpack106Xmc2017realisticv9v1MINIAODSIM nJobs=180 job=132 
            