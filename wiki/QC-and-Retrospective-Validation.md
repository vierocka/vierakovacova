# QC and retrospective validation

> Before any model, I check whether the samples are technically comparable, using statistics the pipeline has already produced. It costs minutes, and it decides which old data can be reused instead of re-sequenced.

## Read statistics caught a batch effect before DE (grapevine, 36 libraries)

Two sequencing batches. Before touching expression values, four read-level metrics were tested between batches (GLMs, Benjamini–Hochberg FDR):

| Metric | FDR | Reading |
|---|---|---|
| Forward-only surviving reads | 0.003 | batches differ |
| Dropped (unmapped) reads | 0.004 | batches differ |
| Reverse-only surviving reads | 0.014 | batches differ |
| Both mates surviving | 0.077 | similar |

Overall quality was comparable, but the unpaired and dropped fractions pointed to fragmentation or library-preparation differences. Batch correction therefore came first, before any biological claim. Re-running the original analysis with DESeq2 later recovered 95.8% of the earlier DE set (3,403 of 3,553 genes). → [plant_immunity_Vitis](https://github.com/vierocka/plant_immunity_Vitis)

## An old library left out instead of averaged in (HCC1937 cell line)

| | Two newer replicates | Older public library |
|---|---|---|
| Both mates kept after trimming | 89.5 / 89.3% | **76.1%** |
| Forward-only reads | 6.4 / 6.4% | **14.4%** |
| Dropped reads | 2.3 / 2.3% | **6.0%** |
| STAR unmapped, too short | 14% | **35%** |

The older run shows the signature of fragmented input RNA or a different protocol, and its expression shifts systematically: *B2M* is 1,088 TPM against 4,314–5,683 TPM in the newer replicates. Averaging it in would have mixed a batch effect into the cell-line mean.

## A public benchmark as a teaching case (*Arabidopsis*, Froussios et al. 2019)

Seventeen replicates of one genotype make every DE call testable:

- The rRNA fraction varies about 25-fold between replicates (1.3–31.2%), yet every sample correlates with the others at r ≈ 0.997. A high correlation does not prove equal library composition.
- One same-batch 3-vs-3 split gives **689 "DE" genes**. Across all 70 possible splits the median is 4 and the maximum 1,600, so the replicates carry structure of their own.
- A fold-change cutoff alone calls 2,098–2,448 genes in splits with no designed difference, almost all at a handful of reads. Shrunken fold changes, or significance and effect size combined, remove most of them.

→ [Froussios2019_batch_effect_series](https://github.com/vierocka/Froussios2019_batch_effect_series), one folder per post of my LinkedIn series.

## Retrospective validation elsewhere

- **Diagnostics:** a long COVID model locked on one cohort and then tested on an independent one ([Biomarkers](Biomarkers)).
- **Noise floors:** a new divergence metric calibrated on independent public datasets before it was trusted on our own ([Comparative genomics and plant immunity](Comparative-Genomics-and-Plant-Immunity)).
- **Degradation:** what happens to DE when sample quality differs between groups ([RNA degradation and false DE](RNA-Degradation-and-False-DE)).
