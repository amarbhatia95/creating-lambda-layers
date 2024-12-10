docker build -t rag-lambda-layer .
docker create --name rag-lambda-layer-container rag-lambda-layer
docker cp rag-lambda-layer-container:/lambda-layer.zip . #lambda-layer is the name in the dockerfile
rm rag-lambda-layer-container
