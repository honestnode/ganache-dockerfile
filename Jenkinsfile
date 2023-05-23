pipeline {
    agent any

    stages {
        stage('clean') {
            steps {
		script {
                    try {
		   	sh 'docker stop ganache-fork'
                   	sh 'docker rm ganache-fork'
                   	sh 'docker rmi ganache-image'
		    } catch(err) {
		        echo err.getMessage()
		    }
		}
            }
        }
        stage('build') {
            steps {
                sh 'docker build -t ganache-image .'
            }
        }
        stage('run') {
            steps {
		sh "echo $url"
		sh "echo $blockNumber"
                sh "docker run -d -p 8545:8545 --name ganache-fork ganache-image -h 0.0.0.0 --fork.url $url --fork.blockNumber $blockNumber"
            }
        }
    }
}
