# <h1 align="center"> Connect **<span style="color:turquoise;">Ballerina</span>** Services to **<span style="color:orange;">WSO2</span>** API Manager through **<span style="color:green;">MySQL</span>** in **<font color="blue">Docker</span>**</h1>

<hr/>

## <h1 align="center">![WSO2, Ballerina](shared/resources/logo/WSO2xBAL.jpg)</h1>

## About The Project

The integration of **<span style="color:orange;">WSO2</span>**, **<span style="color:turquoise;">Ballerina</span>** , and  **<span style="color:green;">MySQL</span>** using **<font color="blue">Docker</span>** provides a comprehensive solution for building, deploying, and managing applications in a scalable and containerized environment. **<span style="color:orange;">WSO2</span>**, known for its robust middleware platform, seamlessly collaborates with **<span style="color:turquoise;">Ballerina</span>**, a programming language designed for integration, to orchestrate and streamline the development process. Leveraging Docker containers ensures portability and simplifies the deployment of the entire solution.
In this configuration, **<span style="color:orange;">WSO2</span>** facilitates enterprise-level integration and API management, while **<span style="color:turquoise;">Ballerina</span>** serves as a powerful tool for creating microservices and handling complex workflows. **<span style="color:green;">MySQL</span>**, a reliable and widely-used relational database, complements the architecture by providing a scalable and efficient data storage solution.
The Docker platform adds an additional layer of flexibility and efficiency to the integration stack, allowing for easy deployment and management of the interconnected components. This combination of **<span style="color:orange;">WSO2</span>**, **<span style="color:turquoise;">Ballerina</span>**, and **<span style="color:green;">MySQL</span>** within a Dockerized environment empowers developers to create resilient, scalable, and easily maintainable applications, enhancing the agility and responsiveness of modern software development processes.

  ------------------


