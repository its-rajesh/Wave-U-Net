# WaveUnet Implementation for Saraga Dataset (Indian Carnatic Music)

Actual Network: https://github.com/f90/Wave-U-Net-Pytorch. Have used this as baseline and restructured to use the appropriate dataset.

Saraga Carnatic Dataset:

It has five stems: Mixed, Vocal, Violin, Mrindangam Right and Mrindangam Left.
Converting Mrindangam left and right into single audio file (mrindangam)
Expecting Four stem output namely: Vocal, violin, mrindangam and others


## Version 1: 4 Sources (Leakage)

> The dataset is trained to extract stems: Mrindangam Left, Mrindangam Right, Vocal and Violin.

### Results:

| Metrics | With Bleeding Effects | 
|------|-----|
|SDR| __-0.19096690404060424__|


## Version 2: 3 Sources (Leakage)

> The dataset is trained to extract Three stems: Mrindangam, Vocal and Violin. This is with some minor changes in the code in data loading. The mridangal left and right is added together. Where ever there is secondary vocal, it is added with primary vocal. Ghatam files are removed.

### Results:

| Metrics | With Bleeding Effects | 
|------|-----|
|SDR| __1.166956417870889__ |


## Version 3: 3 Sources (Leakage Removed)

> The dataset is trained to extract stems: Mrindangam (left+right), Vocal(/s) and Violin, Bleeding of the sources is reduced considerably to achieve higher performance.

### Results:


| Metrics | With Bleed | Without Bleed | 
|------|-----|-----|
|SDR| __1.166956417870889__ | |


## Standard MUSDB18HQ

> MUSDB18HQ is internally artificially bleeded to evaluate the performance on the effect on leakage. Source is maintained dominant and other sources is bleeded to it with a volume reduction of 20dB. Trained on [PyTorch: Wave-U-Net](https://github.com/f90/Wave-U-Net-Pytorch) network.

### Results:


| Metrics | With Bleed | Without Bleed | 
|------|-----|-----|
|SDR|  | __2.309__ |

