# Mappability and immunopeptidomics

> Short-read RNA-seq does not quantify every transcript equally well. I measure where it fails, correct what can be corrected, and pass the corrected expression into HLA-I peptide prediction, a cheaper first step before mass-spectrometry immunopeptidomics.

## Which transcripts can short reads quantify?

- Reads simulated from every MANE Select transcript are mapped back across references, read lengths and modes. The share that maps uniquely is the transcript's **uniqueness factor**.
- About **92–93%** of MANE transcripts are "easy": a standard pipeline already gives the right number.
- The remaining ~1,500 fall into a few classes, each with its own rule: reads inflated by pseudogenes, genes deflated by a near-identical MANE partner or paralog, internal repeats, and alternative-haplotype or patch loci. Non-coding and pseudoautosomal transcripts that cannot be quantified per copy are excluded.
- The tools fail in opposite directions. Alignment-based counting discards multimappers (signal loss). Pseudoaligners push reads from unannotated sources onto the nearest indexed transcript (signal inflation).
- Exclusions shift everyone else's TPM: in one total-RNA cell line, excluded snRNAs had absorbed about 40% of the raw TPM.

→ [mappability-correction](https://github.com/vierocka/mappability-correction), including the HLA/APM locus map and HLA sequence-identity analyses.

## From bulk RNA to the HLA-I peptidome

- I build the expression side of *Predicting the antigenic peptidome* (Collesano, Morán-Tovar, Kovacova, Łuksza, Lässig; APS Global Physics Summit 2026). It covers three cell lines with published immunopeptidomes (JY, HCC1937, HCT116).
- **Pipeline:** uniqueness-corrected counts → allele-level HLA expression from personalised HLA references → HLA and TAP tables → 9-mer peptide abundance per transcript.
- **Why:** to rank presentable peptides from routine bulk RNA-seq before paying for mass spectrometry.

## Reads that pipelines discard

Unmapped reads are not only noise. In inflammatory bowel disease transcriptomes I assemble them de novo (SPAdes, Augustus), annotate the predicted proteins (Pfam, BLAST) and score HLA binding. A first pass recovered 395 protein-coding genes. The working hypothesis: some transcripts that look "down-regulated" in standard DE results simply fail to map.
