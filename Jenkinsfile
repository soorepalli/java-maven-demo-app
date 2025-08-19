pipeline {
    agent any

    tools {
        maven 'Maven' // Name from Jenkins Tool Configuration
        jdk 'Java'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'jenkinsdemo',
                    url: 'https://github.com/soorepalli/java-maven-demo-app.git'
            }
        }

        stage('Build with Maven') {
            steps {
                bat 'mvn clean install'
            }
        }
    }

    post {
        success {
            echo 'Build completed successfully!'
        }
        failure {
            echo 'Build failed!'
        }
    }
}
