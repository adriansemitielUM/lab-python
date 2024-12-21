#!/bin/bash

#SBATCH --partition=hpc-bio-pascal
#SBATCH --chdir=/home/alumno22/lab4/lab-python
#SBATCH -o python-%u.out

module load anaconda/2023.03

echo Ejecutando el notebook con $1 elementos
ipython reduc-operation-alumno22.ipynb $1

echo Ejecutando el notebook con $2 elementos
ipython reduc-operation-alumno22.ipynb $2

module unload anaconda/2023.03
