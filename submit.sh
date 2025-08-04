#!/bin/bash
#SBATCH --job-name=python_test
#SBATCH --output=python_test.out
#SBATCH --error=python_test.err
#SBATCH --time=00:01:00
#SBATCH --partition=large
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1

# Load Lmod
source /opt/apps/lmod/lmod/init/bash

# Load your Python module
module use /opt/software/manual/module
module load Python/3.1.4
iterations=300000000

# Run a Python command
python3 main.py $iterations