### 1\. Prerequisites
[![Static Badge](https://img.shields.io/badge/vscode-v1.84.2-blue?logo=visualstudiocode&logoColor=blue&labelColor=white&&color=grey)](https://code.visualstudio.com/download)

<p></p>

[![Static Badge](https://img.shields.io/badge/Docker_Desktop-v4.25.2-blue?style=flat&logo=docker&logoColor=blue&label=Docker%20Dekstop&labelColor=white&color=grey)](https://www.docker.com/products/docker-desktop/)
<p></p>

#### &emsp;Docker Images
<p></p>

&emsp;&emsp;[![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/_/mysql/latest?logo=docker&logoColor=white&label=MySQL&labelColor=blue&color=grey)](https://hub.docker.com/_/mysql)

<p></p>

&emsp;&emsp;[![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/wso2/wso2am/latest?logo=docker&label=WSO2am&logoColor=white&labelColor=blue&color=grey)](https://hub.docker.com/r/wso2/wso2am)

<p></p>

&emsp;&emsp;[![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/ballerina/ballerina/latest?logo=docker&label=Ballerina&logoColor=white&labelColor=blue&color=grey)](https://hub.docker.com/r/ballerina/ballerina)


  ------------------


### 2\. Run Services

* Execute the file using terminal:
    ##### Unit Test
&emsp; &emsp; ```sudo sh unittest.sh```

<p></p>

&emsp; &emsp;[![Static Badge](https://img.shields.io/badge/unittest.sh-white?logo=gnometerminal&logoColor=black)](unittest.sh)

* Execute the file using terminal:
    ##### Runtime
&emsp; &emsp;```sudo sh runtime.sh``` 

<p></p>

&emsp; &emsp;[![Static Badge](https://img.shields.io/badge/runtime.sh-white?logo=gnometerminal&logoColor=black)](runtime.sh)

-------------

###  3\. Ballerina

#### Code Structure

* Project is initiated:
    * `bal new <:project-name:>`

    * [![Static Badge](https://img.shields.io/badge/Ballerina-.toml-white?logo=TOML&logoColor=white&label=Ballerina)](Ballerina.toml) - is genarated with project details, including user-set organization information.

* Creation of multiple modules :
    * `bal add <:module-name:>` - each functions, variables, and custom types.

* Main functions or services :
    * [![Static Badge](https://img.shields.io/badge/main-.bal-white?logo=mulesoft&logoColor=white&label=main)](main.bal) - define the functions and services here.
    * [![Static Badge](https://img.shields.io/badge/Config-.toml-white?logo=toml&logoColor=white&label=Config)](Config.toml) - define the secrets for the enviroment here.
    
* Test Unit :
    * [![Static Badge](https://img.shields.io/badge/maifunction_test-.bal-white?logo=testinglibrary&logoColor=white&label=function_test)](/tests) - define the unit test function here.
    * [![Static Badge](https://img.shields.io/badge/Config-.toml-white?logo=toml&logoColor=white&label=Config)](/tests/Config.toml) - define the secrets for the enviroment here.


* Compiling the current package :
    * `bal build`


* Compile and run the current package :
    * `bal run`

* Run package test :
    * `bal test` - Execute test
    * `bal test --test-report` - Generate test report
    * `bal test --code-coverage` - Generate code coverage
    * `bal test --code-coverage` - Generate code coverage
    * `bal test --test-report --code-coverage` - Generate test report and code coverage

* Enable SSL :
    * Configuring the `http:Listener` for **HTTPS** involves specifying a [![Static Badge](https://img.shields.io/badge/serverpubliccert-.crt-white?logo=keycdn&logoColor=white&label=serverpubliccert)](/shared/resources/keys/serverpubliccert.crt) and a [![Static Badge](https://img.shields.io/badge/serverpvtkey-.key-white?logo=keycdn&logoColor=white&label=serverpvtkey)](/shared/resources/keys/serverpvtkey.key) file.
    * To secure the service, obtain **SSL** certificates and store them in a folder named [![Static Badge](https://img.shields.io/badge/keys-lightblue?logo=docusign&logoColor=grey)](/shared/resources/keys).
    * Command to execute:
   ```openssl req -new -newkey rsa:2048 -sha256 -days 365 -nodes -x509 -keyout serverpvtkey.key -out serverpubliccert.crt```

-------------

###  4\. WSO2

### API Manager Publisher

* [![Static Badge](https://img.shields.io/badge/publisher/apis-lightgrey?logo=curl&logoColor=white)](https://localhost:9443/publisher/api)

    username : `admin`
    
    password : `admin`

* [![Static Badge](https://img.shields.io/badge/Create_an_API-lightgrey?logo=fastapi&logoColor=white)](https://apim.docs.wso2.com/en/3.1.0/learn/design-api/create-api/create-a-rest-api/)
    

### API Manager Developer Portal

* [![Static Badge](https://img.shields.io/badge/devportal/apis-lightgrey?logo=curl&logoColor=white)](https://localhost:9443/devportal/apis)
    
    username : `admin`
    
    password : `admin`
    
* [![Static Badge](https://img.shields.io/badge/Publish_an_API-lightgrey?logo=fastapi&logoColor=white)](https://apim.docs.wso2.com/en/3.1.0/learn/design-api/publish-api/publish-an-api/)

-------------

###  4\. Ballerina to OpenAPI Defination

* Execute the file using terminal:
```sudo sh b2o.sh``` 
<p></p>

[![Static Badge](https://img.shields.io/badge/b2o.sh-white?logo=gnometerminal&logoColor=black)](/shared/features/Ballerina2OpenAPI/b2o.sh)


-------------

###  5\. Postman Collections to OpenAPI Defination

* Execute the file using terminal:
```sudo sh p2o.sh``` 

    [![Static Badge](https://img.shields.io/badge/p2o.sh-white?logo=gnometerminal&logoColor=black)](/shared/features/Postman2OpenAPI/p2o.sh)
    
     * Store Postman Collection in:
    [![Static Badge](https://img.shields.io/badge/BallerinaApp-.json-white?logo=postman&logoColor=white&label=BallerinaApp.postman_collection)](/shared/features/Postman2OpenAPI/json/BallerinaApp.postman_collection.json)
    
    * Generated OpenAPI located:
    [![Static Badge](https://img.shields.io/badge/BallerinaApp-.yml-white?logo=yaml&logoColor=white&label=BallerinaApp-openAPI)](/shared/features/Postman2OpenAPI/BallerinaApp-openAPI.yml)

    

-------------

###  6\. Sample OpenAPI Templates 

* Example created based on :
[![Static Badge](https://img.shields.io/badge/OpenAPI--Standard-white?logo=swagger&logoColor=green)](https://swagger.io/specification/)

<p></p>

[![Static Badge](https://img.shields.io/badge/sampleOpenAPISchema-.yaml-white?logo=yaml&logoColor=white&label=sampleOpenAPISchema.openapi)](/shared/openAPI-Templates/sampleOpenAPISchema.openapi.yaml)

<p></p>

[![Static Badge](https://img.shields.io/badge/sampleOpenAPISchema-.json-white?logo=json&logoColor=white&label=sampleOpenAPISchema.openapi)](/shared/openAPI-Templates/sampleOpenAPISchema.openapi.json)

-------------
  

  ## <h1 align="center">Contact <br/>[![LinkedIn](https://img.shields.io/badge/LinkedIn-blue?style=flat&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/gunasegarran/)</h1>






