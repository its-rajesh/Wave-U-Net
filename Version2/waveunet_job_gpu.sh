#!/bin/bash 
#PBS -o out.o
#PBS -e out.e
#PBS -N myjob
#PBS -j oe
#PBS -l nodes=1:ppn=1
#PBS -V

cd ${PBS_O_WORKDIR}
echo "Running on: " 
cat ${PBS_NODEFILE}
cat $PBS_NODEFILE > machines.list
echo "Program Output begins: " 

source $HOME/anaconda3/bin/activate waveunet
#conda activate waveunet
python /DATA1/rajeshr/project/Saraga3WaveUNet/train.py --dataset_dir /DATA1/rajeshr/project/Datasets/Saraga3stem --cuda --num_workers=0 --load_model checkpoints/waveunet/checkpoint_80850 > pgm_out.o

echo "Program Output ends: " 
