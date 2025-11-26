pipeline {
    agent any
    stages {
        stage('Clone buy-01') {
            steps {
                git branch: 'main', url: 'https://github.com/jeeeeedi/buy-01.git'
            }
        }
        stage('Run Docker') {
            steps {
                echo 'Running a docker...'
                steps {
                    sh './start_docker.sh'
                }
            }
        }
        stage('Test') {
            steps {
                echo 'Running tests...'
                // junit 'target/surefire-reports/*.xml'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
            }
        }
        stage('Notify') {
            steps {
                echo 'Notify...'
            }
        }
    }
}