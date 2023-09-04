# WaveUnet Implementation for Saraga Dataset (Indian Carnatic Music)

Actual Network: https://github.com/f90/Wave-U-Net-Pytorch. Have used this as a baseline and restructured it to use the appropriate dataset.

Saraga Carnatic Dataset:

It has five stems: Mixed, Vocal, Violin, Mrindangam Right and Mrindangam Left.
Converting Mridangam left and right into a single audio file (mridangam)
Expecting Four stem outputs namely: Vocal, violin, mridangam and others


## Version 1: 4 Sources (Leakage)

> The dataset is trained to extract stems: Mrindangam Left, Mrindangam Right, Vocal and Violin.

### Results:

| Metrics | With Bleeding Effects | 
|------|-----|
|SDR| __-0.19096690404060424__|


## Version 2: 3 Sources (Leakage)

> The dataset is trained to extract Three stems: Mridangam, Vocal and Violin. This is with some minor changes in the code in data loading. The mridangal left and right are added together. Where ever there is a secondary vocal, it is added to the primary vocal. Ghatam files are removed.

### Results:

| Metrics | With Bleeding Effects | 
|------|-----|
|SDR| __1.166956417870889__ |


## Version 3: 3 Sources (Leakage Removed)

> The dataset is trained to extract stems: Mridangam (left+right), Vocal(/s) and Violin, Bleeding of the sources is reduced considerably to achieve higher performance.

### Results:


| Metrics | With Bleed | Without Bleed | 
|------|-----|-----|
|SDR| __1.166956417870889__ | |


## Standard MUSDB18HQ

> MUSDB18HQ is internally artificially bled to evaluate the performance of the effect of leakage. The actual source is maintained dominant and other sources are bled to it with a volume reduction of 10dB. Trained on [PyTorch: Wave-U-Net](https://github.com/f90/Wave-U-Net-Pytorch) network.

### Results:


| Metrics | Actual | With Bleed | After Bleed Removal | 
|------|-----|-----|-----|
|SDR| __2.309013108265547__ | __0.9656615837211856__ | __1.729928257040701__ |





