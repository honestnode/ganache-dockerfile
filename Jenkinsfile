pipeline {
    agent any

    stages {
        stage('build') {
            steps {
                sh 'docker build -t ganache-image .'
            }
        }
        stage('run') {
            steps {
                sh 'docker run -d -p 8545:8545 ganche-image'
            }
        }
    }
}
