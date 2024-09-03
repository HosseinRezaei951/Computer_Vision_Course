# Computer Vision Course Assignment

## Overview

This project contains solutions to various computer vision problems, including Gaussian derivatives, image filtering, sampling, and frequency domain noise removal. The tasks are implemented using MATLAB, and the project is organized into sub-directories corresponding to each problem.

## Project Structure

The project is organized into the following sub-directories and files:

- **Q1/**: Contains code and results for analyzing 1D Gaussian functions and their second derivatives.
  - **results/**: Contains the generated figures and images.
    - `1.fig`: MATLAB figure of the plotted functions.
    - `1.jpg`: JPEG image of the plotted functions.
  - `main.m`: MATLAB script that calculates the second derivative of a 1D Gaussian and plots it alongside various difference of Gaussians.

- **Q2/**: Contains code for designing and applying a 3x3 filter to detect diagonal edges in an image.
  - **data/**: Contains the input image for the filter.
    - `diagonal.png`: Image with a diagonal edge.
  - **results/**: Contains the filtered results.
    - `1.fig`: MATLAB figure of the filtered image.
    - `1.jpg`: JPEG image of the filtered results.
  - `main.m`: MATLAB script that applies the designed filter to the image and displays the results.

- **Q4/**: Contains code for Fourier transform analysis and signal reconstruction from sampled data.
  - **data/**: Contains the input image.
    - `man.gif`: 8-level gray-scale image used for sampling and reconstruction.
  - **results/**: Contains the figures and images for the original and reconstructed signals.
    - `2.fig`, `3.fig`: MATLAB figures of the reconstructed images using different interpolation methods.
    - `2.jpg`, `3.jpg`: JPEG images of the reconstructed results.
  - `main.m`: MATLAB script that performs the Fourier transform, sampling, and reconstruction of the image using different interpolation methods.

- **Q5/**: Contains code for noise removal from an image using frequency domain filtering.
  - **data/**: Contains the noisy image.
    - `noiseball.png`: Image with noise used for the filtering process.
  - **results/**: Contains the filtered results.
    - `1.fig`: MATLAB figure of the noise-removed image.
    - `1.jpg`: JPEG image of the final output after noise removal.
  - `dftuv.m`, `lpfilter.m`, `notch.m`, `paddedsize.m`: Utility functions for performing frequency domain filtering.
  - `main.m`: MATLAB script that performs the noise removal using notch filters in the frequency domain.

## Detailed Explanation

### Q1: Gaussian Derivatives and Difference of Gaussians

This task involves computing the second derivative of a 1D Gaussian function and comparing it with the difference of Gaussians (DoG) for various scaling factors. The comparison helps in understanding the approximation of the second derivative by the DoG function.

- **1D Gaussian Function**:

  ![alt text](https://github.com/HosseinRezaei951/Computer_Vision_Course/blob/main/Exercises/Q1/results/1.jpg)

- **Second Derivative and Difference of Gaussians**:
  The plot compares the second derivative of the Gaussian with the DoG for various values of \( k \). This visualization helps in evaluating which value of \( k \) approximates the second derivative best.

### Q2: Diagonal Edge Detection

The objective is to design a filter that detects diagonal edges in a given image. The designed 3x3 filter is applied to the image, and the output is analyzed to ensure the filter responds maximally to diagonal lines.

- **Original Image**:

  ![alt text](https://github.com/HosseinRezaei951/Computer_Vision_Course/blob/main/Exercises/Q2/data/diagonal.png)

- **Filtered Image**:

  ![alt text](https://github.com/HosseinRezaei951/Computer_Vision_Course/blob/main/Exercises/Q2/results/1.jpg)
  
  The filter is designed to highlight diagonal edges, and the results demonstrate its effectiveness in detecting the boundaries of diagonal lines.

### Q4: Image Sampling and Reconstruction

In this task, an image is transformed into the frequency domain using the Fourier Transform, and its energy bandwidth is analyzed. The image is then sampled at different rates and reconstructed using nearest-neighbor and linear interpolation methods. The impact of different sampling rates and interpolation methods on image quality is demonstrated.

- **Original Image**:

  ![alt text](https://github.com/HosseinRezaei951/Computer_Vision_Course/blob/main/Exercises/Q4/results/2.jpg)

- **Reconstructed Images**:
  - Nearest Neighbor Interpolation:

    ![alt text](https://github.com/HosseinRezaei951/Computer_Vision_Course/blob/main/Exercises/Q4/results/2.jpg)

  - Linear Interpolation:

    ![alt text](https://github.com/HosseinRezaei951/Computer_Vision_Course/blob/main/Exercises/Q4/results/3.jpg)
    
  These images show the effects of different interpolation methods and sampling rates on image reconstruction quality.

### Q5: Frequency Domain Noise Removal

The goal is to remove noise from an image using frequency domain filtering techniques. Notch filters are applied to the Fourier spectrum of the noisy image to eliminate specific frequencies responsible for the noise, resulting in a cleaner image.

- **Noisy Image**:

  ![alt text](https://github.com/HosseinRezaei951/Computer_Vision_Course/blob/main/Exercises/Q5/data/noiseball.png)

- **Filtered Image**:

  ![alt text](https://github.com/HosseinRezaei951/Computer_Vision_Course/blob/main/Exercises/Q5/results/1.jpg)

  The filtered image demonstrates the effectiveness of the notch filters in removing noise from the image.

## How to Run the Code

1. **Q1**: Run `main.m` in the `Q1/` directory to generate the plots for the Gaussian derivatives and DoG functions.
2. **Q2**: Run `main.m` in the `Q2/` directory to apply the diagonal edge detection filter to the image.
3. **Q4**: Run `main.m` in the `Q4/` directory to perform Fourier analysis, sampling, and signal reconstruction.
4. **Q5**: Run `main.m` in the `Q5/` directory to remove noise from the image using notch filters.

## Conclusion

This assignment demonstrates various techniques in computer vision, including Gaussian function analysis, edge detection, image sampling, and noise removal. The MATLAB scripts provide a practical implementation of these concepts, and the results highlight the effectiveness of different approaches to common computer vision tasks.
