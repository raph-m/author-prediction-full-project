#include <QCoreApplication>
//#include "Classification/distances.h"
//#include "Classification/column.h"
#include <iostream>
#include "author_classification/Preprocessing/text.h"
#include <author_classification/Preprocessing/buildtxt.cpp>

#include "author_classification_fs/pca.h"

#include "ml_on_author_prediction/RS/multiclass_rs.h"

#include "ml_on_author_prediction/KNN/knn.h"

int main(int argc, char *argv[])
{
    std::cout << "Fetching features..." << std::endl;
//    int nbriteration = 6;
//    // std::map<int, std::string> idToAuthor;
//    //idToAuthor = createTextFeatures(nbriteration);
//    int lineCount = 0; //nbre de ligne du fichier csv qui résultera du texte test
//    lineCount=preprocessingTest("../1013.txt","txt", "testResult");

    std::cout << "Starting PCA..." << std::endl;
    float parameter = 0.99;
    std::string c = "../apprentissage_10.txt";
    std::string test = "../testResult.txt";
    principalComponentAnalysis(c,test, parameter);

//    std::cout << "Learning task..." << endl;
//    //machine learning
//    std::cout << "Random Forest:" << std::endl;
//    int numberOfTrees = 1;
//    string train = "../finalMatrix.csv";
//    string test = "../finalTest.csv";
//    multiclass_rs * classifier1 = new multiclass_rs(numberOfTrees, 10);
//    double * predictions_random_forest = classifier1->run_random_forest(train, test);

    //hamza
//    std::cout << "First KNN:" << endl;
//    int NumbersofNeighbors=3;
//    double* Predictions=KNN( NumbersofNeighbors, test, train);

    return 0;
}
