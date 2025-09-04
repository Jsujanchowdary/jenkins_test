pipeline {
    agent any

    stages {
        stage('Setup') {
            steps {
                sh './scripts/setup.sh setup sujan dev us-east-1'
            }
        }
        stage('Deploy') {
            steps {
                sh './scripts/setup.sh deploy myApp 1.0.0'
            }
        }
        stage('Cleanup') {
            steps {
                sh './scripts/setup.sh cleanup'
            }
        }
    }
}
