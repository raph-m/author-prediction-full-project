# author-prediction-full-project
Author prediction using the Gutenberg Database

The goal is to create an algorithm that is able to predict the author of a text.

This repository is organized in submodules, with the different steps of the project:

1) We need to download the database. We use ebooks from the Gutenberg database. The download_gutenberg repository reads from the database index and downloads specific files (for example specific authors) from the Gutenberg website. You can find here [link](https://drive.google.com/file/d/1kntp2p3X_6dqcpvf4WgO92hQPFk5jMRW/view?usp=sharing) the result of this script. The  data/ folder should be next to the download_gutenberg folder.

2) We want to separate books into blocks and to extract features from the text. We use the frequency of most common words and the length of sentences. You can find the code for this in the author_classification submodule. (an exemple feature extraction is provided in the file apprentissage_10.txt).

3) The submodule author_classification_fs computes a PCA feature selection on the previous output.

4) The submodule ml_on_author_prediction implements different methods of machine learning on the resulting dataset. (KNN and Random Forest). The Camembert/ creates a little chart with the results.

## The demo:
The demo runs a part of the pipeline. We suppose that features are already extracted from the database and that we are given a new text to predict (the test text).
1) We extract the features from the new text.
2) We make the PCA on the dataset and apply the same transformation to the test data.
3) The machine learning algorithms learn on the dataset and predict the test data.
4) The results are displayed in a chart.

## How to run the demo ?
1) Clone me with: `git clone --recursive https://github.com/raph-m/author-prediction-full-project.git`
2) Move the files apprentissage_10.txt and 1013.txt to the parent directory (so next to this repository).
3) Open the full-project.pro file with Qt and run the project.
