pipeline {
    agent { docker 'narenas/python-jenkins:0.1' }
    stages {
        stage('Setting up environment') {
            steps {
                sh '''
                pip install -r project/requirements.txt
                cd project
                python run.py
                '''
            }
        }
    }
}
