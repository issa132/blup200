#!/bin/bash
#SBATCH --account=def-banire
#SBATCH --cpus-per-task=16   # number of cores
#SBATCH --mem=4G            # memory for the entire job across all cores (4GB)
#SBATCH --time=7-00:00      # time (DD-HH:MM)
#SBATCH --output=%N-%j.out  # %N for node name, %j for jobID
#SBATCH --mail-type=ALL               # Type of email notification- BEGIN,END,F$
#SBATCH --mail-user=issa132@hotmail.com   # Email to which notifications will be $


module load python/3.12
source ~/jupyter1/bin/activate

python WrightFisher.py
