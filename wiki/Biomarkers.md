# Biomarkers

## Long COVID: a two-protein plasma test

> Can a small ELISA panel separate Post-COVID Syndrome from recovery objectively? Developed with clinicians and immunologists at University Hospital Cologne (Theobald et al., *Nature Immunology*, under review).

- **Panel:** from seven candidate proteins to the smallest sufficient pair, **NBL-1 + Siglec-9**, two partially independent immune axes. **Serglycin** tracks severity among patients.
- **Derivation cohort:** AUC 0.968, optimism-corrected 0.974 (Firth logistic regression, 500 bootstrap refits).
- **External validation** in an independent multi-centre cohort: **AUC 0.90**, and 0.93 with Serglycin as a third protein.
- **Stress tests:** assay-noise injection (AUC 0.977 → 0.960 at 10% CV), permutation with the protein selection repeated inside every shuffle (null median AUC 0.62), leave-one-out influence, number of controls, batch versus biology between cohorts, and confounding by sex and age.
- **Reported openly:** the decision threshold does not transfer between cohorts, so AUC is the primary metric and threshold recalibration is reported separately.

→ [longCovid_diagnostics](https://github.com/vierocka/longCovid_diagnostics)

## Equine skin microbiome: a four-family probe panel

> What shapes the skin microbiome of healthy horses, and can a handful of markers read it? 12 Norik Muránský mares, eight body sites plus an environmental control, 16S rRNA V3–V4 sequencing.

- **Body-site topology**, ground-contact versus elevated sites, drives composition, not age: 25 of 46 bacterial families differ.
- **Random forest:** out-of-bag accuracy 97.9%, AUC 0.999. Horse identity explains less than 1% of the variance (ICC < 0.01).
- **Probe panels of four families** keep that performance and are validated leave-one-horse-out and under noise injection. One uses widespread families (Deinococcaceae, Micrococcaceae, Lachnospiraceae, UCG-010), so it may carry over to other populations.

→ [norik_muransky_microbiome](https://github.com/vierocka/norik_muransky_microbiome) · manuscript in preparation
