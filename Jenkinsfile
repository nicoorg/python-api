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
                    sh (script: "")
                    sh "/usr/local/bin/python /opt/my-api/run.py &"
                    sh 'curl -v http://localhost:5000/api'
            }
        }
    }
}
