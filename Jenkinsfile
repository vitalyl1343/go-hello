pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'GO111MODULE=off go build'
            }
        }
    }
}
