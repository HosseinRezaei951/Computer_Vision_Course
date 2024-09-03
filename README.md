# Computer Vision Course

## Overview

This repository contains the exercises and final project for the "Computer Vision Course," focusing on various image processing and computer vision tasks. The course covers topics such as Gaussian derivatives, image filtering, edge detection, frequency domain analysis, and the implementation of the Bag of Visual Words (BoVW) model for image classification. The exercises are implemented in MATLAB, while the final project is implemented in Python using Jupyter Notebook.

## Directory Structure

### Exercises

The `Exercises` directory is organized into subdirectories, each corresponding to a specific problem in computer vision:

- **Q1/**: Analyzing 1D Gaussian functions and their second derivatives.
  - **results/**: Contains the generated figures and images.
    - `1.fig`: MATLAB figure of the plotted functions.
    - `1.jpg`: JPEG image of the plotted functions.
  - `main.m`: MATLAB script that calculates the second derivative of a 1D Gaussian and compares it with various difference of Gaussians.

- **Q2/**: Designing and applying a 3x3 filter for diagonal edge detection.
  - **data/**: Contains the input image for the filter.
    - `diagonal.png`: Image with a diagonal edge.
  - **results/**: Contains the filtered results.
    - `1.fig`: MATLAB figure of the filtered image.
    - `1.jpg`: JPEG image of the filtered results.
  - `main.m`: MATLAB script that applies the designed filter to the image and displays the results.

- **Q4/**: Fourier transform analysis and image reconstruction from sampled data.
  - **data/**: Contains the input image.
    - `man.gif`: 8-level gray-scale image used for sampling and reconstruction.
  - **results/**: Contains figures and images for the original and reconstructed signals.
    - `2.fig`, `3.fig`: MATLAB figures of the reconstructed images using different interpolation methods.
    - `2.jpg`, `3.jpg`: JPEG images of the reconstructed results.
  - `main.m`: MATLAB script that performs Fourier transform, sampling, and reconstruction of the image using different interpolation methods.

- **Q5/**: Noise removal from an image using frequency domain filtering.
  - **data/**: Contains the noisy image.
    - `noiseball.png`: Image with noise used for the filtering process.
  - **results/**: Contains the filtered results.
    - `1.fig`: MATLAB figure of the noise-removed image.
    - `1.jpg`: JPEG image of the final output after noise removal.
  - `dftuv.m`, `lpfilter.m`, `notch.m`, `paddedsize.m`: Utility functions for performing frequency domain filtering.
  - `main.m`: MATLAB script that performs the noise removal using notch filters in the frequency domain.

## Project

### Bag of Visual Words (BoVW) on CIFAR-10 Dataset

The final project implements the Bag of Visual Words (BoVW) algorithm on the CIFAR-10 dataset. The BoVW model is widely used in computer vision for image classification tasks. This project involves feature extraction using the SIFT algorithm, followed by clustering and classification of images into different categories.

- **BoVW.ipynb**: The main Jupyter notebook containing the implementation of the BoVW algorithm on the CIFAR-10 dataset. This notebook should be run in Google Colab due to the specific library requirements for SIFT feature extraction.

## Implementation Details

### Q1: Gaussian Derivatives and Difference of Gaussians

This task involves computing the second derivative of a 1D Gaussian function and comparing it with the difference of Gaussians (DoG) for various scaling factors. The comparison helps in understanding the approximation of the second derivative by the DoG function.

### Q2: Diagonal Edge Detection

The objective is to design a filter that detects diagonal edges in a given image. The designed 3x3 filter is applied to the image, and the output is analyzed to ensure the filter responds maximally to diagonal lines.

### Q4: Image Sampling and Reconstruction

In this task, an image is transformed into the frequency domain using the Fourier Transform, and its energy bandwidth is analyzed. The image is then sampled at different rates and reconstructed using nearest-neighbor and linear interpolation methods. The impact of different sampling rates and interpolation methods on image quality is demonstrated.

### Q5: Frequency Domain Noise Removal

The goal is to remove noise from an image using frequency domain filtering techniques. Notch filters are applied to the Fourier spectrum of the noisy image to eliminate specific frequencies responsible for the noise, resulting in a cleaner image.

### Project: Bag of Visual Words (BoVW) Workflow

The BoVW algorithm is divided into two main phases:

1. **Training Phase**:
   - Extract SIFT descriptors from all images in the training set.
   - Perform clustering on the extracted descriptors to form visual words.
   - Construct feature vectors for each image and train a classifier.

2. **Testing Phase**:
   - Extract SIFT descriptors from the test set images.
   - Construct feature vectors using the trained visual words.
   - Classify the images using the trained model and evaluate accuracy.

## How to Run

### Running the MATLAB Scripts

1. **Q1**: Run `main.m` in the `Q1/` directory to generate the plots for Gaussian derivatives and DoG functions.
2. **Q2**: Run `main.m` in the `Q2/` directory to apply the diagonal edge detection filter to the image.
3. **Q4**: Run `main.m` in the `Q4/` directory to perform Fourier analysis, sampling, and signal reconstruction.
4. **Q5**: Run `main.m` in the `Q5/` directory to remove noise from the image using notch filters.

### Running the Jupyter Notebook

1. **BoVW Project**:
   - Upload the `BoVW.ipynb` file to Google Colab.
   - Follow the instructions in the notebook to set up the environment.
   - Execute the cells to load the dataset, preprocess the images, train the BoVW model, and evaluate its performance.

## Conclusion

This course provides a comprehensive introduction to various computer vision techniques and applications. Through practical exercises and a final project, you will gain hands-on experience and a deeper understanding of computer vision concepts. Explore the provided scripts and notebooks to enhance your learning and apply these techniques to your own projects.
