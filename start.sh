CURRENT_FOLDER=pwd()

if [ -z "$CURRENT_FOLDER" ]; then 
    CURRENT_FOLDER=$PWD
fi


cd $CURRENT_FOLDER/products/

. gradlew clean build -x check

cd $CURRENT_FOLDER/reviews/

. gradlew clean build -x check

cp $CURRENT_FOLDER/products/build/libs/ProductsApi.jar $CURRENT_FOLDER/products/ProductsApi.jar

cp $CURRENT_FOLDER/reviews/build/libs/ReviewsApi.jar $CURRENT_FOLDER/reviews/ReviewsApi.jar

cd $CURRENT_FOLDER/

docker-compose up
