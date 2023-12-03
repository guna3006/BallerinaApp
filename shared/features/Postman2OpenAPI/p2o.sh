echo '----------------------------------------------'
echo '---Postman Collection to OpenAPI Defination---'
echo '----------------------------------------------'
npm i postman-to-openapi -g -s
echo '---> converting postman collection'
p2o ./json/BallerinaApp-PostmanCollection.json -f ./BallerinaApp-openAPI.yml
echo ''
echo '---------------------------------------------'
echo '------------------COMPLETED------------------'
echo '---------------------------------------------'