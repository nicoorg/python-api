pipeline {
    agent { label 'master' }
    stages {
        stage('Build Container') {
            steps {
                script {
                    def customImage = docker.build ("python-api:${env.BUILD_ID}")
                }
            }
        }
    }
}
