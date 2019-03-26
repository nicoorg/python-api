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
            agent {
                docker {
                    image "python-api:${env.BUILD_ID}"
                }
            }
            steps {
                    echo "Hola mundo"
            }
        }
    }
}
