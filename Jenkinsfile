pipeline {
    agent any

    stages {

        stage('Clone') {
            steps {
                git 'https://github.com/AryaSandilya/demo-web.git'
            }
        }

        stage('Build WAR') {
            steps {
                bat 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t demo-web-app .'
            }
        }

        stage('Deploy Container') {
            steps {
                bat '''
                docker stop demo-web-app-container || true
                docker rm demo-web-app-container || true
                docker run -d -p 8082:8080 --name demo-web-app-container demo-web-app
                '''
            }
        }
    }
}