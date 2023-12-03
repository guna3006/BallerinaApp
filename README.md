# Enable access to Ballerina services via WSO2 API Manager by establishing a connection to a MySQL Database hosted within a Docker container.

## <h1 align="center">![WSO2, Ballerina](shared/resources/logo/WSO2xBAL.jpg)</h1>

<p>
The integration of WSO2, Ballerina, and MySQL using Docker provides a comprehensive solution for building, deploying, and managing applications in a scalable and containerized environment. WSO2, known for its robust middleware platform, seamlessly collaborates with Ballerina, a programming language designed for integration, to orchestrate and streamline the development process. Leveraging Docker containers ensures portability and simplifies the deployment of the entire solution.
</p><p>
In this configuration, WSO2 facilitates enterprise-level integration and API management, while Ballerina serves as a powerful tool for creating microservices and handling complex workflows. MySQL, a reliable and widely-used relational database, complements the architecture by providing a scalable and efficient data storage solution.
</p><p>
The Docker platform adds an additional layer of flexibility and efficiency to the integration stack, allowing for easy deployment and management of the interconnected components. This combination of WSO2, Ballerina, and MySQL within a Dockerized environment empowers developers to create resilient, scalable, and easily maintainable applications, enhancing the agility and responsiveness of modern software development processes.
</p>

## 1\. PREREQUISITES
-----------------
[![MySQL version](https://img.shields.io/badge/MySQL-8.2.0-1--f29111?style=flat&logo=MySQL&logoColor=white)](https://dev.mysql.com/doc/relnotes/mysql/8.2.0-1.el8/en/)

[![Java version](https://img.shields.io/badge/OpenJDK-8.0.22-f29111?style=flat&logo=openjdk&logoColor=white)](https://dev.mysql.com/doc/relnotes/mysql/8.2.0-1.el8/en/)

![Dynamic TOML Badge](https://img.shields.io/badge/dynamic/toml)


* [VSCODE](https://code.visualstudio.com/download)
* [DOCKER](https://www.docker.com/products/docker-desktop)
* DOCKER IMAGES

* [MSQL](https://hub.docker.com/_/mysql)
* [WSO2AM](https://hub.docker.com/r/wso2/wso2am)
* [BALLERINA](https://hub.docker.com/r/ballerina/ballerina)

  

2\. RUN SERVICES
------------------

* Execute the file using terminal:
    
    * sudo [compose-enviroment.sh](compose-enviroment.sh)
    
* Execute the file using terminal:
    
    * sudo [compose-enviroment.sh](compose-enviroment.sh)
  

3\. BALLERINA
-------------

### Code Structure

* In the Ballerina programming language, a project is initiated with the command `bal new <:project-name:>` , generating a `Ballerina.toml` file with project details, including user-set organization information.
    
* Projects can consist of multiple modules created using `bal add <:module-name:>` , each functions, variables, and custom types.
    
* Ballerina contains a project concept, but a single source file can also be run simply by following the below format:  
    `bal run <:source_file:>`
    

### Enable SSL

* In Ballerina, configuring the `http:Listener` for **HTTPS** involves specifying a `certificate file` and a `private key` file.
    
* To secure the service, obtain SSL certificates and store them in a folder named */keys.
    
      
    openssl req -new -newkey rsa:2048 -sha256 -days 365 -nodes -x509 -keyout serverpvtkey.key -out serverpubliccert.crt  
    ![](keys/openssl.png)


### Unit Testing

* In Ballerina, configuring the `http:Listener` for **HTTPS** involves specifying a `certificate file` and a `private key` file.
    
* To secure the service, obtain SSL certificates and store them in a folder named */keys.
    
      
    openssl req -new -newkey rsa:2048 -sha256 -days 365 -nodes -x509 -keyout serverpvtkey.key -out serverpubliccert.crt  
    ![](keys/openssl.png)

  

4\. WSO2
--------

### API Manager Publisher

* URL: [https://localhost:9443/publisher/apis](https://localhost:9443/publisher/services/auth/login)
    
    `username :` admin
    
    `password :` admin
    
* [Create a REST API](https://apim.docs.wso2.com/en/3.1.0/learn/design-api/create-api/create-a-rest-api/)
    

### API Manager Developer Portal

* URL:[https://localhost:9443/devportal/apis](https://localhost:9443/devportal/services/auth/login)
    
    `username :` admin
    
    `password :` admin
    
* [Publish an API](https://apim.docs.wso2.com/en/3.1.0/learn/design-api/publish-api/publish-an-api/)
    

  
6\. BALLERINA TO OPENAPI DEFINATION
-----------------------------------

* OpenAPI schema template support WSO2.
    
* [Create an API from a Open API Definition](https://apim.docs.wso2.com/en/3.1.0/learn/design-api/create-api/create-a-rest-api-from-a-swagger-definition/)
    
* [JSON](OpenAPI/MyOpenAPISchema.openapi.json)
    
* [YAML](OpenAPI/MyOpenAPISchema.openapi.yaml)


7\. POSTMAN TO OPENAPI DEFINATION
-----------------------------------

* OpenAPI schema template support WSO2.
    
* [Create an API from a Open API Definition](https://apim.docs.wso2.com/en/3.1.0/learn/design-api/create-api/create-a-rest-api-from-a-swagger-definition/)
    
* [JSON](OpenAPI/MyOpenAPISchema.openapi.json)
    
* [YAML](OpenAPI/MyOpenAPISchema.openapi.yaml)


8\. OPENAPI TEMPLATE
-----------------------------------

* OpenAPI schema template support WSO2.
    
* [Create an API from a Open API Definition](https://apim.docs.wso2.com/en/3.1.0/learn/design-api/create-api/create-a-rest-api-from-a-swagger-definition/)
    
* [JSON](OpenAPI/MyOpenAPISchema.openapi.json)
    
* [YAML](OpenAPI/MyOpenAPISchema.openapi.yaml)
  
  

* * *

_

[by Gunasegarran](https://github.com/guna3006)

_