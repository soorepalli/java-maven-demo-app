pipeline {
    agent any

    tools {
        // This name must match the Maven installation name in "Manage Jenkins → Tools"
        maven 'Maven'
        jdk 'Java' // or whatever JDK you have configured in Jenkins
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

        stage('Test') {
            steps {
                bat 'mvn test'
            }
        }

        stage('Archive Artifacts') {
            steps {
                archiveArtifacts artifacts: 'target/*.jar', fingerprint: true
            }
        }

    //    stage('Publish Test Results') {
     //       steps {
      //          junit 'target/surefire-reports/*.xml'
    //        }
     //   }
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
