pipeline {
    agent any

    environment {
        MAVEN_HOME = tool 'Maven-3.9'
        JAVA_HOME = tool 'JDK-17'
        PATH = "${JAVA_HOME}\\bin;${MAVEN_HOME}\\bin;${env.PATH}"
    }

    stages {
        stage('Checkout Code') {
            steps {
                checkout([$class: 'GitSCM',
                    branches: [[name: '*/main']],
                    doGenerateSubmoduleConfigurations: false,
                    extensions: [],
                    userRemoteConfigs: [[
                        url: 'https://github.com/2200030521/capstone1.git',
                        credentialsId: 'github-pat'
                    ]]
                ])
            }
        }

        stage('Build') {
            steps {
                bat "mvn clean install"
            }
        }

        stage('Test') {
            steps {
                bat "mvn test"
            }
        }

        stage('Package') {
            steps {
                bat "mvn package"
            }
        }

       stage('Deploy') {
    steps {
        echo 'Running Spring Boot JAR...'
        bat "start java -jar target\\Finalproject-0.0.1-SNAPSHOT.jar"
    }
}

    }

    post {
        success {
            echo 'Build and deployment completed successfully!'
        }
        failure {
            echo 'Build failed. Check logs for details.'
        }
    }
}
