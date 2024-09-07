#!/bin/bash
#SBATCH --account=def-banire
#SBATCH --nodes=1
#SBATCH --gpus-per-node=p100:2
#SBATCH --ntasks-per-node=32
#SBATCH --mem=127000M
#SBATCH --time=7-00:00      # time (DD-HH:MM)
#SBATCH --output=%N-%j.out  # %N for node name, %j for jobID
#SBATCH --mail-type=ALL               # Type of email notification- BEGIN,END,F$
#SBATCH --mail-user=issa132@hotmail.com   # Email to which notifications will be $


nvidia-smi
module load python/3.6
source ~/jupyter1/bin/activate

python WrightFisher.py
