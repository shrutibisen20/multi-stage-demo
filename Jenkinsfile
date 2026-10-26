pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Source code is ready'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t multi-stage-demo .'
            }
        }

        stage('Test Docker Image') {
            steps {
                sh 'docker run --rm multi-stage-demo'
            }
        }
    }
}

