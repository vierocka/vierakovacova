# Comparative genomics and plant immunity

> Much of my work sits under someone else's headline: the assemblies, orthogroups, phylogenies and selection analyses that a comparative or evolutionary paper rests on. This page shows that part.

## Comparative genomics: what I build

| Building block | Where it was used |
|---|---|
| **Orthogroup resources** (OrthoMCL) with false positives removed by functional-domain filtering | EDS1–SAG101–NRG1 module (*The Plant Cell* 2019), reused for plant MLKLs (*Cell Host & Microbe* 2020); orthogroup-based annotation of the milkweed bug genome (*Genome Biology* 2019) |
| **Phylogenies and presence/absence profiles** of proteins across species | *The Plant Cell* 2019, *Cell Host & Microbe* 2020 |
| **Selection analyses** (dN/dS, PAML), e.g. surface versus pocket residues of immune proteins | *The Plant Cell* 2019, crater lake cichlids (*Nature Communications* 2016) |
| **De novo and reference-guided assemblies:** genome polishing with PacBio and short reads, transcriptomes, CDS prediction, annotation | milkweed bug (*Genome Biology* 2019), five cichlid fish (*Nature Communications* 2016), *Arabidopsis halleri* (*Nature Communications* 2021), *Silene* (*Evolution* 2013, *Scientific Reports* 2019) |
| **Hybrid and divergent genomes:** assemblies, point mutations, mapping benchmarks | hybrid bacteria after horizontal gene transfer (*PNAS* 2021) |
| **Normalization benchmarks** for cross-species expression comparisons | *Drosophila* species, tissues and developmental stages (*Cell Reports* 2017) |

Earlier, at the bench and the keyboard: the evolutionary fate of a horizontally transferred agrobacterial gene in *Nicotiana* and *Linaria*, including small-RNA evidence of its regulation (*PLoS ONE* 2014, first author), and BisPrimer, a primer-design tool for bisulfite sequencing that I wrote for my wet-lab colleagues (*Journal of Heredity* 2012, first author).

## Grapevine resistance to downy mildew

> How does stacking resistance loci change the early immune response? Senior and corresponding author, with Mendel University Brno.

- **Data:** 36 time-resolved transcriptomes of grapevine carrying one, two or three *Rpv* resistance loci and a susceptible control, inoculated with *Plasmopara viticola* (0, 6 and 24 h).
- **Analysis:** read-statistics batch QC ([QC and retrospective validation](QC-and-Retrospective-Validation)), DESeq2, co-expression networks, and an aggregated expression-divergence metric calibrated on independent public datasets.
- **Structure screen:** AlphaFold2-Multimer on ~3,380 candidate receptor pairs, reduced to 64 that pass a strict five-model criterion. A predicted LRIP1/SOBIR1-centred receptor network emerges.
- **Open data:** NCBI BioProject PRJNA1358055, Zenodo, and an [interactive Shiny app](https://vierakovacova.shinyapps.io/playing_with_immunity/). → [plant_immunity_Vitis](https://github.com/vierocka/plant_immunity_Vitis) · [preprint](https://doi.org/10.1101/2025.11.27.690962)

My part in every paper: [Publications](Publications).
