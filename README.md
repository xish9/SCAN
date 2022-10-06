# Reducing Spurious Correlations for Answer Selection by Feature Decorrelation and Language Debiasing

This repository contains the code and data for the implementation of our paper. 

## Script

To be consistent with previous work [TANDA](https://github.com/alexa/wqa_tanda), we base our implementation on the [transformers](https://github.com/huggingface/transformers) package and use the following script to enable `scan` option for the package.

```
git clone https://github.com/huggingface/transformers.git
cd transformers
git checkout f3386 -b scan
git apply scan.diff
```

Then we can train the model by the script: train.sh.

## Data

We initailize our pre-trained language model with checkpoints from [TANDA](https://github.com/alexa/wqa_tanda). Specifically, we use 'RoBERTa-Base ASNQ'

### Datasets

#### WikiQA

Download from [here](http://aka.ms/WikiQA) and questions without correct answers are removed.

#### SelQA

Download from [here](https://github.com/emorynlp/selqa)

#### ANTIQUE

Download from [here](https://ciir.cs.umass.edu/downloads/Antique/)

All datasets are processed according to the description of our paper.


*Note: some hyper-parameters(such as lrbl, epochb, lambdap) may vary among different environments/software/hardware/random seeds, so careful tunning is needed.*
