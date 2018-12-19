#!/bin/bash
CURRENT_FOLDER=$(pwd)

if [ -z "$CURRENT_FOLDER" ]; then 
    CURRENT_FOLDER=$PWD
fi

cd $CURRENT_FOLDER/products/
echo -e "Building Products \n"
bash gradlew clean build -x check

cd $CURRENT_FOLDER/reviews/
echo -e "Building Reviews $CURRENT_FOLDER/reviews/  \n"
pwd
bash gradlew clean build -x check

cp $CURRENT_FOLDER/products/build/libs/ProductsApi.jar $CURRENT_FOLDER/docker/products/ProductsApi.jar
cp $CURRENT_FOLDER/products/build/libs/ProductsApi.jar $CURRENT_FOLDER/ProductsApi.jar

cp $CURRENT_FOLDER/reviews/build/libs/ReviewsApi.jar $CURRENT_FOLDER/docker/reviews/ReviewsApi.jar

cp $CURRENT_FOLDER/reviews/build/libs/ReviewsApi.jar $CURRENT_FOLDER/ReviewsApi.jar

cd $CURRENT_FOLDER/
echo -e "Docker Up \n"

