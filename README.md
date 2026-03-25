\# Brain-Slice-Segmentation

\*\*Automated Extraction of Coronal Murine Brain Sections from Whole-Slide Images\*\*



\## 1. Project Objective

This repository provides a high-throughput pipeline for segmenting and extracting individual brain slices from large whole-slide DAPI images. It is designed to prepare sections for anatomical registration (e.g., via \*\*DeepSlice\*\* or \*\*BrainGlobe\*\*).







\## 2. Key Features

\* \*\*Interactive UI:\*\* Uses `ipywidgets` to tune segmentation sensitivity in real-time.

\* \*\*Anatomical Sorting:\*\* Automatically reorders extracted slices by their (Y, X) coordinates to maintain the original cutting sequence.

\* \*\*DAPI Optimization:\*\* Leverages blue-channel isolation and Li-thresholding for faint fluorescent signals.

\* \*\*GPU/CPU Flexible:\*\* Optimized for RTX 2060 but includes logic to run on standard laptops with 32GB RAM.



\## 3. Repository Structure

```text

Brain-Slice-Segmentation/

├── environment.yml          # Full Conda environment export

├── setup\_env.bat            # Installation script for Windows/GPU

├── notebooks/

│   └── slice\_extractor.ipynb # The main interactive tool

├── data/

│   └── raw/                 # \[LOCAL ONLY] Raw slide images (e.g., .jpg, .png)

├── output/

│   └── extracted\_slices/    # \[LOCAL ONLY] Individual cropped PNGs

└── README.md                # This file

