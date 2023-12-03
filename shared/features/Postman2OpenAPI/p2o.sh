echo '----------------------------------------------'
echo '---Postman Collection to OpenAPI Defination---'
echo '----------------------------------------------'
npm i postman-to-openapi -g -s
echo '---> converting postman collection'
p2o  ./shared/features/Postman2OpenAPI/json/BallerinaApp.postman_collection.json -f ./shared/features/Postman2OpenAPI/BallerinaApp-openAPI.yml
echo ''
echo '---------------------------------------------'
echo '------------------COMPLETED------------------'
echo '---------------------------------------------'