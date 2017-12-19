QT -= gui

CONFIG += c++11 console
CONFIG -= app_bundle

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += main.cpp \
    author_classification/Preprocessing/testgit.cpp \
    author_classification/Preprocessing/text.cpp \
    author_classification/Preprocessing/block.cpp \
    author_classification/Preprocessing/features.cpp \
    author_classification/Preprocessing/buildtxt.cpp \
    author_classification_fs/pca.cpp \
    ml_on_author_prediction/RS/dataset.cpp \
    ml_on_author_prediction/RS/randomtree.cpp \
    ml_on_author_prediction/RS/testDataPrep.cpp \
    ml_on_author_prediction/RS/randomforest.cpp \
    ml_on_author_prediction/RS/testRandom.cpp \
    ml_on_author_prediction/RS/multiclass_rs.cpp \
    ml_on_author_prediction/KNN/knn.cpp \
    ml_on_author_prediction/KNN/distances.cpp \
    ml_on_author_prediction/KNN/dictionary.cpp \
    ml_on_author_prediction/KNN/myknn_algo.cpp \
    ml_on_author_prediction/ml_on_author_prediction/Hugo_KNN.cpp


HEADERS += \
    author_classification/Preprocessing/testgit.h \
    author_classification/Preprocessing/text.h \
    author_classification/Preprocessing/block.h \
    author_classification/Preprocessing/features.h \
    author_classification_fs/pca.h \
    ml_on_author_prediction/RS/dataset.h \
    ml_on_author_prediction/RS/matrix.h \
    ml_on_author_prediction/RS/probamap.h \
    ml_on_author_prediction/RS/column.h \
    ml_on_author_prediction/RS/node.h \
    ml_on_author_prediction/RS/randomtree.h \
    ml_on_author_prediction/RS/leafnode.h \
    ml_on_author_prediction/RS/splitnode.h \
    ml_on_author_prediction/RS/testDataPrep.h \
    ml_on_author_prediction/RS/testRandom.h \
    ml_on_author_prediction/RS/randomforest.h \
    ml_on_author_prediction/RS/multiclass_rs.h \
    ml_on_author_prediction/KNN/knn.h \
    ml_on_author_prediction/KNN/distances.h \
    ml_on_author_prediction/KNN/dictionary.h \
    ml_on_author_prediction/KNN/myknn_algo.h \
    ml_on_author_prediction/ml_on_author_prediction/Hugo_KNN.h

#QMAKE_CXXFLAGS_DEBUG += -Zi -MTd
#QMAKE_CXXFLAGS_RELEASE += -MT

INCLUDEPATH+=../eigen-eigen-67e894c6cd8f/ \
    /home/raph/opencv/include/

unix:!mac {
    message("* Using settings for Unix/Linux.")
    INCLUDEPATH += /usr/local/include/opencv

    LIBS += -L/usr/local/lib/ \
        -lopencv_core \
        -lopencv_highgui \
        -lopencv_imgproc \
        -lopencv_ml
}

## OpenCV settings for Mac OS X
macx {
    message("* Using settings for Mac OS X.")
    INCLUDEPATH += /usr/local/include/opencv

    LIBS += -L/usr/local/lib/ \
        -lopencv_core \
        -lopencv_highgui \
        -lopencv_imgproc \
        -lopencv_ml
}

## OpenCV settings for Windows and OpenCV 2.4.2
win32 {
    message("* Using settings for Windows.")
    INCLUDEPATH += "C:\\opencv\\build\\include" \
                   "C:\\opencv\\build\\include\\opencv" \
                   "C:\\opencv\\build\\include\\opencv2"

    CONFIG(debug, debug | release) {
        LIBS += -L"C:\\opencv\\build\\x86\\vc10\\lib" \
            -lopencv_core248d \
            -lopencv_highgui248d \
            -lopencv_imgproc248d \
            -lopencv_ml248d
    }

    CONFIG(release, debug | release) {
        LIBS += -L"C:\\opencv\\build\\x86\\vc10\\lib" \
            -lopencv_core248 \
            -lopencv_highgui248 \
            -lopencv_imgproc248 \
            -lopencv_ml248
    }
}
