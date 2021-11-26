#!/bin/bash

#SBATCH --job-name=myjob         # create a short name for your job
#SBATCH --nodes=1                # node count
#SBATCH --ntasks-per-node=28
#SBATCH --time=10:01:00          # total run time limit (HH:MM:SS)
#SBATCH --mail-type=begin        # send email when job begins
#SBATCH --mail-type=end          # send email when job ends
#SBATCH --mail-user=sah.16@osu.edu
#SBATCH --gpus-per-node=1
#SBATCH -A PAS2062

module load miniconda3

source activate /users/PAS2062/shloksah/ondemand/cse5525/project/Paraphrase-any-question-with-T5-Text-To-Text-Transfer-Transformer-/environment/my_env

python3 train.py