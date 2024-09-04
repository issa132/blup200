#!/bin/bash
#SBATCH --account=def-banire
#SBATCH --gres=gpu:1        # request GPU "generic resource"
#SBATCH --cpus-per-task=16   # maximum CPU cores per GPU request: 6 on Cedar, 16 on Graham.
#SBATCH --mem=12G           # memory per node
#SBATCH --time=7-00:00      # time (DD-HH:MM)
#SBATCH --output=%N-%j.out  # %N for node name, %j for jobID
#SBATCH --mail-type=ALL               # Type of email notification- BEGIN,END,F$
#SBATCH --mail-user=issa132@hotmail.com   # Email to which notifications will be $


module load python/3.6
source ~/jupyter1/bin/activate

python train_model_tcn.py
