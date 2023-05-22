pipeline {
    agent { dockerfile true }
    stages {
        stage('test') {
            steps {
                sh 'node --version'
                sh 'ganache --version'
            }
        }
        stage('setup') {
            steps {
                sh 'ganache -h 0.0.0.0 --fork.url wss://eth-mainnet.g.alchemy.com/v2/uMRugVHYQV8q85FHacBfiUC3JhzdJU0l'
            }
        }
    }
}
