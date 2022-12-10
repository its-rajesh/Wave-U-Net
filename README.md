# WaveUnet Implementation for Saraga Dataset (Indian Carnatic Music)

Actual Network: https://github.com/f90/Wave-U-Net-Pytorch [![status](https://joss.theoj.org/papers/571753bc54c5d6dd36382c3d801de41d/status.svg)](https://github.com/f90/Wave-U-Net-Pytorch) 


Saraga Carnatic Dataset:

It has five stems: Mixed, Vocal, Violin, Mrindangam Right and Mrindangam Left.
Converting Mrindangam left and right into single audio file (mrindangam)
Expecting Four stem output namely: Vocal, violin, mrindangam and others


## Version 1

> The dataset is trained to extract stems: Mrindangam Left, Mrindangam Right, Vocal and Violin.

### Results:

- With Bleeding (Actual Dataset)

SDR: -0.19096690404060424

- Without Bleeding (Bleeding Removed Dataset)

SDR:


## Version 2

> The dataset is trained to extract stems: Mrindangam Left, Mrindangam Right, Vocal and Violin. This is with some major changes in the code in data loading.

### Results:

- With Bleeding (Actual Dataset)

SDR: 

- Without Bleeding (Bleeding Removed Dataset)

SDR:


## Version 3

> The dataset is trained to extract stems: Mrindangam (left+right), Vocal, Violin and Others

### Results:

- With Bleeding (Actual Dataset)

SDR: 

- Without Bleeding (Bleeding Removed Dataset)

SDR:


