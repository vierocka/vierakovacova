# Viera Kovacova, PhD

**Computational biologist** · Co-PI, Evolutionary Bioinformatics, [CRC 1310 "Predictability in Evolution"](https://crc1310.uni-koeln.de/project-z3.html) · University of Cologne

[![Wiki](https://img.shields.io/badge/wiki-project_pages-24292F?logo=github&logoColor=white)](https://github.com/vierocka/vierakovacova/wiki)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-connect-0A66C2)](https://www.linkedin.com/in/viera-kovacova-35927877)
[![ORCID](https://img.shields.io/badge/ORCID-0000--0003--4581--4254-A6CE39?logo=orcid&logoColor=white)](https://orcid.org/0000-0003-4581-4254)
[![Google Scholar](https://img.shields.io/badge/Google_Scholar-publications-4285F4?logo=googlescholar&logoColor=white)](https://scholar.google.com/citations?user=Tz7QKnAAAAAJ)
[![Email](https://img.shields.io/badge/email-viera.kovacova.ml%40gmail.com-555555?logo=gmail&logoColor=white)](mailto:viera.kovacova.ml@gmail.com)

15+ years of genomics, transcriptomics, microbiome and plasma-protein data, from plants to patients. I co-lead the central bioinformatics unit of a DFG Collaborative Research Centre that supports 15+ groups in theoretical physics, experimental biology and translational medicine; before that I headed bioinformatics R&D at a molecular-diagnostics company through the pandemic. Publications in *The Plant Cell*, *Genome Biology*, *PNAS*, *Nature Communications*, *Cell Host & Microbe* and *Cell Reports* (1,100+ citations, h-index 15, Oct 2026).

My first question is what the data can actually support. Cheap checks come before expensive conclusions, and a model counts only once it passes a validation it was not tuned on.

## What I bring

- **Cheap QC first.** Routine read statistics (pairs surviving trimming, unmapped and too-short reads, rRNA fraction) show whether samples are comparable before any DE test. In grapevine RNA-seq they exposed a sequencing-batch effect up front; in a first test on a public human degradation series, two of them used as covariates cut false-positive DE calls from 9,989 to 172. [→ more](https://github.com/vierocka/vierakovacova/wiki/RNA-Degradation-and-False-DE)
- **Retrospective validation.** Before new samples are bought, I test what existing data can support: old analyses re-run with current methods, noise floors calibrated on independent public data, models checked on external cohorts. Teaching case: [same genotype, same batch, 689 "DE" genes](https://github.com/vierocka/Froussios2019_batch_effect_series). [→ more](https://github.com/vierocka/vierakovacova/wiki/QC-and-Retrospective-Validation)
- **Biomarker prediction.** Long COVID: two plasma proteins reach an external AUC of 0.90 (0.93 with a third) in an independent multi-centre cohort, stress-tested for overfitting, assay noise and sex/age confounding. Equine skin microbiome: four bacterial families classify body-site type, validated leave-one-horse-out. [→ more](https://github.com/vierocka/vierakovacova/wiki/Biomarkers)
- **Cheaper routes from bulk RNA to immunopeptidomics.** Uniqueness factors flag the ~1,500 MANE transcripts (7.5%) that short reads cannot quantify cleanly, so long reads can be targeted where they matter. The corrected expression feeds HLA-I peptide prediction, so candidates can be ranked before costly mass spectrometry. [→ more](https://github.com/vierocka/vierakovacova/wiki/Mappability-and-Immunopeptidomics)
- **Comparative genomics across organisms.** De novo genome and transcriptome assemblies, orthogroup resources with domain-based filtering, phylogenetics and dN/dS selection models, behind papers in *The Plant Cell*, *Genome Biology* and *Nature Communications*. Organisms so far: human, mouse, horse, grapevine, *Arabidopsis*, *Silene*, *Drosophila*, milkweed bug, cichlid fish, bacteria, SARS-CoV-2. [→ more](https://github.com/vierocka/vierakovacova/wiki/Comparative-Genomics-and-Plant-Immunity)
- **Lean databases, guided AI coding.** PhAMiG / QRes DB holds raw microbial growth curves (12,965 datasets, 30 species) and runs five fitting tools on identical preprocessing; a second app manages booking and stock for the consortium's shared Nanopore GridION. I define the data model, rules and regression tests, and review what the AI writes. [→ more](https://github.com/vierocka/vierakovacova/wiki/Data-Infrastructure)
- **Between theory and the bench.** I prepare data and fit models with theoretical physicists (*Cell Reports* 2017, *PNAS* 2021, peptidome prediction). At MultiplexDX I designed primers and ran the in-silico checks for SARS-CoV-2 RT-qPCR and LAMP tests, including those required for US and Canadian regulatory submissions. [→ more](https://github.com/vierocka/vierakovacova/wiki/CRC-1310-Central-Bioinformatics)

## Problems I take on

| If you are asking… | I start with… |
|---|---|
| Can this old or public dataset still be used? | A read-level QC audit and a keep / correct / drop decision per sample, before anyone re-sequences |
| Are these DE genes real? | Batch structure, normalization sensitivity, effect-size rules, degradation imbalance and the mappability of the genes in question |
| Will this biomarker panel hold up? | The smallest sufficient panel, optimism-corrected performance, a locked external validation, and stress tests including sex and age |
| Can expression of immune genes or gene families be trusted? | Transcript uniqueness, HLA-aware quantification, and the list of loci that need long reads |
| A non-model organism without a good reference? | De novo assembly, orthogroup-based annotation, phylogenetics and selection analyses |
| Data scattered across folders and spreadsheets? | A lean database with metadata rules and a web front end, built quickly with guided AI coding |

How I work on each, with examples: [wiki → Working with me](https://github.com/vierocka/vierakovacova/wiki/Working-With-Me)

## Selected repositories

| Repository | What it shows | Stack |
|---|---|---|
| [PhAMiG](https://github.com/vierocka/PhAMiG) | Public database of raw microbial growth curves, with side-by-side benchmarking of curve-fitting tools | R/Shiny, DuckDB, Julia |
| [longCovid_diagnostics](https://github.com/vierocka/longCovid_diagnostics) | Plasma-protein diagnostic model for Post-COVID Syndrome: Firth regression, optimism bootstrap, external validation, stress tests | R |
| [plant_immunity_Vitis](https://github.com/vierocka/plant_immunity_Vitis) | 36 time-resolved grapevine transcriptomes: batch QC, DE, co-expression networks, AlphaFold2-Multimer PPI screen · [Shiny app](https://vierakovacova.shinyapps.io/playing_with_immunity/) | R, Python, STAR, DESeq2 |
| [norik_muransky_microbiome](https://github.com/vierocka/norik_muransky_microbiome) | Skin microbiome of draught mares: random-forest classifier and diagnostic probe panel | QIIME2, R, PICRUSt2 |
| [mappability-correction](https://github.com/vierocka/mappability-correction) | Which transcripts short-read RNA-seq can and cannot quantify, with a focus on the HLA/APM locus | STAR, kallisto, Python |
| [Froussios2019_batch_effect_series](https://github.com/vierocka/Froussios2019_batch_effect_series) | Step-by-step series on batch effects, normalization and false-positive DE in a public dataset | Bash, STAR, DESeq2 |

## Now

- **Can unequal RNA degradation fake differential expression?** Ground-truth simulations and public data from six organisms, turned into gated QC: are the samples comparable, and is the read signal still interpretable? [→ wiki](https://github.com/vierocka/vierakovacova/wiki/RNA-Degradation-and-False-DE)
- **Expression side of *Predicting the antigenic peptidome*** (with the Lässig and Łuksza groups): uniqueness-aware quantification, allele-level HLA expression and 9-mer abundance tables. [→ wiki](https://github.com/vierocka/vierakovacova/wiki/Mappability-and-Immunopeptidomics)
- **Reads that pipelines discard:** unmapped RNA-seq reads from inflammatory bowel disease, assembled to test what "missing" transcripts mean for DE results and antigen presentation.

## Background

- **2026–** Co-PI, Evolutionary Bioinformatics (Z03), CRC 1310 (DFG), University of Cologne
- **2018–2020, 2022–2025** Lead Bioinformatician, University of Cologne (CRC 1310)
- **2020–2021** Head of Bioinformatics in R&D, MultiplexDX, Bratislava (contractor 2022–2023): SARS-CoV-2 RT-qPCR and LAMP test design, breast-cancer diagnostics, PRACE SHAPE HPC grant
- **2014–2018** Bioinformatician, CECAD, University of Cologne
- **2017** PhD, General and Molecular Genetics, Masaryk University & Czech Academy of Sciences, Brno
- **2010** MSc and BSc, Biotechnology, Brno University of Technology

<details>
<summary><b>Selected publications</b>, with my part in each</summary>

- Lapin, **Kovacova**, Sun et al. (2019) A coevolved EDS1–SAG101–NRG1 module mediates cell death signaling by TIR-domain immune receptors. *The Plant Cell*. Shared first authorship. [PubMed](https://pubmed.ncbi.nlm.nih.gov/31311833/)<br>*My part:* orthogroup resource with domain-based filtering, phylogenetics, presence/absence profiles and dN/dS models.
- Panfilio, Vargas Jentzsch, Benoit et al., incl. **Kovacova** (2019) Molecular evolutionary trends and feeding ecology diversification in the Hemiptera, anchored by the milkweed bug genome. *Genome Biology*. [Open access](https://wrap.warwick.ac.uk/id/eprint/115066)<br>*My part:* assembly polishing with PacBio and short reads, domain prediction and orthogroup-based annotation.
- Power, Pinheiro, Pompei, **Kovacova** et al. (2021) Adaptive evolution of hybrid bacteria by horizontal gene transfer. *PNAS*. [PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC7958396/)<br>*My part:* all bioinformatics, from hybrid genome assemblies to point mutations and transcriptomics.
- Nourmohammad, Rambeau, Held, **Kovacova**, Berg, Lässig (2017) Adaptive evolution of gene expression in *Drosophila*. *Cell Reports*. [PubMed](https://pubmed.ncbi.nlm.nih.gov/28793262/)<br>*My part:* RNA-seq processing and a comparison of normalization methods across species, tissues and developmental stages.
- Boršová, Paul, **Kovacova** et al. (2021) Surveillance of SARS-CoV-2 lineage B.1.1.7 in Slovakia using a novel, multiplexed RT-qPCR assay. *Scientific Reports*. Shared first authorship. [PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC8516907/)<br>*My part:* all bioinformatics and the primer design, from SARS-CoV-2 alignments to specificity and secondary-structure checks.
- Szobi et al., incl. **Kovacova** (2023) Vivid COVID-19 LAMP is an ultrasensitive, quadruplexed test using LNA-modified primers and a zinc ion and 5-Br-PAPS colorimetric detection system. *Communications Biology*. [PMC](https://pmc.ncbi.nlm.nih.gov/articles/PMC9979146/)<br>*My part:* primer design and the in-silico sequence analyses for US and Canadian regulatory submissions.

All papers, preprints and talks, each with my part: [wiki → Publications](https://github.com/vierocka/vierakovacova/wiki/Publications)

</details>

## Mentoring, teaching and outreach

- **Mentoring:** I mentor researchers across the consortium's groups, from experimental design to the final statistics.
- **Teaching:** invited lecturer, [CodeBridge College](https://codebridgecollege.com/) Biomed Data School, Bratislava (2025–2026) · CRC 1310 winter school · a full-day RNA-seq workshop for virologists and bacteriologists · bioinformatics tutor for women starting in IT, Aj Ty v IT (2020–2023)
- **Science communication:** #TransparentScience on [LinkedIn](https://www.linkedin.com/in/viera-kovacova-35927877) (2026–), reanalyses of public data that show where RNA-seq methods mislead, written for students and early-career researchers

## Also

- **Funding:** DFG (CRC 1310 Z03, co-PI) · CRC 1310 Young Researcher Grant · PacBio & Zymo SMRT Grant · PRACE SHAPE HPC · EMBO short-term fellowship
- **Toolbox:** R (Bioconductor, Shiny), Python, Julia, Bash/regex, Nextflow, Slurm/HPC, Git, DuckDB · Trimmomatic, STAR, kallisto, featureCounts, DESeq2, WGCNA, QIIME2, SPAdes, OrthoMCL, PAML, HMMER, AlphaFold2-Multimer · GLMs and mixed models, Firth regression, random forests, bootstrap and permutation validation
- **Languages:** Slovak (native), English (fluent), German and Hungarian (intermediate)

**Get in touch:** [LinkedIn](https://www.linkedin.com/in/viera-kovacova-35927877) is the quickest way to reach me · [email](mailto:viera.kovacova.ml@gmail.com) · Cologne, Germany
