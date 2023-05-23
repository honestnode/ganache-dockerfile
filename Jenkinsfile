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
		sh "echo $url"
		sh "echo $blockNumber"
                sh "docker run -d -p 8545:8545 ganache-image -h 0.0.0.0 --fork.url $url --fork.blockNumber $blockNumber"
            }
        }
    }
}
