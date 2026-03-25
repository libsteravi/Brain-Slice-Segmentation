@echo off
echo ======================================================
echo STARTING IHC ANALYSIS ENVIRONMENT SETUP
echo Target: Brain-Slice-Segmentation Project
echo ======================================================

:: 1. Create the Conda Environment
echo [1/5] Creating Conda environment: ihc_analysis_env...
call conda create -n ihc_analysis_env python=3.10 -y
call conda activate ihc_analysis_env

:: 2. Install GPU Infrastructure (Compatible with RTX 2060 & CPU fallback)
echo [2/5] Installing CUDA and cuDNN...
call conda install -c conda-forge cudatoolkit=11.2 cudnn=8.1.0 -y

:: 3. Install AI Frameworks (Pinned for stability)
echo [3/5] Installing TensorFlow and NumPy 1.x...
:: We pin NumPy < 2.0 to prevent compatibility breaks with Stardist/DeepSlice
call pip install "numpy<2"
call pip install "tensorflow<2.11"
call pip install stardist DeepSlice

:: 4. Install Registration and Visualization Tools
echo [4/5] Installing BrainGlobe, Napari, and Image Processing suites...
call pip install brainreg[napari]
call pip install tifffile scikit-image pandas ipykernel matplotlib ipywidgets

:: 5. Register Jupyter Kernel
echo [5/5] Registering Python kernel for Jupyter Notebooks...
call python -m ipykernel install --user --name ihc_analysis_env --display-name "Python 3.10 (IHC_Analysis)"

echo ------------------------------------------------------
echo SETUP COMPLETE!
echo ------------------------------------------------------
echo To start working:
echo 1. Type: conda activate ihc_analysis_env
echo 2. Type: jupyter lab
echo ------------------------------------------------------
pause