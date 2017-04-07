#! /bin/bash
#SBATCH -o TEST.out
#SBATCH --job-name=sentiAnalysis
#SBATCH --cpus-per-task=1
#SBATCH --time=1-0

module load python
pip3 install -r requirements.txt --user
python3 sentiAnalysis.py --wikiModelDir . --trainDataDir trainData --dataFileList dataFileList.txt --dataFileDir PARSED  --cpu 0
