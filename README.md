# author-prediction-full-project
Author prediction using the Gutenberg Database

The goal is create an algorithm that is able to predict the author of a text.

This repository is organized in submodules, with the different steps of the project:

1) We need to download the database. We use ebooks from the Gutenberg database. The download_gutenberg repository reads from the database index and downloads specific files (for example specific authors) from the Gutenberg website. You can find here the result of this script: 
the data/ folder should be next to the download_gutenberg folder.

2) We want to separate books into blocks and to extract features from the text. We use the frequency of most common words and the length of sentences. You can find the code for this in the 
