pipeline {
    agent { label 'master' }
    options {
        buildDiscarder(logRotator(numToKeepStr: '10'))
    }
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
                    sh "/usr/local/bin/python /opt/my-api/run.py &"
                    sleep(10)
                    sh 'curl -v http://localhost:5000/api'
            }
        }
    }
}
