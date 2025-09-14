pipeline {
    agent any

    environment {
        MAVEN_HOME = tool 'Maven-3.9'
        JAVA_HOME = tool 'JDK-17'
    }

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/your-username/reduce-food-wastage.git'
            }
        }

        stage('Build') {
            steps {
                sh "${MAVEN_HOME}/bin/mvn clean install"
            }
        }

        stage('Test') {
            steps {
                sh "${MAVEN_HOME}/bin/mvn test"
            }
        }

        stage('Package') {
            steps {
                sh "${MAVEN_HOME}/bin/mvn package"
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying WAR to Tomcat...'
                // Example: Copy WAR to Tomcat webapps directory
                sh 'cp target/*.war /opt/tomcat/webapps/'
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
