pipeline {
    agent any

    stages {
        stage('Setup') {
            steps {
                echo "Running setup script..."
                sh './scripts/setup.sh setup'
            }
        }
    }
}
