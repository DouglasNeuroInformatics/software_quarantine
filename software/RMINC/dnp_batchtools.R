cluster.functions <-
  makeClusterFunctionsSlurm("/opt/quarantine/software/RMINC/slurm_script.tmpl")

default.resources <-
  list(memory = "2G"
     , walltime = 7200
     , ntasks = 1
     , ncpus = 1)
