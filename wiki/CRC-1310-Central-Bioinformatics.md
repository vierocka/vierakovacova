# CRC 1310: central bioinformatics (Z03)

> **Co-PI since 2026**, with Andreas Beyer and Michael Lässig, of the bioinformatics unit of the DFG Collaborative Research Centre 1310 [*Predictability in Evolution*](https://crc1310.uni-koeln.de/project-z3.html). The centre studies fast-evolving systems (drug-resistant bacteria, viruses, immune repertoires, cancer cells) with experimental and theoretical groups side by side.

## What the unit does

- **Data processing and statistics** for most projects of the consortium (A1, A3, A4, A5, A7, B1, B2, C1, C2, Z2), with pipelines kept comparable across projects and years.
- **De novo assembly** of evolved and clinically relevant bacteria; research data management following FAIR principles.
- **High-throughput evolution experiments:** barcode lineage tracking (with Z2 and project area A), a standardised pipeline for distributions of fitness effects, deep-mutational-scanning analysis of viral escape.
- **QRes / PhAMiG**, the consortium's public dose-response and growth-curve database (see [Data infrastructure](Data-Infrastructure)).
- **Low-threshold training and consulting**, from experimental design to the final statistics.

## Example: mapping reads to a reference they no longer match

Hybrid bacteria that took up foreign DNA by horizontal gene transfer ([PNAS 2021](https://pmc.ncbi.nlm.nih.gov/articles/PMC7958396/)) diverge from any reference genome. To set the alignment parameters, I simulated 100-bp reads from a 5-Mb bacterial genome evolved by point mutations (0–10% divergence, no indels or sequencing errors) and mapped them back to the ancestral reference with STAR.

![Uniquely mapped reads against allowed mismatches per 100 bp, at 0 to 10% divergence](https://raw.githubusercontent.com/vierocka/vierakovacova/main/assets/mapping_divergence_benchmark.jpg)

Unique mapping stays near 100% up to about 2.5% divergence and drops sharply from 5%, where only relaxed mismatch thresholds recover it. The benchmark fixed the parameters and, where needed, a reference adjustment for the hybrid-bacteria analyses.

## Between theory and the bench

Requests usually come from a blackboard or a bench. A theory group needs clean, comparable inputs before fitting a model. An experimental group needs to know what its design can detect before it runs. Examples: gene-expression evolution in *Drosophila* ([Cell Reports 2017](https://pubmed.ncbi.nlm.nih.gov/28793262/)), the hybrid bacteria above, and HLA-I peptidome prediction ([Mappability and immunopeptidomics](Mappability-and-Immunopeptidomics)).
