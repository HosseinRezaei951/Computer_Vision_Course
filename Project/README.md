# Bag of Visual Words (BoVW) on CIFAR-10 Dataset

## Overview

This project implements the Bag of Visual Words (BoVW) algorithm on the CIFAR-10 dataset. The BoVW model is commonly used in computer vision for image classification tasks. This project was developed as part of the "Computer Vision Course" and involves using the SIFT algorithm for feature extraction, followed by clustering, and classification of images into different categories.

## Project Structure

The project includes the following key files:

- **BoVW.ipynb**: The main Jupyter notebook containing the implementation of the BoVW algorithm on the CIFAR-10 dataset. This notebook should be run in Google Colab due to the specific library requirements for SIFT feature extraction.

## Implementation Details

### 1. Environment Setup

To successfully run the code in `BoVW.ipynb`, it's essential to configure the Google Colab environment correctly. The SIFT algorithm requires specific versions of OpenCV libraries:

1. **Uninstall pre-installed OpenCV packages**:
   - `opencv-contrib-python 4.1.2.30`
   - `opencv-python 4.1.2.30`

2. **Reinstall the required OpenCV package**:
   - Install `opencv-contrib-python` to enable the use of the SIFT algorithm.

### 2. Dataset Loading and Preprocessing

The CIFAR-10 dataset is loaded using the Keras library. The dataset is split into two subsets:

- **Training Set**: 50,000 images
- **Test Set**: 10,000 images

The CIFAR-10 dataset consists of 10 classes with the following labels:

```python
label_names = ["airplane", "automobile", "bird", "cat", 
               "deer", "dog", "frog", "horse", "ship", "truck"]
```

Images are first converted from RGB to grayscale to simplify the feature extraction process.

### 3. BoVW Algorithm Workflow

The BoVW algorithm is divided into two main phases:

#### A. Training Phase

1. **Feature Extraction**:
   - Extract SIFT descriptors from all images in the training set.

2. **Clustering**:
   - Perform clustering on all extracted descriptors to form visual words (vocabulary).

3. **Feature Vector Construction**:
   - Use the clustered visual words to create feature vectors for each image in the training set.

4. **Model Training**:
   - Train a classifier using the feature vectors to create a model that can predict the image classes.

#### B. Testing Phase

1. **Feature Extraction**:
   - Extract SIFT descriptors from all images in the test set.

2. **Feature Vector Construction**:
   - Use the trained visual words from the training phase to create feature vectors for the test set images.

3. **Classification**:
   - Use the trained model to predict the labels of the test set images based on their feature vectors.

### 4. Evaluation

After classifying the test set images, the predicted labels are compared with the true labels. The accuracy of the BoVW model on the CIFAR-10 dataset is calculated and reported.

## How to Run

To run this project:

1. Upload the `BoVW.ipynb` file to Google Colab.
2. Follow the instructions in the notebook to set up the environment.
3. Execute the cells to load the dataset, preprocess the images, train the BoVW model, and evaluate its performance.

## Conclusion

This project demonstrates the application of the Bag of Visual Words model on the CIFAR-10 dataset. By leveraging the SIFT algorithm for feature extraction and clustering, the BoVW model effectively classifies images into the correct categories. The final accuracy of the model provides insights into the effectiveness of this approach in image classification tasks.