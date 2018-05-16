#!/bin/bash
#SBATCH -J sowh_phy                               # Job name 
#SBATCH -n 8                                    # number of ranks
#SBATCH -c 1                                    #number of threads
#SBATCH -t 7-00:00:00                             # Runtime in DD-HH:MM
#SBATCH --mem-per-cpu 20GB                             # Memory for all cores in Mbytes (--mem-per-cpu for MPI jobs)
#SBATCH -p shared                     # Partition general, serial_requeue, unrestricted, interact
#SBATCH --mail-type=END
##SBATCH --mail-user=church@g.harvard.edu

source activate sowhat_Oct10

module load perl # version 3.2.0
module load R # version v5.10.1

export incommand=$(grep -h "raxml" raxml*t1* | sed -n "${SLURM_ARRAY_TASK_ID}p")

$incommand
