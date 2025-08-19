pipeline {
    agent any
    tools {
        maven 'Maven'
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/soorepalli/java-maven-demo-app.git'
            }
        }
        stage('Build') {
            steps {
                bat 'mvn clean install'
            }
        }

    }
}
