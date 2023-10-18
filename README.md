# edu-psi-seq-computation

## computation tools and scripts for edu-psi-seq

## Contents
- [Remove adapter](#Remove adapter)
- [Reads mapping](#Reads mapping)
- [Benchmarking](#Benchmarking)
- [Usage](#Usage)
  - [Ψ-site identification](#Ψ-site-identification)
    - [calculate overall reverse transcription stop information](#calculate-overall-reverse-transcription-stop-information)
    - [pre-filt overall reverse transcription stop information](#pre-filt-overall-reverse-transcription-stop-information)
    - [User-defined](#a-User-defined)
  - [Ψ-site annotation](#Ψ-site-annotation)
  - [Ψ-site target prediction](#Ψ-site-target-prediction)

### Remove adapter
RpsiFinder R package is a R API mostly for psiFinder, psiAnnotator, and psiACAscan (also include bedtools utilization for some functions). psiFinder/psiAnnotator/psiACAscan are C programs and predominantly used in unix-based operating systems. Therefore, for the usability of RpsiFinder, we recommend install RpsiFinder R package in WSL2 (WSL2 installation guide: https://pureinfotech.com/install-windows-subsystem-linux-2-windows-10/).

### Reads mapping
Test data can be downloaded from https://mega.nz/fm/public-links/YGVghDRA.

### Benchmarking

### Usage

#### Ψ-site identification

##### calculate overall reverse transcription stop information
