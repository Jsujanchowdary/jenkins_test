pipeline {
    agent any

    stages {
        stage('Setup') {
            steps {
                sh './scripts/script.sh setup sujan dev us-east-1'
            }
        }
        stage('Deploy') {
            steps {
                sh './scripts/script.sh deploy myApp 1.0.0'
            }
        }
        stage('Cleanup') {
            steps {
                sh './scripts/script.sh cleanup'
            }
        }
    }
}
