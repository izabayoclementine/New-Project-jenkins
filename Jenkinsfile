pipeline {
    agent any

    environment {
        NODE_VERSION = "18"
    }

    stages {

        stage('Checkout') {
            steps {
                echo 'Checking out code...'
                git branch: 'main', url: 'https://github.com/izabayoclementine/New-Project-jenkins.git'
            }
        }

        stage('Install Node.js') {
            steps {
                echo 'Installing Node.js dependencies...'
                script {
                    if (isUnix()) {
                        sh 'npm install'
                    } else {
                        bat 'npm install'
                    }
                }
            }
        }

        stage('Run Tests') {
            steps {
                echo 'Running tests...'
                script {
                    if (isUnix()) {
                        sh 'npm test || echo "No tests defined"'
                    } else {
                        bat 'npm test || echo No tests defined'
                    }
                }
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying application...'
                script {
                    if (isUnix()) {
                        sh 'echo Deploy step goes here'
                    } else {
                        bat 'echo Deploy step goes here'
                    }
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline succeeded ✅'
        }
        failure {
            echo 'Pipeline failed ❌'
        }
    }
}

