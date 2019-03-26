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
        stage ('Setup Container') {
            steps {
                script {
                    docker.image("python-api:${env.BUILD_ID}").withRun()
                }
            }
        }
    }
}
