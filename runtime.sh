echo '------------------------------------'
echo 'Pulling docker images if not exist!'
echo 'pulling mysql ->'
docker pull mysql:latest
echo 'pulling wso2 ->'
docker pull wso2/wso2am
echo 'pulling ballerina ->'
docker pull ballerina/ballerina
echo '------------------------------------'
echo 'Pulling docker immages are completed!'
echo ''
echo ''
echo '------------------------------------'
echo 'Composing docker cointainer !'
docker-compose -f docker-compose-runtime.yml up --build
echo 'Docker cointainer composed!'
echo '------------------------------------'