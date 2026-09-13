# R ggplot2 Depth Histograms — Mariana Trench Bathymetric Profiles

R scripts that draw the depth-distribution histogram of each of the 25
cross-section bathymetric profiles of the Mariana Trench and assemble them into
a single 25-panel figure.

## Related publication

These scripts produced Figure 4 in:

Lemenkova, P. Statistical Analysis of the Mariana Trench Geomorphology Using R
Programming Language. Geodesy and Cartography 2019, 45(2), 57-84.

- DOI: https://doi.org/10.3846/gac.2019.3785
- figshare: https://doi.org/10.6084/m9.figshare.9762860
- HAL: https://hal.science/hal-02277500
- Zenodo: https://zenodo.org/record/3385005
- SSRN: https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3447481
- ISSN: 2029-6991 (Scopus)

## Scripts

- Script-01.r ... Script-25.r: one histogram per profile. Each reads Depths.csv,
  removes NA values, and builds a ggplot2 histogram (geom_histogram, binwidth
  200) overlaid with a fitted normal-distribution curve (stat_function, dnorm),
  a kernel-density curve (stat_density) and dashed mean/median lines
  (geom_vline), coloured with a ColorBrewer RdGy palette and percent y-axis.
- Script_cowplot-with-labels.r: assembles the 25 single-profile plots into one
  7x4 panel with cowplot::plot_grid and annotates it (ggpubr::annotate_figure).
- Script_common-legend.r, Script_ggpubr_common-legend.r: variants sharing one
  common legend across panels.
- load_packages.R, My-Palettes-Histograms.r: environment and palette helpers.

(Histograms_23102025.r is a later, unrelated FAOSTAT example.)

## Methods

- Histogram density estimation with fitted parametric (normal) and
  non-parametric (kernel density) overlays and central-tendency lines.
- Small-multiples composition of 25 panels (cowplot, ggpubr).

## Data

- Depths.csv: depths (m) sampled along 25 cross-section profiles of the Mariana
  Trench (one column per profile).

## Requirements

- R (>= 3.5); packages: ggplot2, cowplot, ggpubr, RColorBrewer, scales

## Author and citation

Polina Lemenkova — ORCID https://orcid.org/0000-0002-5759-1089
Cite: Lemenkova, P. Statistical Analysis of the Mariana Trench Geomorphology
Using R Programming Language. Geodesy and Cartography 2019, 45(2), 57-84.
https://doi.org/10.3846/gac.2019.3785

## License

MIT — see the LICENSE file (Copyright Polina Lemenkova).
