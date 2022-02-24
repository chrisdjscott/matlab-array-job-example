#!/bin/bash
#SBATCH --job-name=test
#SBATCH --time=00:01:00
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --array=1-20
## Important: adjust the above --array option to be 1-<total_number_of_jobs_in_array>

ml purge
ml MATLAB/2021a

# call matlab function with SLURM_ARRAY_TASK_ID as argument,
#  which will have a different value for each job in the array
matlab -nodisplay -r "array_job_entry($SLURM_ARRAY_TASK_ID)"
